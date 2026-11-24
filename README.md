# Monte Carlo seat-by-seat dosimetry of coach passengers

Data and scripts of the article

> **Seat-by-seat Monte Carlo estimates of effective dose to coach passengers after a patient’s ¹⁷⁷Lu, ¹⁶¹Tb, ²¹²Pb or ²²⁵Ac radioligand therapy**

The manuscript is under review; authors, citation and DOI will be added here when it is published.

With this repository the study can be checked from the raw tallies to the published numbers. It holds the seven MCNP 6.3 input decks of the coach, their tally files (MCTAL), the scripts that turn the tallies into the tables and figures of the article, the scripts that build the decks and the seated phantoms, and the Supplementary Material of the article.

## 1. Contents

| Folder or file | What it holds |
| --- | --- |
| `Supplementary_material.docx` | Supplementary Material of the article: coach model, seated phantoms and results at every seat (Tables S1–S15, Figs. S1–S2) |
| `1_MCNP_inputs/` | The seven input decks that were run (B01–B07), run metadata, organ masses of the phantoms, Windows script to run the decks |
| `2_MCNP_results/` | MCTAL files of the seven runs and a summary of the runs |
| `3_analysis/` | Post-processing: from the tallies to Table 1, Figs. 4, 5, S1 and S2 and Tables S1–S15 |
| `4_model/` | Scripts that write the decks: coach geometry, seated phantoms, source and tallies |
| `icrp_data/` | Place for the ICRP reference data, which are not distributed here (see `icrp_data/README.md`) |

### 1.1 `1_MCNP_inputs` – what was simulated

| File | Configuration | In the article |
| --- | --- | --- |
| `B01_DAIR_janela.i` | Patient at the window seat 3RW and the H\*(10) detectors in air, without the coach | Fig. S1a; Tables S10–S11 |
| `B02_D_janela.i` | Empty coach, patient at 3RW, H\*(10) detectors at every seat and at the aisle points | Fig. S1; Tables S2–S3, S6, S10–S13 |
| `B03_D_corredor.i` | Empty coach, patient at the aisle seat 3RA, H\*(10) detectors | Fig. S1b; Tables S10–S13 |
| `B04_F_AM_janela.i`, `B05_F_AF_janela.i` | Fully occupied coach, patient at 3RW, 19 seated male (B04) or female (B05) passengers with organ tallies | Table 1; Figs. 1, 4, 5, S2; Tables S8, S14–S15 |
| `B06_F_AM_corredor.i`, `B07_F_AF_corredor.i` | Fully occupied coach, patient at 3RA, 19 seated male (B06) or female (B07) passengers | Table 1; Figs. 4, 5, S2; Tables S9, S14 |
| `run_metadata.json` | For each run: tally index (seat and detector labels, organ targets), source regions and their probabilities, energy grid, NPS and CTME, position of every phantom | – |
| `phantom_masses.json` | Organ and tissue masses and lattice slabs of the phantoms; source regions and emission data as simulated | Tables S4–S5 |
| `run_B01-B07.bat` | Windows script that runs the seven decks | – |

In the file names, *janela* is the window seat and *corredor* the aisle seat; D marks the runs with detectors and F the runs with full occupancy.

The decks read the voxel lattices of the seated patient and passengers from three files, `lat_PAMseat.txt`, `lat_TAMseat.txt` and `lat_TAFseat.txt`. These are derived from the ICRP 110 voxel phantoms and are therefore not in the repository; Section 3.3 shows how to rebuild them (about one minute).

### 1.2 `2_MCNP_results` – what the simulations produced

| File | Description |
| --- | --- |
| `B01_DAIR_janela.m` … `B07_F_AF_corredor.m` | MCTAL files of the seven runs: every tally bin with its relative error |
| `run_summary.csv` | One line per run: histories, computer time, termination, start and end, warnings, lost particles, result of the ten MCNP statistical checks for every tally, SHA-256 checksum of the MCTAL file |

All runs ended at their computer-time limit (CTME) with 0.99–1.19 × 10⁸ histories and lost no particles. The tallies of B01–B03 passed the ten statistical checks; in B04–B07, 0 to 5 of the 40 tallies missed the trend check of the mean or of the figure of merit (listed in `run_summary.csv`).

### 1.3 `3_analysis` – from the tallies to the published numbers

| File | Description | In the article |
| --- | --- | --- |
| `a2_01_article2_results.py` | Effective dose rate per GBq of every passenger (spongiosa and dose-response-function methods), H\*(10) at the seats and aisle points in air and in the empty coach, coach/air and H\*(10)/E ratios, trip doses with the time-dependent biokinetic model (departure at 4 h and 24 h, trips of 1–8 h), collective doses, effect of the bladder. Writes `article2_results.json` | Table 1; Figs. 1, 4, 5, S1, S2 |
| `a2_02_supplementary_tables.py` | Prints Tables S1–S15 in Markdown, followed by the numbers quoted in the text of the Supplementary Material. Runs the code of `a2_01` without printing, checks the trip doses against `article2_results.json` and writes no file | Tables S1–S15 |
| `postproc_core.py` | Response matrices per emitted photon, folding with the emission lines of each radionuclide, organ doses and sex-averaged effective dose (ICRP 103), [¹⁷⁷Lu]Lu-PSMA-617 biokinetic model | – |
| `mctal.py` | Reader of MCTAL files | – |
| `article2_results.json` | Results of `a2_01` (keys in Section 4) | Table 1; Figs. 1, 4, 5, S1, S2 |
| `output_a2_01_article2_results.txt`, `output_a2_02_supplementary_tables.txt` | What the two scripts print, for comparison | – |
| `check_outputs.py` | Runs the two scripts and compares their output with the two files above | – |

### 1.4 `4_model` – how the decks are written

| File | Description |
| --- | --- |
| `coach.py` | Coach: dimensions (`BUS`), seats, shell, position of the patient and of the passengers, detectors; assembles each deck |
| `mcnp_deck.py` | Writer of the decks: phantoms as stacks of slab lattices, patient source (organ by organ, energy grid, region tags), organ and detector tallies, materials |
| `build_decks.py` | Writes the seven decks, `run_metadata.json` and the three lattice files, and compares them with `1_MCNP_inputs` |
| `write_phantom_masses.py` | Writes `phantom_masses.json` |
| `build_seated.py`, `joints.py` | Seated phantoms: joint centres from the bone voxels; rotation of thighs, shanks and forearms |
| `AM_seated.json`, `AF_seated.json` | Parameters of the seated phantoms (hip and elbow angles, forearm rotation, seat-surface height, grid) |
| `check_seated.py` | Seat height, extents, body mass and organ-mass changes of a seated phantom |
| `phantoms.py`, `phantom_cache.py`, `slabs.py` | Reading of the ICRP 110 files, cached voxel arrays, cutting of the phantoms into slabs |
| `data.py` | Photon emissions of the four radionuclides and their progeny, ICRP 74 and ICRP 116 coefficients, tissue and source-region definitions |
| `paths.py` | Folder locations |

## 2. Requirements

* Python 3.9 or later with NumPy 2.0 or later (the code uses `numpy.trapezoid`). No other package is needed.
* The ICRP data listed in `icrp_data/README.md`: four small tables of ICRP Publication 116 for the analysis; in addition the ICRP 110 voxel phantoms to build the decks and lattices.
* MCNP 6.3.0 with the photoatomic library `eprdata14`, only to rerun the simulations (licensed by RSICC or the NEA Data Bank).

## 3. How to reproduce

### 3.1 ICRP data

Follow `icrp_data/README.md`. Without these files the scripts stop with a message that names the missing file.

### 3.2 Analysis (a few seconds)

```
cd 3_analysis
python check_outputs.py
```

This runs `a2_01_article2_results.py` and `a2_02_supplementary_tables.py` and compares what they print with `output_a2_01_article2_results.txt` and `output_a2_02_supplementary_tables.txt`. Every value in Tables S1–S15 of the Supplementary Material can be found in the second file. The two scripts can also be run one by one (`a2_01` first, because `a2_02` reads `article2_results.json`).

`a2_01` rewrites `article2_results.json`. Depending on the NumPy version, some values change in the last digit (relative difference below 10⁻¹⁵, from the order of floating-point sums), so git may show the file as modified; the printed output does not change. `check_outputs.py` puts the stored file back.

### 3.3 Decks, seated phantoms and lattice files (about one minute)

```
cd 4_model
python build_decks.py
python write_phantom_masses.py
```

The first command builds the seated phantoms from the ICRP 110 files with the parameters in `AM_seated.json` and `AF_seated.json`, writes the seven decks, `run_metadata.json` and the three lattice files to `work/decks`, and compares the decks with the ones in `1_MCNP_inputs`: they should be reported as identical. The lattice files are then copied to `1_MCNP_inputs`, next to the decks:

```
copy ..\work\decks\lat_*.txt ..\1_MCNP_inputs        (Windows)
cp ../work/decks/lat_*.txt ../1_MCNP_inputs/           (Linux)
```

SHA-256 of the lattice files used in the published runs:

| File | SHA-256 |
| --- | --- |
| `lat_PAMseat.txt` | `b906e0be935f486b79c815b4043598e05b04e37c0944a48b1036b9fa849ac9e0` |
| `lat_TAMseat.txt` | `54c6957530da27afb31442bb205b0c1e81ad3e274c1b49a9d67d52236261433a` |
| `lat_TAFseat.txt` | `2174229144dad1b2b182c61d634a862fd7513c70512ae68bdab491661e2eba1f` |

`run_metadata.json` and `phantom_masses.json` written to `work/decks` agree with the files in `1_MCNP_inputs` except for the last digit of some sums.

The seated phantoms can be inspected with `python check_seated.py AM 95` and `python check_seated.py AF 99` (hip angle in degrees). The script prints the seat height above the soles (38.4 and 37.8 cm), the change in body mass (+1.78% and +1.94%) and the organs whose mass changed by more than 3% (Table S5).

The voxel arrays are cached in `work/cache`; the folder `work` can be deleted at any time.

### 3.4 MCNP runs

Run `run_B01-B07.bat` from `1_MCNP_inputs` after setting the MCNP executable and the number of threads at the top of the file. The three lattice files must be in that folder (Section 3.3). A run is skipped when its MCTAL file already exists in `2_MCNP_results`, so the published results are not overwritten; to rerun, move the `.m` files elsewhere. The full outputs and the restart files go to `work/`.

On 20 threads the seven runs took 4 h 29 min. They were limited by computer time (CTME), so a rerun on another machine processes a different number of histories and reproduces the results within their statistical uncertainties, not bit for bit.

### 3.5 What was checked

On 23 November 2026, with Python 3.11.17 and NumPy 2.4.6 on Windows: the output of the two analysis scripts was identical to the reference files; the seven decks and the three lattice files written by `build_decks.py` were identical, byte for byte, to the ones that were run.

## 4. Keys of `article2_results.json`

Dose rates are in µSv h⁻¹ per GBq in the patient's body, with the [¹⁷⁷Lu]Lu-PSMA-617 distribution at 4 h and the bladder empty. Trip doses are in µSv (collective doses in person-µSv) for the typical activities: 7.4 GBq of ¹⁷⁷Lu or ¹⁶¹Tb, 0.2 GBq of ²¹²Pb and 8 MBq of ²²⁵Ac. Patient seats: `RW` is the window seat 3RW and `RA` the aisle seat 3RA. Passenger seats are labelled by row (1 at the front, 5 at the rear) and position (LW, LA, RA, RW).

* `E["<patient seat>_<passenger seat>_<nuclide>"]`: `v` (sex-averaged effective dose rate, spongiosa method), `rel` (conservative relative error), `drf` (effective dose rate with the skeletal dose-response functions). Fig. 4; Tables S8–S9.
* `H["<configuration>_<detector>_<nuclide>"]`: `v` (H\*(10) rate) and `rel`. Configurations: `air_RW` (B01), `bus_RW` (B02), `bus_RA` (B03). Detectors: `r<seat>_h<15|40|75>` (height above the seat surface, cm) and `aisle_r<row>_z<100|130|160>` (height above the floor, cm). Fig. S1; Tables S10–S13.
* `trips["<patient seat>_<nuclide>_<departure h>_<duration h>"]`: dose at the seat most exposed with ¹⁷⁷Lu (`top`, `top_seat`) and at the second seat (`second`, `second_seat`); `collective` (sum over the 19 passengers, 2 h trips only). Table 1 (collective doses); Figs. 5 and S2.
* `table2_most_exposed["<patient seat>_<nuclide>_<departure h>"]["<duration>h"]`: `dose` and `seat` of the most exposed passenger, that is, the maximum over the 19 seats for each radionuclide and trip. These are the values of Table 1 (the key keeps the table number of an earlier draft).
* `meta`: empty.

The coordinates of the seats and detectors are in `run_metadata.json`.

## 5. Sources of the data

| Data | Source | In the repository? |
| --- | --- | --- |
| ICRP 110 adult reference voxel phantoms (v1.2) | ICRP Publication 110, supplemental data | No (`icrp_data/README.md`) |
| Seated phantoms and their lattice files | Derived from the ICRP 110 phantoms with `build_seated.py` | Only the scripts and parameters that rebuild them (Section 3.3) |
| Conversion coefficients and skeletal dose-response functions | ICRP Publication 116, supplemental data (v2) | No (`icrp_data/README.md`) |
| H\*(10) per fluence | ICRP Publication 74, Table A.21 | Yes, in `data.py` |
| Photon emissions | DDEP/LNHB recommended data; ¹⁶¹Tb as referenced in the article | Yes, in `data.py` |
| [¹⁷⁷Lu]Lu-PSMA-617 biokinetic model | As described in the article | Yes, in `postproc_core.py` |
| Coach dimensions and materials | Brazilian rules for intercity coaches, as cited in the article | Yes, in `coach.py` and in the decks |

No patient data or personal information were used.

## 6. Limits of this material

* Rerunning the simulations needs a licensed copy of MCNP 6.3 and about 4.5 h on 20 threads.
* The full MCNP output files (0.3 GB) and the restart files (1.0 GB) are not included. `run_summary.csv` gives what is usually needed from them: histories, termination, warnings, lost particles, statistical checks and checksums of the MCTAL files. They are available from the authors on request.
* The scripts that draw the figures are not included; they plot the results listed in Section 1.3 and, for Figs. 1–3, the geometry, and add no calculation.
* The biokinetic model of [¹⁷⁷Lu]Lu-PSMA-617 was also used, with the physical decay changed, for the other three radionuclides (see the article).

## 7. Licence

The scripts are under the MIT licence (`LICENSE`). The decks, tally files, result files and README files are under CC BY 4.0 (`LICENSE-DATA.md`). `Supplementary_material.docx` follows the licence of the article. The ICRP data are not part of this repository.

If you use this material, please cite the article.
