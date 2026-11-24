# ICRP reference data (not distributed here)

The scripts read data published by the International Commission on Radiological Protection (ICRP). These files belong to ICRP and are not redistributed in this repository. They can be downloaded free of charge from the ICRP website, as the supplemental data of each publication:

* ICRP Publication 110, *Adult Reference Computational Phantoms* (voxel phantoms, version 1.2): <https://www.icrp.org/publication.asp?id=ICRP%20Publication%20110>
* ICRP Publication 116, *Conversion Coefficients for Radiological Protection Quantities for External Radiation Exposures* (data files, version 2): <https://www.icrp.org/publication.asp?id=ICRP%20Publication%20116>

Copy the files below into this folder, keeping the folder and file names of the ICRP packages:

```
icrp_data/
    ICRP110/
        AM/AM.dat  AM/AM_organs.dat  AM/AM_media.dat
        AF/AF.dat  AF/AF_organs.dat  AF/AF_media.dat
    ICRP116/
        Photons/Photons_Effective dose.txt
        Photons/Photons_Kerma_Effective dose.txt
        Skeletal fluence to dose response functions/Table D.1 - Regional DRF.txt
        Skeletal fluence to dose response functions/Table 3.2.txt
```

| To run | Files needed |
| --- | --- |
| `3_analysis` (tables and figures of the article from the tallies) | the four ICRP 116 files |
| `4_model` (input decks, seated phantoms, lattice files, organ masses) | the ICRP 110 and the ICRP 116 files |

If the ICRP packages are already unpacked somewhere else, the environment variables `ICRP110_DIR` and `ICRP116_DIR` can point to them instead (the folders that contain `AM`, `AF` and `Photons`, respectively).

Everything in this folder except this file is ignored by git (`.gitignore`), so the ICRP files are never committed by mistake.
