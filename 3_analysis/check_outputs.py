# -*- coding: utf-8 -*-
"""Runs a2_01 and a2_02 and compares what they print with the reference outputs (line endings ignored).

a2_01 rewrites article2_results.json; the stored file is put back at the end, so the repository is left unchanged.
"""
import os
import subprocess
import sys
from pathlib import Path

here = Path(__file__).resolve().parent
stored = (here / 'article2_results.json').read_bytes()
env = dict(os.environ, PYTHONIOENCODING='utf-8')
ok = True
try:
    for name in ('a2_01_article2_results', 'a2_02_supplementary_tables'):
        run = subprocess.run([sys.executable, str(here / (name + '.py'))], capture_output=True, env=env)
        if run.returncode != 0:
            print(name, 'failed:')
            print(run.stderr.decode('utf-8', 'replace'))
            ok = False
            continue
        new = run.stdout.decode('utf-8').splitlines()
        ref = (here / ('output_' + name + '.txt')).read_text(encoding='utf-8').splitlines()
        diff = [i + 1 for i in range(max(len(new), len(ref)))
                if i >= len(new) or i >= len(ref) or new[i] != ref[i]]
        if diff:
            ok = False
            print(f'{name}: {len(diff)} lines differ from the reference output (first: line {diff[0]})')
        else:
            print(f'{name}: {len(ref)} lines, identical to the reference output')
finally:
    (here / 'article2_results.json').write_bytes(stored)
sys.exit(0 if ok else 1)
