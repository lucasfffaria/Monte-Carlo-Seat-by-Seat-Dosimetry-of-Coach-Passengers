# -*- coding: utf-8 -*-
"""Folder locations used by the model and analysis scripts.

All paths are relative to the repository root (the folder that holds README.md), so the scripts can be
started from any working directory, on Windows or Linux.

The ICRP reference data are not distributed with this repository (see icrp_data/README.md). They are
expected in icrp_data/ICRP110 and icrp_data/ICRP116; the environment variables ICRP110_DIR and
ICRP116_DIR can point to copies kept somewhere else.
"""
import os
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

INPUTS = ROOT / '1_MCNP_inputs'                 # decks B01-B07, seated lattices, run metadata, organ masses
RESULTS = ROOT / '2_MCNP_results'               # MCTAL files of the seven runs
ANALYSIS = ROOT / '3_analysis'
MODEL = ROOT / '4_model'
RUN_METADATA = INPUTS / 'run_metadata.json'
PHANTOM_MASSES = INPUTS / 'phantom_masses.json'

# ICRP reference data (to be downloaded from ICRP by the user)
ICRP110 = Path(os.environ.get('ICRP110_DIR', ROOT / 'icrp_data' / 'ICRP110'))
ICRP116 = Path(os.environ.get('ICRP116_DIR', ROOT / 'icrp_data' / 'ICRP116'))
ICRP116_PHOTON_E = ICRP116 / 'Photons' / 'Photons_Effective dose.txt'
ICRP116_PHOTON_E_KERMA = ICRP116 / 'Photons' / 'Photons_Kerma_Effective dose.txt'
ICRP116_SKELETAL = ICRP116 / 'Skeletal fluence to dose response functions'

# files that can be rebuilt at any time (not tracked by git)
WORK = ROOT / 'work'
CACHE = WORK / 'cache'                          # .npy voxel arrays of the standing and seated phantoms
BUILD_OUT = WORK / 'decks'                      # decks and lattices written by build_decks.py


def mctal(run):
    """MCTAL file of a run"""
    return RESULTS / f'{run}.m'


def check_icrp(*files):
    """stops with a readable message when an ICRP file is missing"""
    missing = [str(f) for f in files if not Path(f).exists()]
    if missing:
        raise SystemExit('ICRP reference data not found:\n  ' + '\n  '.join(missing)
                         + '\nSee icrp_data/README.md for the files needed and where to get them.')
