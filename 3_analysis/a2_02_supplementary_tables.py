# -*- coding: utf-8 -*-
"""Tables of the Supplementary Material (Supplementary_material.docx, Tables S1-S15).

Prints every table of the supplementary document in Markdown, followed by the numbers quoted in its text. All values
come from the files of this repository:
  - coach and seated phantoms: 4_model/coach.py (dimensions and seat positions), AM_seated.json and AF_seated.json
    (joint angles and seat height), the deck 1_MCNP_inputs/B02_D_janela.i (structure layers, densities and material
    compositions, as simulated), phantom_masses.json and run_metadata.json;
  - results: article2_results.json (a2_01) and 2_MCNP_results/run_summary.csv;
  - trip doses at every seat and the effect of the bladder are recomputed with the code of a2_01 (response matrices,
    biokinetic weights and trip integral), executed here without printing and without writing any file; the script
    checks that it reproduces the trip doses stored in article2_results.json.
The script writes nothing; run it after a2_01. The output is UTF-8.
"""
import csv
import json
import os
import re
import sys
from datetime import datetime
from pathlib import Path

import numpy as np

sys.dont_write_bytecode = True
_HERE = Path(__file__).resolve().parent
if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

# response matrices, seat ranking and trip integral of a2_01 (same code; that part of a2_01 prints nothing)
_SRC = open(_HERE / 'a2_01_article2_results.py', encoding='utf-8').read()
__file__ = str(_HERE / 'a2_01_article2_results.py')               # a2_01 finds its folder from its own path
exec(_SRC.split('# ---------- print seat tables')[0])
exec(re.search(r'^def seats\(ps\):.*$', _SRC, re.M).group(0))
exec(_SRC.split('# ---------- trips')[1].split('TR={}')[0])
__file__ = str(_HERE / 'a2_02_supplementary_tables.py')
sys.path.insert(0, str(paths.MODEL))
import coach                                                        # noqa: E402  (coach dimensions and seat positions)

J = json.load(open(_HERE / 'article2_results.json', encoding='utf-8'))
NUC = {'Lu177': '¹⁷⁷Lu', 'Tb161': '¹⁶¹Tb', 'Pb212': '²¹²Pb', 'Ac225': '²²⁵Ac'}
B = coach.BUS
SX = coach.seat_x()
QUOTED = []


def f3(x):
    """three significant figures; values from 1000 up as integers"""
    if x == 0:
        return '0'
    a = abs(x)
    if a >= 1000:
        return f'{x:.0f}'
    d = 2 - int(np.floor(np.log10(a)))
    return f'{x:.{max(d, 0)}f}'.replace('-', '−')


def table(num_, title, header, rows):
    print(f'\n### Table {num_}. {title}\n')
    print('| ' + ' | '.join(header) + ' |')
    print('|' + '|'.join(['---'] * len(header)) + '|')
    for r in rows:
        assert len(r) == len(header), (num_, r)
        print('| ' + ' | '.join(str(x) for x in r) + ' |')


def centre(seat):
    """centre of the seat cushion (x, y) in cm; seat = '3RA'"""
    return np.array([SX[seat[1:]], coach.yb(int(seat[0])) - B['cushion_depth'] / 2])


def dist(seat, ps):
    return float(np.linalg.norm(centre(seat) - centre('3' + ps)))


def relation(seat, ps):
    """position of a passenger seat relative to the patient seat 3<ps>"""
    dr, pos = int(seat[0]) - 3, seat[1:]
    same_side = pos[0] == ps[0]
    if dr == 0:
        if same_side:
            return 'beside'
        return 'across the aisle' if pos[1] == 'A' else 'window across the aisle'
    where = ('behind' if dr > 0 else 'in front') if abs(dr) == 1 else ('two rows behind' if dr > 0 else 'two rows in front')
    if pos == ps:
        return where
    if same_side:
        return f'diagonal, {where}'
    return f'across the aisle, {where}' if pos[1] == 'A' else f'window across the aisle, {where}'


def hmean(cfg, seat, n):
    return np.mean([J['H'][f'{cfg}_r{seat}_h{h}_{n}']['v'] for h in (15, 40, 75)])


print('Supplementary Material: Tables S1-S15 (Markdown)')
print('Rates per GBq in the body use the [177Lu]Lu-PSMA-617 distribution at 4 h, bladder just emptied; trip doses are for '
      'the typical activities (7.4 GBq 177Lu or 161Tb, 0.2 GBq 212Pb, 8 MBq 225Ac).')

# ================================================================================================ S1 dimensions
rows = [['Seat layout', '2 + 2, seven rows (0–6); rows 1–5 occupied; patient in row 3'],
        ['Seat module (centre-to-centre width of two adjacent seats)', f'{B["module"]:g} cm'],
        ['Aisle width', f'{B["aisle"]:g} cm'],
        ['Seat pitch', f'{B["pitch"]:g} cm'],
        ['Seat cushion (width × depth × thickness)', f'{B["cushion_w"]:g} × {B["cushion_depth"]:g} × {B["cushion_t"]:g} cm'],
        ['Top of the seat cushion above the floor', f'{B["seat_top"]:g} cm'],
        ['Seat pan thickness', f'{10 * B["pan_t"]:g} mm'],
        ['Backrest (thickness × height above the cushion); shell thickness', f'{B["back_t"]:g} × {B["back_h"]:g} cm; {10 * B["shell_t"]:g} mm'],
        ['Cabin, inner width × height × length', f'{2 * B["half_in"]:g} × {B["roof"]:g} × {B["y_rear"] - B["y_front"]:g} cm'],
        ['Lateral seat positions (x of the seat centre)', ', '.join(f'{k} {v:+g} cm' for k, v in SX.items()).replace('-', '−')],
        ['Rows (y of the front face of the backrest)', ', '.join(f'{r}: {coach.yb(r):+g}' for r in B['rows']).replace('-', '−') + ' cm']]
table('S1', 'Main dimensions of the coach model', ['Item', 'Value'], rows)

# ================================================================================================ S2-S3 structure and materials (deck)
deck = open(paths.INPUTS / 'B02_D_janela.i', encoding='utf-8', errors='replace').read().splitlines()
cells, surfs = {}, {}
for line in deck:
    m = re.match(r'^(\d+)\s+(\d+)\s+(-[\d.]+)\s+-(\d+)\s.*\$\s*(.+)$', line)
    if m:
        cells[m.group(5).strip()] = (int(m.group(2)), -float(m.group(3)), int(m.group(4)))
    m = re.match(r'^(\d+)\s+rpp\s+([-\d.\s]+)\$\s*(.+)$', line, re.I)
    if m:
        surfs[int(m.group(1))] = [float(x) for x in m.group(2).split()]
MATNAME = {200: 'Air (dry)', 201: 'Steel', 202: 'Aluminium', 203: 'Glass (soda-lime)', 204: 'Plywood', 205: 'PVC (vinyl)',
           206: 'Polyurethane foam', 207: 'Plastic (polyolefin)'}
PARTS = [('Seat cushion', 'seat r3RA cushion', 2), ('Seat pan', 'seat r3RA pan', 2), ('Backrest', 'seat r3RA back', 1),
         ('Backrest shell', 'seat r3RA shell', 1), ('Floor, top layer', 'floor vinyl', 2), ('Floor, middle layer', 'floor plywood', 2),
         ('Floor, bottom layer', 'floor steel', 2), ('Side wall, inner panel below the windows', 'R panel low', 0),
         ('Side wall, windows', 'R window', 0), ('Side wall, inner panel above the windows', 'R panel up', 0),
         ('Side wall, gap', 'R gap', 0), ('Side wall, outer skin', 'R skin', 0), ('Roof, inner panel', 'roof panel', 2),
         ('Roof, gap', 'roof gap', 2), ('Roof, outer skin', 'roof skin', 2), ('Front and rear walls', 'front wall', 1)]
rows = []
for name, key, ax in PARTS:
    mat, rho, sf = cells[key]
    b = surfs[sf]
    thick = b[2 * ax + 1] - b[2 * ax]
    z = f'{b[4]:g} to {b[5]:g}'.replace('-', '−')
    rows.append([name, MATNAME[mat], f'm{mat}', f'{rho:g}', f'{10 * thick:g}', z])
table('S2', 'Structure of the coach as simulated (deck B02): material, density, thickness and height of each layer',
      ['Part', 'Material', 'MCNP material', 'Density (g cm⁻³)', 'Thickness (mm)', 'Height above the floor (cm)'], rows)
EL = {1: 'H', 6: 'C', 7: 'N', 8: 'O', 11: 'Na', 12: 'Mg', 13: 'Al', 14: 'Si', 17: 'Cl', 18: 'Ar', 20: 'Ca', 25: 'Mn', 26: 'Fe'}
rows = []
for k, line in enumerate(deck):
    m = re.match(r'^m(20\d)\s+(.*)$', line)
    if m:
        toks = m.group(2).split()
        j = k + 1
        while j < len(deck) and deck[j].startswith('     '):
            toks += deck[j].split()
            j += 1
        comp = '; '.join(f'{EL[int(toks[i]) // 1000]} {100 * -float(toks[i + 1]):.4g}' for i in range(0, len(toks), 2))
        mat = int(m.group(1))
        dens = sorted({c[1] for c in cells.values() if c[0] == mat})
        rows.append([f'm{mat}', MATNAME[mat], ', '.join(f'{d:g}' for d in dens), comp])
table('S3', 'Materials of the coach (composition in % by mass)', ['MCNP material', 'Material', 'Density used (g cm⁻³)',
                                                                  'Composition (% by mass)'], rows)

# ================================================================================================ S4-S5 seated phantoms
rows = []
for sex, std, seat_k in (('AM', 'TAMstd', 'TAMseat'), ('AF', 'TAFstd', 'TAFseat')):
    sj = json.load(open(paths.MODEL / f'{sex}_seated.json', encoding='utf-8'))
    ms = MASS[seat_k]
    k_, j_, i_ = ms['shape_kji']
    role = 'Patient and passengers' if sex == 'AM' else 'Passengers'
    rows.append([sex, role, f'{sj["th_hip"]:g}', f'{sj["th_elb"]:g}', f'{sj["psi"]:g}', f'{sj["z_seat_surface"] - sj["z_sole"]:.1f}',
                 f'{i_} × {j_} × {k_}', len(ms['slabs']), f'{sum(s["n_elements"] for s in ms["slabs"]) / 1e6:.2f}',
                 f'{MASS[std]["total_mass_g"] / 1e3:.2f}', f'{ms["total_mass_g"] / 1e3:.2f}',
                 f'{100 * (ms["total_mass_g"] / MASS[std]["total_mass_g"] - 1):+.2f}'])
table('S4', 'Seated phantoms: posture parameters and implementation',
      ['Phantom', 'Role', 'Hip angle (°)', 'Elbow flexion (°)', 'Forearm rotation about the vertical (°)',
       'Seat surface above the soles (cm)', 'Voxel array (columns × rows × slices)', 'Slabs', 'Lattice elements (10⁶)',
       'Mass standing (kg)', 'Mass seated (kg)', 'Change (%)'], rows)
rows = []
for sex, std, seat_k in (('AM', 'TAMstd', 'TAMseat'), ('AF', 'TAFstd', 'TAFseat')):
    A, Bm = MASS[std]['organs'], MASS[seat_k]['organs']
    for k in sorted(A, key=int):
        x, y = A[k]['mass_g'], Bm.get(k, {}).get('mass_g', 0.0)
        if x > 0 and abs(y / x - 1) > 0.03:
            rows.append([sex, f'{A[k]["name"]} ({k})', f'{x:.1f}', f'{y:.1f}', f'{100 * (y / x - 1):+.1f}'.replace('-', '−')])
table('S5', 'Organs and tissues whose mass changed by more than 3% when the phantoms were seated',
      ['Phantom', 'Organ or tissue (ICRP 110 ID)', 'Mass standing (g)', 'Mass seated (g)', 'Change (%)'], rows)

# ================================================================================================ S6 detectors
rows = []
dets = {d[0]: d for d in META['B02_D_janela']['detectors']}
for r in B['occ_rows']:
    y = dets[f'r{r}LW_h15'][1][1]
    rows.append([f'Seat detectors, row {r}', 'x of the seat centre (LW, LA, RA, RW)', f'{y:g}'.replace('-', '−'),
                 f'{B["seat_top"]:g} + 15, 40, 75', f'{dets[f"r{r}LW_h15"][2]:g}'])
for r in (2, 3, 4):
    d = dets[f'aisle_r{r}_z100']
    rows.append([f'Aisle points, row {r}', f'{d[1][0]:g}', f'{d[1][1]:g}'.replace('-', '−'), '100, 130, 160', f'{d[2]:g}'])
table('S6', 'H*(10) detector spheres in runs B01–B03 (66 spheres per run)',
      ['Detectors', 'x (cm)', 'y (cm)', 'Height of the centre above the floor (cm)', 'Radius (cm)'], rows)

# ================================================================================================ S7 runs
DESC = {'B01_DAIR_janela': 'Patient at 3RW, detectors, no coach (in air)', 'B02_D_janela': 'Empty coach, patient at 3RW, detectors',
        'B03_D_corredor': 'Empty coach, patient at 3RA, detectors', 'B04_F_AM_janela': 'Occupied coach, patient at 3RW, AM passengers',
        'B05_F_AF_janela': 'Occupied coach, patient at 3RW, AF passengers', 'B06_F_AM_corredor': 'Occupied coach, patient at 3RA, AM passengers',
        'B07_F_AF_corredor': 'Occupied coach, patient at 3RA, AF passengers'}
with open(paths.RESULTS / 'run_summary.csv', encoding='utf-8') as f:
    rows = []
    for r in csv.DictReader(f):
        t0, t1 = (datetime.strptime(r[k], '%m/%d/%y %H:%M:%S') for k in ('start', 'end'))
        rows.append([r['run'], DESC[r['run']], f'{int(r["nps"]):,}'.replace(',', '\u00a0'), f'{float(r["computer_time_min"]):.0f}',
                     f'{(t1 - t0).total_seconds() / 60:.0f}', r['warnings'], r['lost_particles'],
                     f'{r["tallies_passing_10_checks"]} of {r["tallies_total"]}'])
table('S7', 'Runs B01–B07: histories, computer time, warnings, lost particles and statistical checks',
      ['Run', 'Configuration', 'Histories', 'Computer time (min)', 'Wall-clock time (min)', 'Warnings', 'Lost particles',
       'Tallies passing all ten checks'], rows)

# ================================================================================================ S8-S9 E by seat
for num_, ps, lab in (('S8', 'RW', 'window seat 3RW'), ('S9', 'RA', 'aisle seat 3RA')):
    rows = []
    for s in seats(ps):
        rows.append([s, relation(s, ps), f'{dist(s, ps):.0f}'] +
                    [f'{f3(J["E"][f"{ps}_{s}_{n}"]["v"])} ({100 * J["E"][f"{ps}_{s}_{n}"]["rel"]:.1f})' for n in NUCS] +
                    [f'{J["E"][f"{ps}_{s}_Lu177"]["drf"] / J["E"][f"{ps}_{s}_Lu177"]["v"]:.3f}'])
    rows.append(['Sum', '', ''] + [f3(sum(J['E'][f'{ps}_{s}_{n}']['v'] for s in seats(ps))) for n in NUCS] + [''])
    table(num_, f'Effective dose rate per GBq in the body (µSv h⁻¹ GBq⁻¹) of every passenger, patient at the {lab} '
          '(conservative relative statistical uncertainty, %), and ratio of E with the dose-response functions to E with '
          'the spongiosa approximation for ¹⁷⁷Lu',
          ['Seat', 'Position relative to the patient', 'Distance between seat centres (cm)'] + [NUC[n] for n in NUCS] +
          ['DRF/spongiosa, ¹⁷⁷Lu'], rows)
    for n in NUCS:
        v = sorted((J['E'][f'{ps}_{s}_{n}']['v'] for s in seats(ps)), reverse=True)
        QUOTED.append(f'{num_}: {n}, patient {ps}: share of the five most exposed seats {100 * sum(v[:5]) / sum(v):.1f} %; '
                      f'uncertainty at the five most exposed seats (by 177Lu) '
                      f'{100 * min(J["E"][f"{ps}_{s}_{n}"]["rel"] for s in seats(ps)[:5]):.1f}-'
                      f'{100 * max(J["E"][f"{ps}_{s}_{n}"]["rel"] for s in seats(ps)[:5]):.1f} %, at all seats up to '
                      f'{100 * max(J["E"][f"{ps}_{s}_{n}"]["rel"] for s in seats(ps)):.1f} %')
    for n in ('Tb161', 'Pb212', 'Ac225'):
        rr = {s: J['E'][f'{ps}_{s}_{n}']['v'] / J['E'][f'{ps}_{s}_Lu177']['v'] for s in seats(ps)}
        QUOTED.append(f'{num_}: {n}/Lu177, patient {ps}: five most exposed seats {min(rr[s] for s in seats(ps)[:5]):.2f}-'
                      f'{max(rr[s] for s in seats(ps)[:5]):.2f}, other seats {min(rr[s] for s in seats(ps)[5:]):.2f}-'
                      f'{max(rr[s] for s in seats(ps)[5:]):.2f}')

# ================================================================================================ S10-S11 H*(10) at the seats
rows = []
for s in seats('RW'):
    h = [J['H'][f'bus_RW_r{s}_h{z}_Lu177']['v'] for z in (15, 40, 75)]
    rows.append([s, f'{dist(s, "RW"):.0f}'] + [f3(x) for x in h] +
                [f3(hmean('bus_RW', s, 'Lu177')), f3(hmean('air_RW', s, 'Lu177')),
                 f'{hmean("bus_RW", s, "Lu177") / hmean("air_RW", s, "Lu177"):.2f}',
                 'patient' if s == '3RA' else f3(hmean('bus_RA', s, 'Lu177'))])
rows.append(['3RW', 'patient', '–', '–', '–', '–', '–', '–', f3(hmean('bus_RA', '3RW', 'Lu177'))])
table('S10', 'H*(10) rate per GBq of ¹⁷⁷Lu in the body (µSv h⁻¹ GBq⁻¹) at the seats: the three detectors 15, 40 and '
      '75 cm above the seat and their mean (seat H*(10)), in the empty coach and without the coach',
      ['Seat', 'Distance from 3RW (cm)', 'Empty coach, 15 cm', 'Empty coach, 40 cm', 'Empty coach, 75 cm',
       'Seat H*(10), empty coach', 'Seat H*(10), no coach', 'Coach/no coach', 'Seat H*(10), empty coach, patient at 3RA'], rows)
rows = []
for s in seats('RW'):
    rows.append([s] + [f3(hmean('bus_RW', s, n)) for n in NUCS[1:]] +
                [f'{hmean("bus_RW", s, n) / hmean("air_RW", s, n):.2f}' for n in NUCS[1:]] +
                [('patient' if s == '3RA' else f3(hmean('bus_RA', s, n))) for n in NUCS[1:]])
rows.append(['3RW'] + ['–'] * 6 + [f3(hmean('bus_RA', '3RW', n)) for n in NUCS[1:]])
table('S11', 'Seat H*(10) rate per GBq in the body (µSv h⁻¹ GBq⁻¹) for ¹⁶¹Tb, ²¹²Pb and ²²⁵Ac in the empty coach, and '
      'ratio to the value without the coach (patient at 3RW)',
      ['Seat'] + [f'Patient at 3RW, {NUC[n]}' for n in NUCS[1:]] + [f'Coach/no coach, {NUC[n]}' for n in NUCS[1:]] +
      [f'Patient at 3RA, {NUC[n]}' for n in NUCS[1:]], rows)
five = seats('RW')[:5]
for n in NUCS:
    ca = {s: hmean('bus_RW', s, n) / hmean('air_RW', s, n) for s in seats('RW')}
    QUOTED.append(f'S11: {n} coach/no coach: mean {np.mean(list(ca.values())):.3f}, five nearest seats '
                  f'{min(ca[s] for s in five):.3f}-{max(ca[s] for s in five):.3f}, rows 1 and 5 '
                  f'{min(v for s, v in ca.items() if s[0] in "15"):.3f}-{max(v for s, v in ca.items() if s[0] in "15"):.3f}, '
                  f'seats 3LA/3LW {ca["3LA"]:.3f}/{ca["3LW"]:.3f}')
h3 = [J['H'][f'bus_RW_r3RA_h{z}_Lu177']['v'] for z in (15, 40, 75)]
QUOTED.append(f'S10: seat 3RA (patient 3RW), 177Lu: {min(h3):.2f}-{max(h3):.2f} uSv/h/GBq over the three heights (ratio {max(h3) / min(h3):.2f})')

# ================================================================================================ S12 H*/E
rows = []
for s in seats('RW'):
    rows.append([s] + [f'{hmean("bus_RW", s, n) / J["E"][f"RW_{s}_{n}"]["v"]:.2f}' for n in NUCS] +
                [f'{hmean("bus_RA", s, n) / J["E"][f"RA_{s}_{n}"]["v"]:.2f}' if f'RA_{s}_{n}' in J['E'] else 'patient' for n in NUCS])
rows.append(['3RW'] + ['–'] * 4 + [f'{hmean("bus_RA", "3RW", n) / J["E"][f"RA_3RW_{n}"]["v"]:.2f}' for n in NUCS])
table('S12', 'Ratio of the seat H*(10) in the empty coach to the effective dose of the passenger in the occupied coach',
      ['Seat'] + [f'Patient at 3RW, {NUC[n]}' for n in NUCS] + [f'Patient at 3RA, {NUC[n]}' for n in NUCS], rows)
for n in NUCS:
    rr = {(ps, s): hmean(f'bus_{ps}', s, n) / J['E'][f'{ps}_{s}_{n}']['v'] for ps in ('RW', 'RA') for s in seats(ps)}
    top = {(ps, s) for ps in ('RW', 'RA') for s in seats(ps)[:5]}
    a = [v for k, v in rr.items() if k in top]
    b = [v for k, v in rr.items() if k not in top]
    kmax = max(rr, key=rr.get)
    QUOTED.append(f'S12: {n} H*/E: five most exposed seats {min(a):.2f}-{max(a):.2f}, other seats {min(b):.2f}-{max(b):.2f}; '
                  f'largest {rr[kmax]:.2f} (patient {kmax[0]}, seat {kmax[1]})')

# ================================================================================================ S13 aisle
rows = []
for lab in [x for x in META['B02_D_janela']['tally_index']['F304'] if x.startswith('aisle')]:
    r_, z_ = re.match(r'aisle_r(\d)_z(\d+)', lab).groups()
    rows.append([f'Row {r_}, {z_} cm'] + [f3(J['H'][f'bus_RW_{lab}_{n}']['v']) for n in NUCS] +
                [f3(J['H'][f'bus_RA_{lab}_{n}']['v']) for n in NUCS])
table('S13', 'H*(10) rate per GBq in the body (µSv h⁻¹ GBq⁻¹) at the aisle points, 40 cm in front of the backrest '
      'line of rows 2–4, in the empty coach',
      ['Aisle point (row, height above the floor)'] + [f'Patient at 3RW, {NUC[n]}' for n in NUCS] +
      [f'Patient at 3RA, {NUC[n]}' for n in NUCS], rows)

# ================================================================================================ S14 trip doses by seat
TD = {(ps, s, n): trip(('Es', ps, s, n), n, 4.0, 2.0) for ps in ('RW', 'RA') for s in seats(ps) for n in NUCS}
for ps in ('RW', 'RA'):
    for n in NUCS:
        coll = sum(TD[(ps, s, n)] for s in seats(ps))
        assert abs(coll / J['trips'][f'{ps}_{n}_4_2']['collective'] - 1) < 1e-12
        assert abs(TD[(ps, J['trips'][f'{ps}_{n}_4_2']['top_seat'], n)] / J['trips'][f'{ps}_{n}_4_2']['top'] - 1) < 1e-12
QUOTED.append('check: trip doses recomputed here reproduce the collective and top-seat values of article2_results.json')
order = sorted(set(seats('RW')) | {'3RW'}, key=lambda s: -TD.get(('RW', s, 'Lu177'), -1))
rows = []
for s in order:
    rows.append([s] + [f3(TD[('RW', s, n)]) if ('RW', s, n) in TD else 'patient' for n in NUCS] +
                [f3(TD[('RA', s, n)]) if ('RA', s, n) in TD else 'patient' for n in NUCS])
rows.append(['Sum (person-µSv)'] + [f3(sum(TD[(ps, s, n)] for s in seats(ps))) for ps in ('RW', 'RA') for n in NUCS])
shares = {}
for ps in ('RW', 'RA'):
    for n in NUCS:
        v = sorted((TD[(ps, s, n)] for s in seats(ps)), reverse=True)
        shares[(ps, n)] = (100 * v[0] / sum(v), 100 * sum(v[:5]) / sum(v))
rows.append(['Most exposed seat, share (%)'] + [f'{shares[(ps, n)][0]:.0f}' for ps in ('RW', 'RA') for n in NUCS])
rows.append(['Five most exposed seats, share (%)'] + [f'{shares[(ps, n)][1]:.0f}' for ps in ('RW', 'RA') for n in NUCS])
table('S14', 'Effective dose (µSv) to every passenger in a 2 h trip departing 4 h after administration, at typical '
      'activities (patient voids just before departure)',
      ['Seat'] + [f'Patient at 3RW, {NUC[n]}' for n in NUCS] + [f'Patient at 3RA, {NUC[n]}' for n in NUCS], rows)
for ps in ('RW', 'RA'):
    two = [s for s in seats(ps) if abs(int(s[0]) - 3) == 2]
    QUOTED.append(f'S14: 177Lu, patient {ps}: two rows away, dose relative to the most exposed seat '
                  f'{min(TD[(ps, s, "Lu177")] for s in two) / max(TD[(ps, s, "Lu177")] for s in seats(ps)):.3f}-'
                  f'{max(TD[(ps, s, "Lu177")] for s in two) / max(TD[(ps, s, "Lu177")] for s in seats(ps)):.3f}')

# ================================================================================================ S15 bladder
rows = []
incs = []
for n in NUCS:
    for ps in ('RW', 'RA'):
        full = {s: trip(('Es', ps, s, n), n, 4.0, 8.0) for s in seats(ps)}
        empty = {s: trip(('Es', ps, s, n), n, 4.0, 8.0, void_every=1e-9) for s in seats(ps)}
        top = max(full, key=full.get)
        incs += [(100 * (full[s] / empty[s] - 1), n, ps, s) for s in seats(ps)]
        rows.append([NUC[n], f'3{ps}', top, f3(full[top]), f3(empty[top]), f'{100 * (full[top] / empty[top] - 1):.0f}',
                     f'{min(100 * (full[s] / empty[s] - 1) for s in seats(ps)):.0f}–{max(100 * (full[s] / empty[s] - 1) for s in seats(ps)):.0f}'])
table('S15', 'Effect of the filling of the bladder during an 8 h trip departing 4 h after administration: dose to the most '
      'exposed passenger (µSv) with the bladder filling and with the bladder kept empty, and increase over all 19 seats',
      ['Radionuclide', 'Patient seat', 'Most exposed seat', 'Bladder filling (µSv)', 'Bladder kept empty (µSv)',
       'Increase (%)', 'Increase, range over the 19 seats (%)'], rows)
mx = max(incs)
QUOTED.append(f'S15: largest increase due to the bladder over all seats, radionuclides and patient seats: {mx[0]:.1f} % '
              f'({mx[1]}, patient {mx[2]}, seat {mx[3]})')

print('\nNumbers quoted in the text of the Supplementary Material')
for q in QUOTED:
    print('  ' + q)
