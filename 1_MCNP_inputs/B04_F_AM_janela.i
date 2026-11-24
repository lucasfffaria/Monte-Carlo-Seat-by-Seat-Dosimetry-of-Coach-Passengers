BUS-F AM: patient AM seated (window seat), all other 19 seats occupied by AM
c Coach 2+2 (EMTU/AGER based): module 50.5 cm, aisle 35 cm, pitch 80 cm,
c seat height 38.5 cm, cushion 45x42 cm. Rows 1-5 occupied, patient row 3.
c Energy-resolved source (v4): one photon per history, energy from the grid D6
c (27 lines 25.65 keV - 2.615 MeV; tallies FT SCX 6), region tag = birth time
c (TME=FCEL=D2, T0 bins). Organ sources use MCNP lattice-element sampling
c (path organ<lattice<container). Any radionuclide (177Lu, 161Tb,
c 212Pb+daughters, 225Ac+daughters) is obtained by folding.
c ============================== CELLS
c ---- air universe (air voxels of every lattice)
999 200 -0.001205 -99 u=999 imp:p=1 $ voxel air
c ---- organ universes AM: cell 10000+ID, u=0+ID, mat 0+medium
10001 43 -1.030 -99 u=1 imp:p=1 $ Adrenal, left
10002 43 -1.030 -99 u=2 imp:p=1 $ Adrenal, right
10003 45 -1.030 -99 u=3 imp:p=1 $ Anterior nasal passage (ET1)
10004 45 -1.030 -99 u=4 imp:p=1 $ Posterior nasal passage down to larynx (ET2)
10005 29 -1.050 -99 u=5 imp:p=1 $ Oral mucosa, tongue
10006 29 -1.050 -99 u=6 imp:p=1 $ Oral mucosa, lips and cheeks
10007 45 -1.030 -99 u=7 imp:p=1 $ Trachea
10008 45 -1.030 -99 u=8 imp:p=1 $ Bronchi
10009 28 -1.060 -99 u=9 imp:p=1 $ Blood vessels, head
10010 28 -1.060 -99 u=10 imp:p=1 $ Blood vessels, trunk
10011 28 -1.060 -99 u=11 imp:p=1 $ Blood vessels, arms
10012 28 -1.060 -99 u=12 imp:p=1 $ Blood vessels, legs
10013 2 -1.920 -99 u=13 imp:p=1 $ Humeri, upper half, cortical
10014 3 -1.205 -99 u=14 imp:p=1 $ Humeri, upper half, spongiosa
10015 22 -0.980 -99 u=15 imp:p=1 $ Humeri, upper half, medullary cavity
10016 2 -1.920 -99 u=16 imp:p=1 $ Humeri, lower half, cortical
10017 4 -1.108 -99 u=17 imp:p=1 $ Humeri, lower half, spongiosa
10018 23 -0.980 -99 u=18 imp:p=1 $ Humeri, lower half, medullary cavity
10019 2 -1.920 -99 u=19 imp:p=1 $ Ulnae and radii, cortical
10020 5 -1.108 -99 u=20 imp:p=1 $ Ulnae and radii, spongiosa
10021 24 -0.980 -99 u=21 imp:p=1 $ Ulnae and radii, medullary cavity
10022 2 -1.920 -99 u=22 imp:p=1 $ Wrists and hand bones, cortical
10023 6 -1.108 -99 u=23 imp:p=1 $ Wrists and hand bones, spongiosa
10024 2 -1.920 -99 u=24 imp:p=1 $ Clavicles, cortical
10025 7 -1.151 -99 u=25 imp:p=1 $ Clavicles, spongiosa
10026 2 -1.920 -99 u=26 imp:p=1 $ Cranium, cortical
10027 8 -1.157 -99 u=27 imp:p=1 $ Cranium, spongiosa
10028 2 -1.920 -99 u=28 imp:p=1 $ Femora, upper half, cortical
10029 9 -1.124 -99 u=29 imp:p=1 $ Femora, upper half, spongiosa
10030 22 -0.980 -99 u=30 imp:p=1 $ Femora, upper half, medullary cavity
10031 2 -1.920 -99 u=31 imp:p=1 $ Femora, lower half, cortical
10032 10 -1.108 -99 u=32 imp:p=1 $ Femora, lower half, spongiosa
10033 23 -0.980 -99 u=33 imp:p=1 $ Femora, lower half, medullary cavity
10034 2 -1.920 -99 u=34 imp:p=1 $ Tibiae, fibulae and patellae, cortical
10035 11 -1.108 -99 u=35 imp:p=1 $ Tibiae, fibulae and patellae, spongiosa
10036 25 -0.980 -99 u=36 imp:p=1 $ Tibiae, fibulae and patellae, medullary cavit
10037 2 -1.920 -99 u=37 imp:p=1 $ Ankles and foot bones, cortical
10038 12 -1.108 -99 u=38 imp:p=1 $ Ankles and foot bones, spongiosa
10039 2 -1.920 -99 u=39 imp:p=1 $ Mandible, cortical
10040 13 -1.228 -99 u=40 imp:p=1 $ Mandible, spongiosa
10041 2 -1.920 -99 u=41 imp:p=1 $ Pelvis, cortical
10042 14 -1.123 -99 u=42 imp:p=1 $ Pelvis, spongiosa
10043 2 -1.920 -99 u=43 imp:p=1 $ Ribs, cortical
10044 15 -1.165 -99 u=44 imp:p=1 $ Ribs, spongiosa
10045 2 -1.920 -99 u=45 imp:p=1 $ Scapulae, cortical
10046 16 -1.183 -99 u=46 imp:p=1 $ Scapulae, spongiosa
10047 2 -1.920 -99 u=47 imp:p=1 $ Cervical spine, cortical
10048 17 -1.050 -99 u=48 imp:p=1 $ Cervical spine, spongiosa
10049 2 -1.920 -99 u=49 imp:p=1 $ Thoracic spine, cortical
10050 18 -1.074 -99 u=50 imp:p=1 $ Thoracic spine, spongiosa
10051 2 -1.920 -99 u=51 imp:p=1 $ Lumbar spine, cortical
10052 19 -1.112 -99 u=52 imp:p=1 $ Lumbar spine, spongiosa
10053 2 -1.920 -99 u=53 imp:p=1 $ Sacrum, cortical
10054 20 -1.031 -99 u=54 imp:p=1 $ Sacrum, spongiosa
10055 2 -1.920 -99 u=55 imp:p=1 $ Sternum, cortical
10056 21 -1.041 -99 u=56 imp:p=1 $ Sternum, spongiosa
10057 26 -1.100 -99 u=57 imp:p=1 $ Cartilage, head
10058 26 -1.100 -99 u=58 imp:p=1 $ Cartilage, trunk
10059 26 -1.100 -99 u=59 imp:p=1 $ Cartilage, arms
10060 26 -1.100 -99 u=60 imp:p=1 $ Cartilage, legs
10061 32 -1.050 -99 u=61 imp:p=1 $ Brain
10062 49 -0.950 -99 u=62 imp:p=1 $ Breast, left, adipose tissue
10063 48 -1.020 -99 u=63 imp:p=1 $ Breast, left, glandular tissue
10064 49 -0.950 -99 u=64 imp:p=1 $ Breast, right, adipose tissue
10065 48 -1.020 -99 u=65 imp:p=1 $ Breast, right, glandular tissue
10066 34 -1.050 -99 u=66 imp:p=1 $ Eye lense, left
10067 34 -1.050 -99 u=67 imp:p=1 $ Eye bulb, left
10068 34 -1.050 -99 u=68 imp:p=1 $ Eye lense, right
10069 34 -1.050 -99 u=69 imp:p=1 $ Eye bulb, right
10070 45 -1.030 -99 u=70 imp:p=1 $ Gall bladder wall
10071 45 -1.030 -99 u=71 imp:p=1 $ Gall bladder contents
10072 36 -1.040 -99 u=72 imp:p=1 $ Stomach wall
10073 51 -1.040 -99 u=73 imp:p=1 $ Stomach contents
10074 37 -1.040 -99 u=74 imp:p=1 $ Small intestine wall
10075 51 -1.040 -99 u=75 imp:p=1 $ Small intestine contents
10076 38 -1.040 -99 u=76 imp:p=1 $ Ascending colon wall
10077 51 -1.040 -99 u=77 imp:p=1 $ Ascending colon contents
10078 38 -1.040 -99 u=78 imp:p=1 $ Transverse colon wall, right
10079 51 -1.040 -99 u=79 imp:p=1 $ Transverse colon contents, right
10080 38 -1.040 -99 u=80 imp:p=1 $ Transverse colon wall, left
10081 51 -1.040 -99 u=81 imp:p=1 $ Transverse colon contents, left
10082 38 -1.040 -99 u=82 imp:p=1 $ Descending colon wall
10083 51 -1.040 -99 u=83 imp:p=1 $ Descending colon contents
10084 38 -1.040 -99 u=84 imp:p=1 $ Sigmoid colon wall
10085 51 -1.040 -99 u=85 imp:p=1 $ Sigmoid colon contents
10086 38 -1.040 -99 u=86 imp:p=1 $ Rectum wall
10087 33 -1.050 -99 u=87 imp:p=1 $ Heart wall
10088 28 -1.060 -99 u=88 imp:p=1 $ Heart contents (blood)
10089 35 -1.050 -99 u=89 imp:p=1 $ Kidney, left, cortex
10090 35 -1.050 -99 u=90 imp:p=1 $ Kidney, left, medulla
10091 35 -1.050 -99 u=91 imp:p=1 $ Kidney, left, pelvis
10092 35 -1.050 -99 u=92 imp:p=1 $ Kidney, right, cortex
10093 35 -1.050 -99 u=93 imp:p=1 $ Kidney, right, medulla
10094 35 -1.050 -99 u=94 imp:p=1 $ Kidney, right, pelvis
10095 30 -1.050 -99 u=95 imp:p=1 $ Liver
10096 28 -1.060 -99 u=96 imp:p=1 $ Lung, left, blood
10097 50 -0.382 -99 u=97 imp:p=1 $ Lung, left, tissue
10098 28 -1.060 -99 u=98 imp:p=1 $ Lung, right, blood
10099 50 -0.382 -99 u=99 imp:p=1 $ Lung, right, tissue
10100 47 -1.030 -99 u=100 imp:p=1 $ Lymphatic nodes, extrathoracic airways
10101 47 -1.030 -99 u=101 imp:p=1 $ Lymphatic nodes, thoracic airways
10102 47 -1.030 -99 u=102 imp:p=1 $ Lymphatic nodes, head
10103 47 -1.030 -99 u=103 imp:p=1 $ Lymphatic nodes, trunk
10104 47 -1.030 -99 u=104 imp:p=1 $ Lymphatic nodes, arms
10105 47 -1.030 -99 u=105 imp:p=1 $ Lymphatic nodes, legs
10106 29 -1.050 -99 u=106 imp:p=1 $ Muscle, head
10107 29 -1.050 -99 u=107 imp:p=1 $ Muscle, trunk
10108 29 -1.050 -99 u=108 imp:p=1 $ Muscle, arms
10109 29 -1.050 -99 u=109 imp:p=1 $ Muscle, legs
10110 44 -1.030 -99 u=110 imp:p=1 $ Oesophagus
10113 31 -1.050 -99 u=113 imp:p=1 $ Pancreas
10114 45 -1.030 -99 u=114 imp:p=1 $ Pituitary gland
10115 46 -1.030 -99 u=115 imp:p=1 $ Prostate
10116 49 -0.950 -99 u=116 imp:p=1 $ Residual tissue, head
10117 49 -0.950 -99 u=117 imp:p=1 $ Residual tissue, trunk
10118 49 -0.950 -99 u=118 imp:p=1 $ Residual tissue, arms
10119 49 -0.950 -99 u=119 imp:p=1 $ Residual tissue, legs
10120 45 -1.030 -99 u=120 imp:p=1 $ Salivary glands, left
10121 45 -1.030 -99 u=121 imp:p=1 $ Salivary glands, right
10122 27 -1.090 -99 u=122 imp:p=1 $ Skin, head
10123 27 -1.090 -99 u=123 imp:p=1 $ Skin, trunk
10124 27 -1.090 -99 u=124 imp:p=1 $ Skin, arms
10125 27 -1.090 -99 u=125 imp:p=1 $ Skin, legs
10126 45 -1.030 -99 u=126 imp:p=1 $ Spinal cord
10127 39 -1.040 -99 u=127 imp:p=1 $ Spleen
10128 1 -2.750 -99 u=128 imp:p=1 $ Teeth
10129 42 -1.040 -99 u=129 imp:p=1 $ Testis, left
10130 42 -1.040 -99 u=130 imp:p=1 $ Testis, right
10131 45 -1.030 -99 u=131 imp:p=1 $ Thymus
10132 40 -1.040 -99 u=132 imp:p=1 $ Thyroid
10133 29 -1.050 -99 u=133 imp:p=1 $ Tongue (inner part)
10134 45 -1.030 -99 u=134 imp:p=1 $ Tonsils
10135 45 -1.030 -99 u=135 imp:p=1 $ Ureter, left
10136 45 -1.030 -99 u=136 imp:p=1 $ Ureter, right
10137 41 -1.040 -99 u=137 imp:p=1 $ Urinary bladder wall
10138 52 -1.040 -99 u=138 imp:p=1 $ Urinary bladder contents
10140 53 -0.001 -99 u=140 imp:p=1 $ Air inside body
10141 27 -1.090 -99 u=141 imp:p=1 $ Skin (top/bottom slice)
c ---- organ universes AM: cell 40000+ID, u=400+ID, mat 0+medium
40001 43 -1.030 -99 u=401 imp:p=1 $ Adrenal, left
40002 43 -1.030 -99 u=402 imp:p=1 $ Adrenal, right
40003 45 -1.030 -99 u=403 imp:p=1 $ Anterior nasal passage (ET1)
40004 45 -1.030 -99 u=404 imp:p=1 $ Posterior nasal passage down to larynx (ET2)
40005 29 -1.050 -99 u=405 imp:p=1 $ Oral mucosa, tongue
40006 29 -1.050 -99 u=406 imp:p=1 $ Oral mucosa, lips and cheeks
40007 45 -1.030 -99 u=407 imp:p=1 $ Trachea
40008 45 -1.030 -99 u=408 imp:p=1 $ Bronchi
40009 28 -1.060 -99 u=409 imp:p=1 $ Blood vessels, head
40010 28 -1.060 -99 u=410 imp:p=1 $ Blood vessels, trunk
40011 28 -1.060 -99 u=411 imp:p=1 $ Blood vessels, arms
40012 28 -1.060 -99 u=412 imp:p=1 $ Blood vessels, legs
40013 2 -1.920 -99 u=413 imp:p=1 $ Humeri, upper half, cortical
40014 3 -1.205 -99 u=414 imp:p=1 $ Humeri, upper half, spongiosa
40015 22 -0.980 -99 u=415 imp:p=1 $ Humeri, upper half, medullary cavity
40016 2 -1.920 -99 u=416 imp:p=1 $ Humeri, lower half, cortical
40017 4 -1.108 -99 u=417 imp:p=1 $ Humeri, lower half, spongiosa
40018 23 -0.980 -99 u=418 imp:p=1 $ Humeri, lower half, medullary cavity
40019 2 -1.920 -99 u=419 imp:p=1 $ Ulnae and radii, cortical
40020 5 -1.108 -99 u=420 imp:p=1 $ Ulnae and radii, spongiosa
40021 24 -0.980 -99 u=421 imp:p=1 $ Ulnae and radii, medullary cavity
40022 2 -1.920 -99 u=422 imp:p=1 $ Wrists and hand bones, cortical
40023 6 -1.108 -99 u=423 imp:p=1 $ Wrists and hand bones, spongiosa
40024 2 -1.920 -99 u=424 imp:p=1 $ Clavicles, cortical
40025 7 -1.151 -99 u=425 imp:p=1 $ Clavicles, spongiosa
40026 2 -1.920 -99 u=426 imp:p=1 $ Cranium, cortical
40027 8 -1.157 -99 u=427 imp:p=1 $ Cranium, spongiosa
40028 2 -1.920 -99 u=428 imp:p=1 $ Femora, upper half, cortical
40029 9 -1.124 -99 u=429 imp:p=1 $ Femora, upper half, spongiosa
40030 22 -0.980 -99 u=430 imp:p=1 $ Femora, upper half, medullary cavity
40031 2 -1.920 -99 u=431 imp:p=1 $ Femora, lower half, cortical
40032 10 -1.108 -99 u=432 imp:p=1 $ Femora, lower half, spongiosa
40033 23 -0.980 -99 u=433 imp:p=1 $ Femora, lower half, medullary cavity
40034 2 -1.920 -99 u=434 imp:p=1 $ Tibiae, fibulae and patellae, cortical
40035 11 -1.108 -99 u=435 imp:p=1 $ Tibiae, fibulae and patellae, spongiosa
40036 25 -0.980 -99 u=436 imp:p=1 $ Tibiae, fibulae and patellae, medullary cavi
40037 2 -1.920 -99 u=437 imp:p=1 $ Ankles and foot bones, cortical
40038 12 -1.108 -99 u=438 imp:p=1 $ Ankles and foot bones, spongiosa
40039 2 -1.920 -99 u=439 imp:p=1 $ Mandible, cortical
40040 13 -1.228 -99 u=440 imp:p=1 $ Mandible, spongiosa
40041 2 -1.920 -99 u=441 imp:p=1 $ Pelvis, cortical
40042 14 -1.123 -99 u=442 imp:p=1 $ Pelvis, spongiosa
40043 2 -1.920 -99 u=443 imp:p=1 $ Ribs, cortical
40044 15 -1.165 -99 u=444 imp:p=1 $ Ribs, spongiosa
40045 2 -1.920 -99 u=445 imp:p=1 $ Scapulae, cortical
40046 16 -1.183 -99 u=446 imp:p=1 $ Scapulae, spongiosa
40047 2 -1.920 -99 u=447 imp:p=1 $ Cervical spine, cortical
40048 17 -1.050 -99 u=448 imp:p=1 $ Cervical spine, spongiosa
40049 2 -1.920 -99 u=449 imp:p=1 $ Thoracic spine, cortical
40050 18 -1.074 -99 u=450 imp:p=1 $ Thoracic spine, spongiosa
40051 2 -1.920 -99 u=451 imp:p=1 $ Lumbar spine, cortical
40052 19 -1.112 -99 u=452 imp:p=1 $ Lumbar spine, spongiosa
40053 2 -1.920 -99 u=453 imp:p=1 $ Sacrum, cortical
40054 20 -1.031 -99 u=454 imp:p=1 $ Sacrum, spongiosa
40055 2 -1.920 -99 u=455 imp:p=1 $ Sternum, cortical
40056 21 -1.041 -99 u=456 imp:p=1 $ Sternum, spongiosa
40057 26 -1.100 -99 u=457 imp:p=1 $ Cartilage, head
40058 26 -1.100 -99 u=458 imp:p=1 $ Cartilage, trunk
40059 26 -1.100 -99 u=459 imp:p=1 $ Cartilage, arms
40060 26 -1.100 -99 u=460 imp:p=1 $ Cartilage, legs
40061 32 -1.050 -99 u=461 imp:p=1 $ Brain
40062 49 -0.950 -99 u=462 imp:p=1 $ Breast, left, adipose tissue
40063 48 -1.020 -99 u=463 imp:p=1 $ Breast, left, glandular tissue
40064 49 -0.950 -99 u=464 imp:p=1 $ Breast, right, adipose tissue
40065 48 -1.020 -99 u=465 imp:p=1 $ Breast, right, glandular tissue
40066 34 -1.050 -99 u=466 imp:p=1 $ Eye lense, left
40067 34 -1.050 -99 u=467 imp:p=1 $ Eye bulb, left
40068 34 -1.050 -99 u=468 imp:p=1 $ Eye lense, right
40069 34 -1.050 -99 u=469 imp:p=1 $ Eye bulb, right
40070 45 -1.030 -99 u=470 imp:p=1 $ Gall bladder wall
40071 45 -1.030 -99 u=471 imp:p=1 $ Gall bladder contents
40072 36 -1.040 -99 u=472 imp:p=1 $ Stomach wall
40073 51 -1.040 -99 u=473 imp:p=1 $ Stomach contents
40074 37 -1.040 -99 u=474 imp:p=1 $ Small intestine wall
40075 51 -1.040 -99 u=475 imp:p=1 $ Small intestine contents
40076 38 -1.040 -99 u=476 imp:p=1 $ Ascending colon wall
40077 51 -1.040 -99 u=477 imp:p=1 $ Ascending colon contents
40078 38 -1.040 -99 u=478 imp:p=1 $ Transverse colon wall, right
40079 51 -1.040 -99 u=479 imp:p=1 $ Transverse colon contents, right
40080 38 -1.040 -99 u=480 imp:p=1 $ Transverse colon wall, left
40081 51 -1.040 -99 u=481 imp:p=1 $ Transverse colon contents, left
40082 38 -1.040 -99 u=482 imp:p=1 $ Descending colon wall
40083 51 -1.040 -99 u=483 imp:p=1 $ Descending colon contents
40084 38 -1.040 -99 u=484 imp:p=1 $ Sigmoid colon wall
40085 51 -1.040 -99 u=485 imp:p=1 $ Sigmoid colon contents
40086 38 -1.040 -99 u=486 imp:p=1 $ Rectum wall
40087 33 -1.050 -99 u=487 imp:p=1 $ Heart wall
40088 28 -1.060 -99 u=488 imp:p=1 $ Heart contents (blood)
40089 35 -1.050 -99 u=489 imp:p=1 $ Kidney, left, cortex
40090 35 -1.050 -99 u=490 imp:p=1 $ Kidney, left, medulla
40091 35 -1.050 -99 u=491 imp:p=1 $ Kidney, left, pelvis
40092 35 -1.050 -99 u=492 imp:p=1 $ Kidney, right, cortex
40093 35 -1.050 -99 u=493 imp:p=1 $ Kidney, right, medulla
40094 35 -1.050 -99 u=494 imp:p=1 $ Kidney, right, pelvis
40095 30 -1.050 -99 u=495 imp:p=1 $ Liver
40096 28 -1.060 -99 u=496 imp:p=1 $ Lung, left, blood
40097 50 -0.382 -99 u=497 imp:p=1 $ Lung, left, tissue
40098 28 -1.060 -99 u=498 imp:p=1 $ Lung, right, blood
40099 50 -0.382 -99 u=499 imp:p=1 $ Lung, right, tissue
40100 47 -1.030 -99 u=500 imp:p=1 $ Lymphatic nodes, extrathoracic airways
40101 47 -1.030 -99 u=501 imp:p=1 $ Lymphatic nodes, thoracic airways
40102 47 -1.030 -99 u=502 imp:p=1 $ Lymphatic nodes, head
40103 47 -1.030 -99 u=503 imp:p=1 $ Lymphatic nodes, trunk
40104 47 -1.030 -99 u=504 imp:p=1 $ Lymphatic nodes, arms
40105 47 -1.030 -99 u=505 imp:p=1 $ Lymphatic nodes, legs
40106 29 -1.050 -99 u=506 imp:p=1 $ Muscle, head
40107 29 -1.050 -99 u=507 imp:p=1 $ Muscle, trunk
40108 29 -1.050 -99 u=508 imp:p=1 $ Muscle, arms
40109 29 -1.050 -99 u=509 imp:p=1 $ Muscle, legs
40110 44 -1.030 -99 u=510 imp:p=1 $ Oesophagus
40113 31 -1.050 -99 u=513 imp:p=1 $ Pancreas
40114 45 -1.030 -99 u=514 imp:p=1 $ Pituitary gland
40115 46 -1.030 -99 u=515 imp:p=1 $ Prostate
40116 49 -0.950 -99 u=516 imp:p=1 $ Residual tissue, head
40117 49 -0.950 -99 u=517 imp:p=1 $ Residual tissue, trunk
40118 49 -0.950 -99 u=518 imp:p=1 $ Residual tissue, arms
40119 49 -0.950 -99 u=519 imp:p=1 $ Residual tissue, legs
40120 45 -1.030 -99 u=520 imp:p=1 $ Salivary glands, left
40121 45 -1.030 -99 u=521 imp:p=1 $ Salivary glands, right
40122 27 -1.090 -99 u=522 imp:p=1 $ Skin, head
40123 27 -1.090 -99 u=523 imp:p=1 $ Skin, trunk
40124 27 -1.090 -99 u=524 imp:p=1 $ Skin, arms
40125 27 -1.090 -99 u=525 imp:p=1 $ Skin, legs
40126 45 -1.030 -99 u=526 imp:p=1 $ Spinal cord
40127 39 -1.040 -99 u=527 imp:p=1 $ Spleen
40128 1 -2.750 -99 u=528 imp:p=1 $ Teeth
40129 42 -1.040 -99 u=529 imp:p=1 $ Testis, left
40130 42 -1.040 -99 u=530 imp:p=1 $ Testis, right
40131 45 -1.030 -99 u=531 imp:p=1 $ Thymus
40132 40 -1.040 -99 u=532 imp:p=1 $ Thyroid
40133 29 -1.050 -99 u=533 imp:p=1 $ Tongue (inner part)
40134 45 -1.030 -99 u=534 imp:p=1 $ Tonsils
40135 45 -1.030 -99 u=535 imp:p=1 $ Ureter, left
40136 45 -1.030 -99 u=536 imp:p=1 $ Ureter, right
40137 41 -1.040 -99 u=537 imp:p=1 $ Urinary bladder wall
40138 52 -1.040 -99 u=538 imp:p=1 $ Urinary bladder contents
40140 53 -0.001 -99 u=540 imp:p=1 $ Air inside body
40141 27 -1.090 -99 u=541 imp:p=1 $ Skin (top/bottom slice)
c ---- PAMseat: 15 slab lattices, cells/universes 6100-6114
read file=lat_PAMseat.txt noecho
c ---- TAMseat: 15 slab lattices, cells/universes 3100-3114
read file=lat_TAMseat.txt noecho
700000 0 -102 fill=6100 (78.1842 -68.5488 0.1) imp:p=1
700001 0 -103 fill=6101 (79.0389 -53.3761 13.7) imp:p=1
700002 0 -104 fill=6102 (74.3375 -54.872 38.5) imp:p=1
700003 0 -105 fill=6103 (73.269 -57.2227 43.3) imp:p=1
700004 0 -106 fill=6104 (73.269 -59.146 48.1) imp:p=1
700005 0 -107 fill=6105 (74.1239 -59.3597 52.9) imp:p=1
700006 0 -108 fill=6106 (74.7649 -59.146 57.7) imp:p=1
700007 0 -109 fill=6107 (72.6279 -46.5377 62.5) imp:p=1
700008 0 -110 fill=6108 (69.8499 -45.4692 68.1) imp:p=1
700009 0 -111 fill=6109 (68.7814 -32.6472 72.9) imp:p=1
700010 0 -112 fill=6110 (68.3539 -25.8088 79.3) imp:p=1
700011 0 -113 fill=6111 (68.3539 -24.5266 88.1) imp:p=1
700012 0 -114 fill=6112 (69.2087 -21.5348 96.9) imp:p=1
700013 0 -115 fill=6113 (73.9102 -25.3814 107.3) imp:p=1
700014 0 -116 fill=6114 (84.3815 -27.3047 119.3) imp:p=1
7000 200 -0.001205 (-100:-101) 102 103 104 105 106 107 108 109 110 111 112 113
     114 115 116 imp:p=1 $ envelope PAM_r3RW
700100 0 -119 fill=3100 (-108.3158 -228.5488 0.1) imp:p=1
700101 0 -120 fill=3101 (-107.4611 -213.3761 13.7) imp:p=1
700102 0 -121 fill=3102 (-112.1625 -214.872 38.5) imp:p=1
700103 0 -122 fill=3103 (-113.231 -217.2227 43.3) imp:p=1
700104 0 -123 fill=3104 (-113.231 -219.146 48.1) imp:p=1
700105 0 -124 fill=3105 (-112.3761 -219.3597 52.9) imp:p=1
700106 0 -125 fill=3106 (-111.7351 -219.146 57.7) imp:p=1
700107 0 -126 fill=3107 (-113.8721 -206.5377 62.5) imp:p=1
700108 0 -127 fill=3108 (-116.6501 -205.4692 68.1) imp:p=1
700109 0 -128 fill=3109 (-117.7186 -192.6472 72.9) imp:p=1
700110 0 -129 fill=3110 (-118.1461 -185.8088 79.3) imp:p=1
700111 0 -130 fill=3111 (-118.1461 -184.5266 88.1) imp:p=1
700112 0 -131 fill=3112 (-117.2913 -181.5348 96.9) imp:p=1
700113 0 -132 fill=3113 (-112.5898 -185.3814 107.3) imp:p=1
700114 0 -133 fill=3114 (-102.1185 -187.3047 119.3) imp:p=1
7001 200 -0.001205 (-117:-118) 119 120 121 122 123 124 125 126 127 128 129 130
     131 132 133 imp:p=1 $ envelope TAM_r1LW
700200 0 -136 fill=3100 (-57.8158 -228.5488 0.1) imp:p=1
700201 0 -137 fill=3101 (-56.9611 -213.3761 13.7) imp:p=1
700202 0 -138 fill=3102 (-61.6624 -214.872 38.5) imp:p=1
700203 0 -139 fill=3103 (-62.7309 -217.2227 43.3) imp:p=1
700204 0 -140 fill=3104 (-62.7309 -219.146 48.1) imp:p=1
700205 0 -141 fill=3105 (-61.8762 -219.3597 52.9) imp:p=1
700206 0 -142 fill=3106 (-61.2351 -219.146 57.7) imp:p=1
700207 0 -143 fill=3107 (-63.3721 -206.5377 62.5) imp:p=1
700208 0 -144 fill=3108 (-66.1501 -205.4692 68.1) imp:p=1
700209 0 -145 fill=3109 (-67.2186 -192.6472 72.9) imp:p=1
700210 0 -146 fill=3110 (-67.6461 -185.8088 79.3) imp:p=1
700211 0 -147 fill=3111 (-67.6461 -184.5266 88.1) imp:p=1
700212 0 -148 fill=3112 (-66.7913 -181.5348 96.9) imp:p=1
700213 0 -149 fill=3113 (-62.0898 -185.3814 107.3) imp:p=1
700214 0 -150 fill=3114 (-51.6185 -187.3047 119.3) imp:p=1
7002 200 -0.001205 (-134:-135) 136 137 138 139 140 141 142 143 144 145 146 147
     148 149 150 imp:p=1 $ envelope TAM_r1LA
700300 0 -153 fill=3100 (27.6842 -228.5488 0.1) imp:p=1
700301 0 -154 fill=3101 (28.5389 -213.3761 13.7) imp:p=1
700302 0 -155 fill=3102 (23.8376 -214.872 38.5) imp:p=1
700303 0 -156 fill=3103 (22.7691 -217.2227 43.3) imp:p=1
700304 0 -157 fill=3104 (22.7691 -219.146 48.1) imp:p=1
700305 0 -158 fill=3105 (23.6239 -219.3597 52.9) imp:p=1
700306 0 -159 fill=3106 (24.2649 -219.146 57.7) imp:p=1
700307 0 -160 fill=3107 (22.1279 -206.5377 62.5) imp:p=1
700308 0 -161 fill=3108 (19.3498 -205.4692 68.1) imp:p=1
700309 0 -162 fill=3109 (18.2813 -192.6472 72.9) imp:p=1
700310 0 -163 fill=3110 (17.854 -185.8088 79.3) imp:p=1
700311 0 -164 fill=3111 (17.854 -184.5266 88.1) imp:p=1
700312 0 -165 fill=3112 (18.7088 -181.5348 96.9) imp:p=1
700313 0 -166 fill=3113 (23.4102 -185.3814 107.3) imp:p=1
700314 0 -167 fill=3114 (33.8815 -187.3047 119.3) imp:p=1
7003 200 -0.001205 (-151:-152) 153 154 155 156 157 158 159 160 161 162 163 164
     165 166 167 imp:p=1 $ envelope TAM_r1RA
700400 0 -170 fill=3100 (78.1842 -228.5488 0.1) imp:p=1
700401 0 -171 fill=3101 (79.0389 -213.3761 13.7) imp:p=1
700402 0 -172 fill=3102 (74.3375 -214.872 38.5) imp:p=1
700403 0 -173 fill=3103 (73.269 -217.2227 43.3) imp:p=1
700404 0 -174 fill=3104 (73.269 -219.146 48.1) imp:p=1
700405 0 -175 fill=3105 (74.1239 -219.3597 52.9) imp:p=1
700406 0 -176 fill=3106 (74.7649 -219.146 57.7) imp:p=1
700407 0 -177 fill=3107 (72.6279 -206.5377 62.5) imp:p=1
700408 0 -178 fill=3108 (69.8499 -205.4692 68.1) imp:p=1
700409 0 -179 fill=3109 (68.7814 -192.6472 72.9) imp:p=1
700410 0 -180 fill=3110 (68.3539 -185.8088 79.3) imp:p=1
700411 0 -181 fill=3111 (68.3539 -184.5266 88.1) imp:p=1
700412 0 -182 fill=3112 (69.2087 -181.5348 96.9) imp:p=1
700413 0 -183 fill=3113 (73.9102 -185.3814 107.3) imp:p=1
700414 0 -184 fill=3114 (84.3815 -187.3047 119.3) imp:p=1
7004 200 -0.001205 (-168:-169) 170 171 172 173 174 175 176 177 178 179 180 181
     182 183 184 imp:p=1 $ envelope TAM_r1RW
700500 0 -187 fill=3100 (-108.3158 -148.5488 0.1) imp:p=1
700501 0 -188 fill=3101 (-107.4611 -133.3761 13.7) imp:p=1
700502 0 -189 fill=3102 (-112.1625 -134.872 38.5) imp:p=1
700503 0 -190 fill=3103 (-113.231 -137.2227 43.3) imp:p=1
700504 0 -191 fill=3104 (-113.231 -139.146 48.1) imp:p=1
700505 0 -192 fill=3105 (-112.3761 -139.3597 52.9) imp:p=1
700506 0 -193 fill=3106 (-111.7351 -139.146 57.7) imp:p=1
700507 0 -194 fill=3107 (-113.8721 -126.5377 62.5) imp:p=1
700508 0 -195 fill=3108 (-116.6501 -125.4692 68.1) imp:p=1
700509 0 -196 fill=3109 (-117.7186 -112.6472 72.9) imp:p=1
700510 0 -197 fill=3110 (-118.1461 -105.8088 79.3) imp:p=1
700511 0 -198 fill=3111 (-118.1461 -104.5266 88.1) imp:p=1
700512 0 -199 fill=3112 (-117.2913 -101.5348 96.9) imp:p=1
700513 0 -200 fill=3113 (-112.5898 -105.3814 107.3) imp:p=1
700514 0 -201 fill=3114 (-102.1185 -107.3047 119.3) imp:p=1
7005 200 -0.001205 (-185:-186) 187 188 189 190 191 192 193 194 195 196 197 198
     199 200 201 imp:p=1 $ envelope TAM_r2LW
700600 0 -204 fill=3100 (-57.8158 -148.5488 0.1) imp:p=1
700601 0 -205 fill=3101 (-56.9611 -133.3761 13.7) imp:p=1
700602 0 -206 fill=3102 (-61.6624 -134.872 38.5) imp:p=1
700603 0 -207 fill=3103 (-62.7309 -137.2227 43.3) imp:p=1
700604 0 -208 fill=3104 (-62.7309 -139.146 48.1) imp:p=1
700605 0 -209 fill=3105 (-61.8762 -139.3597 52.9) imp:p=1
700606 0 -210 fill=3106 (-61.2351 -139.146 57.7) imp:p=1
700607 0 -211 fill=3107 (-63.3721 -126.5377 62.5) imp:p=1
700608 0 -212 fill=3108 (-66.1501 -125.4692 68.1) imp:p=1
700609 0 -213 fill=3109 (-67.2186 -112.6472 72.9) imp:p=1
700610 0 -214 fill=3110 (-67.6461 -105.8088 79.3) imp:p=1
700611 0 -215 fill=3111 (-67.6461 -104.5266 88.1) imp:p=1
700612 0 -216 fill=3112 (-66.7913 -101.5348 96.9) imp:p=1
700613 0 -217 fill=3113 (-62.0898 -105.3814 107.3) imp:p=1
700614 0 -218 fill=3114 (-51.6185 -107.3047 119.3) imp:p=1
7006 200 -0.001205 (-202:-203) 204 205 206 207 208 209 210 211 212 213 214 215
     216 217 218 imp:p=1 $ envelope TAM_r2LA
700700 0 -221 fill=3100 (27.6842 -148.5488 0.1) imp:p=1
700701 0 -222 fill=3101 (28.5389 -133.3761 13.7) imp:p=1
700702 0 -223 fill=3102 (23.8376 -134.872 38.5) imp:p=1
700703 0 -224 fill=3103 (22.7691 -137.2227 43.3) imp:p=1
700704 0 -225 fill=3104 (22.7691 -139.146 48.1) imp:p=1
700705 0 -226 fill=3105 (23.6239 -139.3597 52.9) imp:p=1
700706 0 -227 fill=3106 (24.2649 -139.146 57.7) imp:p=1
700707 0 -228 fill=3107 (22.1279 -126.5377 62.5) imp:p=1
700708 0 -229 fill=3108 (19.3498 -125.4692 68.1) imp:p=1
700709 0 -230 fill=3109 (18.2813 -112.6472 72.9) imp:p=1
700710 0 -231 fill=3110 (17.854 -105.8088 79.3) imp:p=1
700711 0 -232 fill=3111 (17.854 -104.5266 88.1) imp:p=1
700712 0 -233 fill=3112 (18.7088 -101.5348 96.9) imp:p=1
700713 0 -234 fill=3113 (23.4102 -105.3814 107.3) imp:p=1
700714 0 -235 fill=3114 (33.8815 -107.3047 119.3) imp:p=1
7007 200 -0.001205 (-219:-220) 221 222 223 224 225 226 227 228 229 230 231 232
     233 234 235 imp:p=1 $ envelope TAM_r2RA
700800 0 -238 fill=3100 (78.1842 -148.5488 0.1) imp:p=1
700801 0 -239 fill=3101 (79.0389 -133.3761 13.7) imp:p=1
700802 0 -240 fill=3102 (74.3375 -134.872 38.5) imp:p=1
700803 0 -241 fill=3103 (73.269 -137.2227 43.3) imp:p=1
700804 0 -242 fill=3104 (73.269 -139.146 48.1) imp:p=1
700805 0 -243 fill=3105 (74.1239 -139.3597 52.9) imp:p=1
700806 0 -244 fill=3106 (74.7649 -139.146 57.7) imp:p=1
700807 0 -245 fill=3107 (72.6279 -126.5377 62.5) imp:p=1
700808 0 -246 fill=3108 (69.8499 -125.4692 68.1) imp:p=1
700809 0 -247 fill=3109 (68.7814 -112.6472 72.9) imp:p=1
700810 0 -248 fill=3110 (68.3539 -105.8088 79.3) imp:p=1
700811 0 -249 fill=3111 (68.3539 -104.5266 88.1) imp:p=1
700812 0 -250 fill=3112 (69.2087 -101.5348 96.9) imp:p=1
700813 0 -251 fill=3113 (73.9102 -105.3814 107.3) imp:p=1
700814 0 -252 fill=3114 (84.3815 -107.3047 119.3) imp:p=1
7008 200 -0.001205 (-236:-237) 238 239 240 241 242 243 244 245 246 247 248 249
     250 251 252 imp:p=1 $ envelope TAM_r2RW
700900 0 -255 fill=3100 (-108.3158 -68.5488 0.1) imp:p=1
700901 0 -256 fill=3101 (-107.4611 -53.3761 13.7) imp:p=1
700902 0 -257 fill=3102 (-112.1625 -54.872 38.5) imp:p=1
700903 0 -258 fill=3103 (-113.231 -57.2227 43.3) imp:p=1
700904 0 -259 fill=3104 (-113.231 -59.146 48.1) imp:p=1
700905 0 -260 fill=3105 (-112.3761 -59.3597 52.9) imp:p=1
700906 0 -261 fill=3106 (-111.7351 -59.146 57.7) imp:p=1
700907 0 -262 fill=3107 (-113.8721 -46.5377 62.5) imp:p=1
700908 0 -263 fill=3108 (-116.6501 -45.4692 68.1) imp:p=1
700909 0 -264 fill=3109 (-117.7186 -32.6472 72.9) imp:p=1
700910 0 -265 fill=3110 (-118.1461 -25.8088 79.3) imp:p=1
700911 0 -266 fill=3111 (-118.1461 -24.5266 88.1) imp:p=1
700912 0 -267 fill=3112 (-117.2913 -21.5348 96.9) imp:p=1
700913 0 -268 fill=3113 (-112.5898 -25.3814 107.3) imp:p=1
700914 0 -269 fill=3114 (-102.1185 -27.3047 119.3) imp:p=1
7009 200 -0.001205 (-253:-254) 255 256 257 258 259 260 261 262 263 264 265 266
     267 268 269 imp:p=1 $ envelope TAM_r3LW
701000 0 -272 fill=3100 (-57.8158 -68.5488 0.1) imp:p=1
701001 0 -273 fill=3101 (-56.9611 -53.3761 13.7) imp:p=1
701002 0 -274 fill=3102 (-61.6624 -54.872 38.5) imp:p=1
701003 0 -275 fill=3103 (-62.7309 -57.2227 43.3) imp:p=1
701004 0 -276 fill=3104 (-62.7309 -59.146 48.1) imp:p=1
701005 0 -277 fill=3105 (-61.8762 -59.3597 52.9) imp:p=1
701006 0 -278 fill=3106 (-61.2351 -59.146 57.7) imp:p=1
701007 0 -279 fill=3107 (-63.3721 -46.5377 62.5) imp:p=1
701008 0 -280 fill=3108 (-66.1501 -45.4692 68.1) imp:p=1
701009 0 -281 fill=3109 (-67.2186 -32.6472 72.9) imp:p=1
701010 0 -282 fill=3110 (-67.6461 -25.8088 79.3) imp:p=1
701011 0 -283 fill=3111 (-67.6461 -24.5266 88.1) imp:p=1
701012 0 -284 fill=3112 (-66.7913 -21.5348 96.9) imp:p=1
701013 0 -285 fill=3113 (-62.0898 -25.3814 107.3) imp:p=1
701014 0 -286 fill=3114 (-51.6185 -27.3047 119.3) imp:p=1
7010 200 -0.001205 (-270:-271) 272 273 274 275 276 277 278 279 280 281 282 283
     284 285 286 imp:p=1 $ envelope TAM_r3LA
701100 0 -289 fill=3100 (27.6842 -68.5488 0.1) imp:p=1
701101 0 -290 fill=3101 (28.5389 -53.3761 13.7) imp:p=1
701102 0 -291 fill=3102 (23.8376 -54.872 38.5) imp:p=1
701103 0 -292 fill=3103 (22.7691 -57.2227 43.3) imp:p=1
701104 0 -293 fill=3104 (22.7691 -59.146 48.1) imp:p=1
701105 0 -294 fill=3105 (23.6239 -59.3597 52.9) imp:p=1
701106 0 -295 fill=3106 (24.2649 -59.146 57.7) imp:p=1
701107 0 -296 fill=3107 (22.1279 -46.5377 62.5) imp:p=1
701108 0 -297 fill=3108 (19.3498 -45.4692 68.1) imp:p=1
701109 0 -298 fill=3109 (18.2813 -32.6472 72.9) imp:p=1
701110 0 -299 fill=3110 (17.854 -25.8088 79.3) imp:p=1
701111 0 -300 fill=3111 (17.854 -24.5266 88.1) imp:p=1
701112 0 -301 fill=3112 (18.7088 -21.5348 96.9) imp:p=1
701113 0 -302 fill=3113 (23.4102 -25.3814 107.3) imp:p=1
701114 0 -303 fill=3114 (33.8815 -27.3047 119.3) imp:p=1
7011 200 -0.001205 (-287:-288) 289 290 291 292 293 294 295 296 297 298 299 300
     301 302 303 imp:p=1 $ envelope TAM_r3RA
701200 0 -306 fill=3100 (-108.3158 11.4512 0.1) imp:p=1
701201 0 -307 fill=3101 (-107.4611 26.6239 13.7) imp:p=1
701202 0 -308 fill=3102 (-112.1625 25.128 38.5) imp:p=1
701203 0 -309 fill=3103 (-113.231 22.7773 43.3) imp:p=1
701204 0 -310 fill=3104 (-113.231 20.854 48.1) imp:p=1
701205 0 -311 fill=3105 (-112.3761 20.6403 52.9) imp:p=1
701206 0 -312 fill=3106 (-111.7351 20.854 57.7) imp:p=1
701207 0 -313 fill=3107 (-113.8721 33.4623 62.5) imp:p=1
701208 0 -314 fill=3108 (-116.6501 34.5308 68.1) imp:p=1
701209 0 -315 fill=3109 (-117.7186 47.3528 72.9) imp:p=1
701210 0 -316 fill=3110 (-118.1461 54.1912 79.3) imp:p=1
701211 0 -317 fill=3111 (-118.1461 55.4734 88.1) imp:p=1
701212 0 -318 fill=3112 (-117.2913 58.4652 96.9) imp:p=1
701213 0 -319 fill=3113 (-112.5898 54.6186 107.3) imp:p=1
701214 0 -320 fill=3114 (-102.1185 52.6953 119.3) imp:p=1
7012 200 -0.001205 (-304:-305) 306 307 308 309 310 311 312 313 314 315 316 317
     318 319 320 imp:p=1 $ envelope TAM_r4LW
701300 0 -323 fill=3100 (-57.8158 11.4512 0.1) imp:p=1
701301 0 -324 fill=3101 (-56.9611 26.6239 13.7) imp:p=1
701302 0 -325 fill=3102 (-61.6624 25.128 38.5) imp:p=1
701303 0 -326 fill=3103 (-62.7309 22.7773 43.3) imp:p=1
701304 0 -327 fill=3104 (-62.7309 20.854 48.1) imp:p=1
701305 0 -328 fill=3105 (-61.8762 20.6403 52.9) imp:p=1
701306 0 -329 fill=3106 (-61.2351 20.854 57.7) imp:p=1
701307 0 -330 fill=3107 (-63.3721 33.4623 62.5) imp:p=1
701308 0 -331 fill=3108 (-66.1501 34.5308 68.1) imp:p=1
701309 0 -332 fill=3109 (-67.2186 47.3528 72.9) imp:p=1
701310 0 -333 fill=3110 (-67.6461 54.1912 79.3) imp:p=1
701311 0 -334 fill=3111 (-67.6461 55.4734 88.1) imp:p=1
701312 0 -335 fill=3112 (-66.7913 58.4652 96.9) imp:p=1
701313 0 -336 fill=3113 (-62.0898 54.6186 107.3) imp:p=1
701314 0 -337 fill=3114 (-51.6185 52.6953 119.3) imp:p=1
7013 200 -0.001205 (-321:-322) 323 324 325 326 327 328 329 330 331 332 333 334
     335 336 337 imp:p=1 $ envelope TAM_r4LA
701400 0 -340 fill=3100 (27.6842 11.4512 0.1) imp:p=1
701401 0 -341 fill=3101 (28.5389 26.6239 13.7) imp:p=1
701402 0 -342 fill=3102 (23.8376 25.128 38.5) imp:p=1
701403 0 -343 fill=3103 (22.7691 22.7773 43.3) imp:p=1
701404 0 -344 fill=3104 (22.7691 20.854 48.1) imp:p=1
701405 0 -345 fill=3105 (23.6239 20.6403 52.9) imp:p=1
701406 0 -346 fill=3106 (24.2649 20.854 57.7) imp:p=1
701407 0 -347 fill=3107 (22.1279 33.4623 62.5) imp:p=1
701408 0 -348 fill=3108 (19.3498 34.5308 68.1) imp:p=1
701409 0 -349 fill=3109 (18.2813 47.3528 72.9) imp:p=1
701410 0 -350 fill=3110 (17.854 54.1912 79.3) imp:p=1
701411 0 -351 fill=3111 (17.854 55.4734 88.1) imp:p=1
701412 0 -352 fill=3112 (18.7088 58.4652 96.9) imp:p=1
701413 0 -353 fill=3113 (23.4102 54.6186 107.3) imp:p=1
701414 0 -354 fill=3114 (33.8815 52.6953 119.3) imp:p=1
7014 200 -0.001205 (-338:-339) 340 341 342 343 344 345 346 347 348 349 350 351
     352 353 354 imp:p=1 $ envelope TAM_r4RA
701500 0 -357 fill=3100 (78.1842 11.4512 0.1) imp:p=1
701501 0 -358 fill=3101 (79.0389 26.6239 13.7) imp:p=1
701502 0 -359 fill=3102 (74.3375 25.128 38.5) imp:p=1
701503 0 -360 fill=3103 (73.269 22.7773 43.3) imp:p=1
701504 0 -361 fill=3104 (73.269 20.854 48.1) imp:p=1
701505 0 -362 fill=3105 (74.1239 20.6403 52.9) imp:p=1
701506 0 -363 fill=3106 (74.7649 20.854 57.7) imp:p=1
701507 0 -364 fill=3107 (72.6279 33.4623 62.5) imp:p=1
701508 0 -365 fill=3108 (69.8499 34.5308 68.1) imp:p=1
701509 0 -366 fill=3109 (68.7814 47.3528 72.9) imp:p=1
701510 0 -367 fill=3110 (68.3539 54.1912 79.3) imp:p=1
701511 0 -368 fill=3111 (68.3539 55.4734 88.1) imp:p=1
701512 0 -369 fill=3112 (69.2087 58.4652 96.9) imp:p=1
701513 0 -370 fill=3113 (73.9102 54.6186 107.3) imp:p=1
701514 0 -371 fill=3114 (84.3815 52.6953 119.3) imp:p=1
7015 200 -0.001205 (-355:-356) 357 358 359 360 361 362 363 364 365 366 367 368
     369 370 371 imp:p=1 $ envelope TAM_r4RW
701600 0 -374 fill=3100 (-108.3158 91.4512 0.1) imp:p=1
701601 0 -375 fill=3101 (-107.4611 106.6239 13.7) imp:p=1
701602 0 -376 fill=3102 (-112.1625 105.128 38.5) imp:p=1
701603 0 -377 fill=3103 (-113.231 102.7773 43.3) imp:p=1
701604 0 -378 fill=3104 (-113.231 100.854 48.1) imp:p=1
701605 0 -379 fill=3105 (-112.3761 100.6403 52.9) imp:p=1
701606 0 -380 fill=3106 (-111.7351 100.854 57.7) imp:p=1
701607 0 -381 fill=3107 (-113.8721 113.4623 62.5) imp:p=1
701608 0 -382 fill=3108 (-116.6501 114.5308 68.1) imp:p=1
701609 0 -383 fill=3109 (-117.7186 127.3528 72.9) imp:p=1
701610 0 -384 fill=3110 (-118.1461 134.1912 79.3) imp:p=1
701611 0 -385 fill=3111 (-118.1461 135.4734 88.1) imp:p=1
701612 0 -386 fill=3112 (-117.2913 138.4652 96.9) imp:p=1
701613 0 -387 fill=3113 (-112.5898 134.6186 107.3) imp:p=1
701614 0 -388 fill=3114 (-102.1185 132.6953 119.3) imp:p=1
7016 200 -0.001205 (-372:-373) 374 375 376 377 378 379 380 381 382 383 384 385
     386 387 388 imp:p=1 $ envelope TAM_r5LW
701700 0 -391 fill=3100 (-57.8158 91.4512 0.1) imp:p=1
701701 0 -392 fill=3101 (-56.9611 106.6239 13.7) imp:p=1
701702 0 -393 fill=3102 (-61.6624 105.128 38.5) imp:p=1
701703 0 -394 fill=3103 (-62.7309 102.7773 43.3) imp:p=1
701704 0 -395 fill=3104 (-62.7309 100.854 48.1) imp:p=1
701705 0 -396 fill=3105 (-61.8762 100.6403 52.9) imp:p=1
701706 0 -397 fill=3106 (-61.2351 100.854 57.7) imp:p=1
701707 0 -398 fill=3107 (-63.3721 113.4623 62.5) imp:p=1
701708 0 -399 fill=3108 (-66.1501 114.5308 68.1) imp:p=1
701709 0 -400 fill=3109 (-67.2186 127.3528 72.9) imp:p=1
701710 0 -401 fill=3110 (-67.6461 134.1912 79.3) imp:p=1
701711 0 -402 fill=3111 (-67.6461 135.4734 88.1) imp:p=1
701712 0 -403 fill=3112 (-66.7913 138.4652 96.9) imp:p=1
701713 0 -404 fill=3113 (-62.0898 134.6186 107.3) imp:p=1
701714 0 -405 fill=3114 (-51.6185 132.6953 119.3) imp:p=1
7017 200 -0.001205 (-389:-390) 391 392 393 394 395 396 397 398 399 400 401 402
     403 404 405 imp:p=1 $ envelope TAM_r5LA
701800 0 -408 fill=3100 (27.6842 91.4512 0.1) imp:p=1
701801 0 -409 fill=3101 (28.5389 106.6239 13.7) imp:p=1
701802 0 -410 fill=3102 (23.8376 105.128 38.5) imp:p=1
701803 0 -411 fill=3103 (22.7691 102.7773 43.3) imp:p=1
701804 0 -412 fill=3104 (22.7691 100.854 48.1) imp:p=1
701805 0 -413 fill=3105 (23.6239 100.6403 52.9) imp:p=1
701806 0 -414 fill=3106 (24.2649 100.854 57.7) imp:p=1
701807 0 -415 fill=3107 (22.1279 113.4623 62.5) imp:p=1
701808 0 -416 fill=3108 (19.3498 114.5308 68.1) imp:p=1
701809 0 -417 fill=3109 (18.2813 127.3528 72.9) imp:p=1
701810 0 -418 fill=3110 (17.854 134.1912 79.3) imp:p=1
701811 0 -419 fill=3111 (17.854 135.4734 88.1) imp:p=1
701812 0 -420 fill=3112 (18.7088 138.4652 96.9) imp:p=1
701813 0 -421 fill=3113 (23.4102 134.6186 107.3) imp:p=1
701814 0 -422 fill=3114 (33.8815 132.6953 119.3) imp:p=1
7018 200 -0.001205 (-406:-407) 408 409 410 411 412 413 414 415 416 417 418 419
     420 421 422 imp:p=1 $ envelope TAM_r5RA
701900 0 -425 fill=3100 (78.1842 91.4512 0.1) imp:p=1
701901 0 -426 fill=3101 (79.0389 106.6239 13.7) imp:p=1
701902 0 -427 fill=3102 (74.3375 105.128 38.5) imp:p=1
701903 0 -428 fill=3103 (73.269 102.7773 43.3) imp:p=1
701904 0 -429 fill=3104 (73.269 100.854 48.1) imp:p=1
701905 0 -430 fill=3105 (74.1239 100.6403 52.9) imp:p=1
701906 0 -431 fill=3106 (74.7649 100.854 57.7) imp:p=1
701907 0 -432 fill=3107 (72.6279 113.4623 62.5) imp:p=1
701908 0 -433 fill=3108 (69.8499 114.5308 68.1) imp:p=1
701909 0 -434 fill=3109 (68.7814 127.3528 72.9) imp:p=1
701910 0 -435 fill=3110 (68.3539 134.1912 79.3) imp:p=1
701911 0 -436 fill=3111 (68.3539 135.4734 88.1) imp:p=1
701912 0 -437 fill=3112 (69.2087 138.4652 96.9) imp:p=1
701913 0 -438 fill=3113 (73.9102 134.6186 107.3) imp:p=1
701914 0 -439 fill=3114 (84.3815 132.6953 119.3) imp:p=1
7019 200 -0.001205 (-423:-424) 425 426 427 428 429 430 431 432 433 434 435 436
     437 438 439 imp:p=1 $ envelope TAM_r5RW
8001 206 -0.05 -440 imp:p=1 $ seat r0LW cushion
8002 201 -7.85 -441 imp:p=1 $ seat r0LW pan
8003 206 -0.05 -442 imp:p=1 $ seat r0LW back
8004 207 -0.9 -443 imp:p=1 $ seat r0LW shell
8005 206 -0.05 -444 imp:p=1 $ seat r0LA cushion
8006 201 -7.85 -445 imp:p=1 $ seat r0LA pan
8007 206 -0.05 -446 imp:p=1 $ seat r0LA back
8008 207 -0.9 -447 imp:p=1 $ seat r0LA shell
8009 206 -0.05 -448 imp:p=1 $ seat r0RA cushion
8010 201 -7.85 -449 imp:p=1 $ seat r0RA pan
8011 206 -0.05 -450 imp:p=1 $ seat r0RA back
8012 207 -0.9 -451 imp:p=1 $ seat r0RA shell
8013 206 -0.05 -452 imp:p=1 $ seat r0RW cushion
8014 201 -7.85 -453 imp:p=1 $ seat r0RW pan
8015 206 -0.05 -454 imp:p=1 $ seat r0RW back
8016 207 -0.9 -455 imp:p=1 $ seat r0RW shell
8017 206 -0.05 -456 imp:p=1 $ seat r1LW cushion
8018 201 -7.85 -457 imp:p=1 $ seat r1LW pan
8019 206 -0.05 -458 imp:p=1 $ seat r1LW back
8020 207 -0.9 -459 imp:p=1 $ seat r1LW shell
8021 206 -0.05 -460 imp:p=1 $ seat r1LA cushion
8022 201 -7.85 -461 imp:p=1 $ seat r1LA pan
8023 206 -0.05 -462 imp:p=1 $ seat r1LA back
8024 207 -0.9 -463 imp:p=1 $ seat r1LA shell
8025 206 -0.05 -464 imp:p=1 $ seat r1RA cushion
8026 201 -7.85 -465 imp:p=1 $ seat r1RA pan
8027 206 -0.05 -466 imp:p=1 $ seat r1RA back
8028 207 -0.9 -467 imp:p=1 $ seat r1RA shell
8029 206 -0.05 -468 imp:p=1 $ seat r1RW cushion
8030 201 -7.85 -469 imp:p=1 $ seat r1RW pan
8031 206 -0.05 -470 imp:p=1 $ seat r1RW back
8032 207 -0.9 -471 imp:p=1 $ seat r1RW shell
8033 206 -0.05 -472 imp:p=1 $ seat r2LW cushion
8034 201 -7.85 -473 imp:p=1 $ seat r2LW pan
8035 206 -0.05 -474 imp:p=1 $ seat r2LW back
8036 207 -0.9 -475 imp:p=1 $ seat r2LW shell
8037 206 -0.05 -476 imp:p=1 $ seat r2LA cushion
8038 201 -7.85 -477 imp:p=1 $ seat r2LA pan
8039 206 -0.05 -478 imp:p=1 $ seat r2LA back
8040 207 -0.9 -479 imp:p=1 $ seat r2LA shell
8041 206 -0.05 -480 imp:p=1 $ seat r2RA cushion
8042 201 -7.85 -481 imp:p=1 $ seat r2RA pan
8043 206 -0.05 -482 imp:p=1 $ seat r2RA back
8044 207 -0.9 -483 imp:p=1 $ seat r2RA shell
8045 206 -0.05 -484 imp:p=1 $ seat r2RW cushion
8046 201 -7.85 -485 imp:p=1 $ seat r2RW pan
8047 206 -0.05 -486 imp:p=1 $ seat r2RW back
8048 207 -0.9 -487 imp:p=1 $ seat r2RW shell
8049 206 -0.05 -488 imp:p=1 $ seat r3LW cushion
8050 201 -7.85 -489 imp:p=1 $ seat r3LW pan
8051 206 -0.05 -490 imp:p=1 $ seat r3LW back
8052 207 -0.9 -491 imp:p=1 $ seat r3LW shell
8053 206 -0.05 -492 imp:p=1 $ seat r3LA cushion
8054 201 -7.85 -493 imp:p=1 $ seat r3LA pan
8055 206 -0.05 -494 imp:p=1 $ seat r3LA back
8056 207 -0.9 -495 imp:p=1 $ seat r3LA shell
8057 206 -0.05 -496 imp:p=1 $ seat r3RA cushion
8058 201 -7.85 -497 imp:p=1 $ seat r3RA pan
8059 206 -0.05 -498 imp:p=1 $ seat r3RA back
8060 207 -0.9 -499 imp:p=1 $ seat r3RA shell
8061 206 -0.05 -500 imp:p=1 $ seat r3RW cushion
8062 201 -7.85 -501 imp:p=1 $ seat r3RW pan
8063 206 -0.05 -502 imp:p=1 $ seat r3RW back
8064 207 -0.9 -503 imp:p=1 $ seat r3RW shell
8065 206 -0.05 -504 imp:p=1 $ seat r4LW cushion
8066 201 -7.85 -505 imp:p=1 $ seat r4LW pan
8067 206 -0.05 -506 imp:p=1 $ seat r4LW back
8068 207 -0.9 -507 imp:p=1 $ seat r4LW shell
8069 206 -0.05 -508 imp:p=1 $ seat r4LA cushion
8070 201 -7.85 -509 imp:p=1 $ seat r4LA pan
8071 206 -0.05 -510 imp:p=1 $ seat r4LA back
8072 207 -0.9 -511 imp:p=1 $ seat r4LA shell
8073 206 -0.05 -512 imp:p=1 $ seat r4RA cushion
8074 201 -7.85 -513 imp:p=1 $ seat r4RA pan
8075 206 -0.05 -514 imp:p=1 $ seat r4RA back
8076 207 -0.9 -515 imp:p=1 $ seat r4RA shell
8077 206 -0.05 -516 imp:p=1 $ seat r4RW cushion
8078 201 -7.85 -517 imp:p=1 $ seat r4RW pan
8079 206 -0.05 -518 imp:p=1 $ seat r4RW back
8080 207 -0.9 -519 imp:p=1 $ seat r4RW shell
8081 206 -0.05 -520 imp:p=1 $ seat r5LW cushion
8082 201 -7.85 -521 imp:p=1 $ seat r5LW pan
8083 206 -0.05 -522 imp:p=1 $ seat r5LW back
8084 207 -0.9 -523 imp:p=1 $ seat r5LW shell
8085 206 -0.05 -524 imp:p=1 $ seat r5LA cushion
8086 201 -7.85 -525 imp:p=1 $ seat r5LA pan
8087 206 -0.05 -526 imp:p=1 $ seat r5LA back
8088 207 -0.9 -527 imp:p=1 $ seat r5LA shell
8089 206 -0.05 -528 imp:p=1 $ seat r5RA cushion
8090 201 -7.85 -529 imp:p=1 $ seat r5RA pan
8091 206 -0.05 -530 imp:p=1 $ seat r5RA back
8092 207 -0.9 -531 imp:p=1 $ seat r5RA shell
8093 206 -0.05 -532 imp:p=1 $ seat r5RW cushion
8094 201 -7.85 -533 imp:p=1 $ seat r5RW pan
8095 206 -0.05 -534 imp:p=1 $ seat r5RW back
8096 207 -0.9 -535 imp:p=1 $ seat r5RW shell
8097 206 -0.05 -536 imp:p=1 $ seat r6LW cushion
8098 201 -7.85 -537 imp:p=1 $ seat r6LW pan
8099 206 -0.05 -538 imp:p=1 $ seat r6LW back
8100 207 -0.9 -539 imp:p=1 $ seat r6LW shell
8101 206 -0.05 -540 imp:p=1 $ seat r6LA cushion
8102 201 -7.85 -541 imp:p=1 $ seat r6LA pan
8103 206 -0.05 -542 imp:p=1 $ seat r6LA back
8104 207 -0.9 -543 imp:p=1 $ seat r6LA shell
8105 206 -0.05 -544 imp:p=1 $ seat r6RA cushion
8106 201 -7.85 -545 imp:p=1 $ seat r6RA pan
8107 206 -0.05 -546 imp:p=1 $ seat r6RA back
8108 207 -0.9 -547 imp:p=1 $ seat r6RA shell
8109 206 -0.05 -548 imp:p=1 $ seat r6RW cushion
8110 201 -7.85 -549 imp:p=1 $ seat r6RW pan
8111 206 -0.05 -550 imp:p=1 $ seat r6RW back
8112 207 -0.9 -551 imp:p=1 $ seat r6RW shell
8113 200 -0.001205 -552 440 441 442 443 444 445 446 447 448 449 450 451 452
     453 454 455 imp:p=1 $ cabin air row 0
8114 200 -0.001205 -553 117 118 134 135 151 152 168 169 456 457 458 459 460
     461 462 463 464 465 466 467 468 469 470 471 imp:p=1 $ cabin air row 1
8115 200 -0.001205 -554 185 186 202 203 219 220 236 237 472 473 474 475 476
     477 478 479 480 481 482 483 484 485 486 487 imp:p=1 $ cabin air row 2
8116 200 -0.001205 -555 100 101 253 254 270 271 287 288 488 489 490 491 492
     493 494 495 496 497 498 499 500 501 502 503 imp:p=1 $ cabin air row 3
8117 200 -0.001205 -556 304 305 321 322 338 339 355 356 504 505 506 507 508
     509 510 511 512 513 514 515 516 517 518 519 imp:p=1 $ cabin air row 4
8118 200 -0.001205 -557 372 373 389 390 406 407 423 424 520 521 522 523 524
     525 526 527 528 529 530 531 532 533 534 535 imp:p=1 $ cabin air row 5
8119 200 -0.001205 -558 536 537 538 539 540 541 542 543 544 545 546 547 548
     549 550 551 imp:p=1 $ cabin air row 6
8120 200 -0.001205 -559 imp:p=1 $ cabin air front
8121 200 -0.001205 -560 imp:p=1 $ cabin air rear
8122 205 -1.4 -562 imp:p=1 $ floor vinyl
8123 204 -0.6 -563 imp:p=1 $ floor plywood
8124 201 -7.85 -564 imp:p=1 $ floor steel
8125 207 -0.9 -565 imp:p=1 $ roof panel
8126 200 -0.001205 -566 imp:p=1 $ roof gap
8127 202 -2.7 -567 imp:p=1 $ roof skin
8128 207 -0.9 -568 imp:p=1 $ front wall
8129 207 -0.9 -569 imp:p=1 $ rear wall
8130 207 -0.9 -570 imp:p=1 $ L panel low
8131 203 -2.5 -571 imp:p=1 $ L window
8132 207 -0.9 -572 imp:p=1 $ L panel up
8133 200 -0.001205 -573 imp:p=1 $ L gap
8134 202 -2.7 -574 imp:p=1 $ L skin
8135 207 -0.9 -575 imp:p=1 $ R panel low
8136 203 -2.5 -576 imp:p=1 $ R window
8137 207 -0.9 -577 imp:p=1 $ R panel up
8138 200 -0.001205 -578 imp:p=1 $ R gap
8139 202 -2.7 -579 imp:p=1 $ R skin
8140 200 -0.001205 -561 562 563 564 565 566 567 568 569 570 571 572 573 574
     575 576 577 578 579 552 553 554 555 556 557 558 559 560 imp:p=1
9998 200 -0.001205 -580 561 imp:p=1
9999 0 580 imp:p=0

c ============================== SURFACES
1 px 0.2137
2 px 0
3 py 0.2137
4 py 0
5 pz 0.8
6 pz 0
99 so 1.0e5
100 rpp 68.353 118.1471 -59.3607 -0.1638 38.501 136.101 $ envelope PAM_r3RW
101 rpp 78.1831 107.4621 -68.5498 -42.049 0.099 38.499 $ envelope PAM_r3RW
102 rpp 78.1861 107.459 -68.5468 -42.052 0.102 13.698 $ slab 0 PAM_r3RW
103 rpp 79.0409 105.9631 -53.3741 -43.7616 13.702 38.498 $ slab 1 PAM_r3RW
104 rpp 74.3396 110.8783 -54.87 -1.8764 38.502 43.298 $ slab 2 PAM_r3RW
105 rpp 73.2711 111.5194 -57.2207 -1.2353 43.302 48.098 $ slab 3 PAM_r3RW
106 rpp 73.2711 111.5194 -59.144 -1.0216 48.102 52.898 $ slab 4 PAM_r3RW
107 rpp 74.1258 111.0919 -59.3577 -1.0216 52.902 57.698 $ slab 5 PAM_r3RW
108 rpp 74.767 110.6645 -59.144 -1.449 57.702 62.498 $ slab 6 PAM_r3RW
109 rpp 72.6299 114.0837 -46.5357 -2.7312 62.502 68.098 $ slab 7 PAM_r3RW
110 rpp 69.8518 116.2208 -45.4672 -2.9449 68.102 72.898 $ slab 8 PAM_r3RW
111 rpp 68.7833 118.144 -32.6452 -1.0216 72.902 79.298 $ slab 9 PAM_r3RW
112 rpp 68.356 117.5029 -25.8068 -1.2353 79.302 88.098 $ slab 10 PAM_r3RW
113 rpp 68.356 117.5029 -24.5246 -0.1668 88.102 96.898 $ slab 11 PAM_r3RW
114 rpp 69.2108 117.0755 -21.5328 -0.1668 96.902 107.298 $ slab 12 PAM_r3RW
115 rpp 73.9121 114.0838 -25.3794 -2.7312 107.302 119.298 $ slab 13 PAM_r3RW
116 rpp 84.3834 102.7576 -27.3027 -3.1586 119.302 136.098 $ slab 14 PAM_r3RW
117 rpp -118.147 -68.3529 -219.3607 -160.1638 38.501 136.101 $ envelope TAM_r1LW
118 rpp -108.3169 -79.0379 -228.5498 -202.049 0.099 38.499 $ envelope TAM_r1LW
119 rpp -108.3139 -79.041 -228.5468 -202.052 0.102 13.698 $ slab 0 TAM_r1LW
120 rpp -107.4591 -80.5369 -213.3741 -203.7616 13.702 38.498 $ slab 1 TAM_r1LW
121 rpp -112.1604 -75.6217 -214.87 -161.8764 38.502 43.298 $ slab 2 TAM_r1LW
122 rpp -113.2289 -74.9806 -217.2207 -161.2353 43.302 48.098 $ slab 3 TAM_r1LW
123 rpp -113.2289 -74.9806 -219.144 -161.0216 48.102 52.898 $ slab 4 TAM_r1LW
124 rpp -112.3742 -75.4081 -219.3577 -161.0216 52.902 57.698 $ slab 5 TAM_r1LW
125 rpp -111.733 -75.8355 -219.144 -161.449 57.702 62.498 $ slab 6 TAM_r1LW
126 rpp -113.8701 -72.4163 -206.5357 -162.7312 62.502 68.098 $ slab 7 TAM_r1LW
127 rpp -116.6482 -70.2792 -205.4672 -162.9449 68.102 72.898 $ slab 8 TAM_r1LW
128 rpp -117.7167 -68.356 -192.6452 -161.0216 72.902 79.298 $ slab 9 TAM_r1LW
129 rpp -118.144 -68.9971 -185.8068 -161.2353 79.302 88.098 $ slab 10 TAM_r1LW
130 rpp -118.144 -68.9971 -184.5246 -160.1668 88.102 96.898 $ slab 11 TAM_r1LW
131 rpp -117.2892 -69.4245 -181.5328 -160.1668 96.902 107.298 $ slab 12 TAM_r1LW
132 rpp -112.5879 -72.4162 -185.3794 -162.7312 107.302 119.298 $ slab 13 TAM_r1L
133 rpp -102.1166 -83.7424 -187.3027 -163.1586 119.302 136.098 $ slab 14 TAM_r1L
134 rpp -67.647 -17.8529 -219.3607 -160.1638 38.501 136.101 $ envelope TAM_r1LA
135 rpp -57.8169 -28.538 -228.5498 -202.049 0.099 38.499 $ envelope TAM_r1LA
136 rpp -57.8139 -28.541 -228.5468 -202.052 0.102 13.698 $ slab 0 TAM_r1LA
137 rpp -56.959 -30.0369 -213.3741 -203.7616 13.702 38.498 $ slab 1 TAM_r1LA
138 rpp -61.6604 -25.1217 -214.87 -161.8764 38.502 43.298 $ slab 2 TAM_r1LA
139 rpp -62.7289 -24.4807 -217.2207 -161.2353 43.302 48.098 $ slab 3 TAM_r1LA
140 rpp -62.7289 -24.4807 -219.144 -161.0216 48.102 52.898 $ slab 4 TAM_r1LA
141 rpp -61.8742 -24.9081 -219.3577 -161.0216 52.902 57.698 $ slab 5 TAM_r1LA
142 rpp -61.233 -25.3355 -219.144 -161.449 57.702 62.498 $ slab 6 TAM_r1LA
143 rpp -63.37 -21.9163 -206.5357 -162.7312 62.502 68.098 $ slab 7 TAM_r1LA
144 rpp -66.1482 -19.7792 -205.4672 -162.9449 68.102 72.898 $ slab 8 TAM_r1LA
145 rpp -67.2167 -17.8559 -192.6452 -161.0216 72.902 79.298 $ slab 9 TAM_r1LA
146 rpp -67.644 -18.4971 -185.8068 -161.2353 79.302 88.098 $ slab 10 TAM_r1LA
147 rpp -67.644 -18.4971 -184.5246 -160.1668 88.102 96.898 $ slab 11 TAM_r1LA
148 rpp -66.7892 -18.9245 -181.5328 -160.1668 96.902 107.298 $ slab 12 TAM_r1LA
149 rpp -62.0879 -21.9162 -185.3794 -162.7312 107.302 119.298 $ slab 13 TAM_r1LA
150 rpp -51.6166 -33.2424 -187.3027 -163.1586 119.302 136.098 $ slab 14 TAM_r1LA
151 rpp 17.8529 67.6471 -219.3607 -160.1638 38.501 136.101 $ envelope TAM_r1RA
152 rpp 27.6832 56.962 -228.5498 -202.049 0.099 38.499 $ envelope TAM_r1RA
153 rpp 27.6862 56.959 -228.5468 -202.052 0.102 13.698 $ slab 0 TAM_r1RA
154 rpp 28.541 55.4631 -213.3741 -203.7616 13.702 38.498 $ slab 1 TAM_r1RA
155 rpp 23.8395 60.3783 -214.87 -161.8764 38.502 43.298 $ slab 2 TAM_r1RA
156 rpp 22.771 61.0193 -217.2207 -161.2353 43.302 48.098 $ slab 3 TAM_r1RA
157 rpp 22.771 61.0193 -219.144 -161.0216 48.102 52.898 $ slab 4 TAM_r1RA
158 rpp 23.6258 60.5919 -219.3577 -161.0216 52.902 57.698 $ slab 5 TAM_r1RA
159 rpp 24.267 60.1645 -219.144 -161.449 57.702 62.498 $ slab 6 TAM_r1RA
160 rpp 22.13 63.5837 -206.5357 -162.7312 62.502 68.098 $ slab 7 TAM_r1RA
161 rpp 19.3518 65.7208 -205.4672 -162.9449 68.102 72.898 $ slab 8 TAM_r1RA
162 rpp 18.2833 67.644 -192.6452 -161.0216 72.902 79.298 $ slab 9 TAM_r1RA
163 rpp 17.8559 67.0029 -185.8068 -161.2353 79.302 88.098 $ slab 10 TAM_r1RA
164 rpp 17.8559 67.0029 -184.5246 -160.1668 88.102 96.898 $ slab 11 TAM_r1RA
165 rpp 18.7108 66.5755 -181.5328 -160.1668 96.902 107.298 $ slab 12 TAM_r1RA
166 rpp 23.4122 63.5838 -185.3794 -162.7312 107.302 119.298 $ slab 13 TAM_r1RA
167 rpp 33.8834 52.2576 -187.3027 -163.1586 119.302 136.098 $ slab 14 TAM_r1RA
168 rpp 68.353 118.1471 -219.3607 -160.1638 38.501 136.101 $ envelope TAM_r1RW
169 rpp 78.1831 107.4621 -228.5498 -202.049 0.099 38.499 $ envelope TAM_r1RW
170 rpp 78.1861 107.459 -228.5468 -202.052 0.102 13.698 $ slab 0 TAM_r1RW
171 rpp 79.0409 105.9631 -213.3741 -203.7616 13.702 38.498 $ slab 1 TAM_r1RW
172 rpp 74.3396 110.8783 -214.87 -161.8764 38.502 43.298 $ slab 2 TAM_r1RW
173 rpp 73.2711 111.5194 -217.2207 -161.2353 43.302 48.098 $ slab 3 TAM_r1RW
174 rpp 73.2711 111.5194 -219.144 -161.0216 48.102 52.898 $ slab 4 TAM_r1RW
175 rpp 74.1258 111.0919 -219.3577 -161.0216 52.902 57.698 $ slab 5 TAM_r1RW
176 rpp 74.767 110.6645 -219.144 -161.449 57.702 62.498 $ slab 6 TAM_r1RW
177 rpp 72.6299 114.0837 -206.5357 -162.7312 62.502 68.098 $ slab 7 TAM_r1RW
178 rpp 69.8518 116.2208 -205.4672 -162.9449 68.102 72.898 $ slab 8 TAM_r1RW
179 rpp 68.7833 118.144 -192.6452 -161.0216 72.902 79.298 $ slab 9 TAM_r1RW
180 rpp 68.356 117.5029 -185.8068 -161.2353 79.302 88.098 $ slab 10 TAM_r1RW
181 rpp 68.356 117.5029 -184.5246 -160.1668 88.102 96.898 $ slab 11 TAM_r1RW
182 rpp 69.2108 117.0755 -181.5328 -160.1668 96.902 107.298 $ slab 12 TAM_r1RW
183 rpp 73.9121 114.0838 -185.3794 -162.7312 107.302 119.298 $ slab 13 TAM_r1RW
184 rpp 84.3834 102.7576 -187.3027 -163.1586 119.302 136.098 $ slab 14 TAM_r1RW
185 rpp -118.147 -68.3529 -139.3607 -80.1638 38.501 136.101 $ envelope TAM_r2LW
186 rpp -108.3169 -79.0379 -148.5498 -122.049 0.099 38.499 $ envelope TAM_r2LW
187 rpp -108.3139 -79.041 -148.5468 -122.052 0.102 13.698 $ slab 0 TAM_r2LW
188 rpp -107.4591 -80.5369 -133.3741 -123.7616 13.702 38.498 $ slab 1 TAM_r2LW
189 rpp -112.1604 -75.6217 -134.87 -81.8764 38.502 43.298 $ slab 2 TAM_r2LW
190 rpp -113.2289 -74.9806 -137.2207 -81.2353 43.302 48.098 $ slab 3 TAM_r2LW
191 rpp -113.2289 -74.9806 -139.144 -81.0216 48.102 52.898 $ slab 4 TAM_r2LW
192 rpp -112.3742 -75.4081 -139.3577 -81.0216 52.902 57.698 $ slab 5 TAM_r2LW
193 rpp -111.733 -75.8355 -139.144 -81.449 57.702 62.498 $ slab 6 TAM_r2LW
194 rpp -113.8701 -72.4163 -126.5357 -82.7312 62.502 68.098 $ slab 7 TAM_r2LW
195 rpp -116.6482 -70.2792 -125.4672 -82.9449 68.102 72.898 $ slab 8 TAM_r2LW
196 rpp -117.7167 -68.356 -112.6452 -81.0216 72.902 79.298 $ slab 9 TAM_r2LW
197 rpp -118.144 -68.9971 -105.8068 -81.2353 79.302 88.098 $ slab 10 TAM_r2LW
198 rpp -118.144 -68.9971 -104.5246 -80.1668 88.102 96.898 $ slab 11 TAM_r2LW
199 rpp -117.2892 -69.4245 -101.5328 -80.1668 96.902 107.298 $ slab 12 TAM_r2LW
200 rpp -112.5879 -72.4162 -105.3794 -82.7312 107.302 119.298 $ slab 13 TAM_r2LW
201 rpp -102.1166 -83.7424 -107.3027 -83.1586 119.302 136.098 $ slab 14 TAM_r2LW
202 rpp -67.647 -17.8529 -139.3607 -80.1638 38.501 136.101 $ envelope TAM_r2LA
203 rpp -57.8169 -28.538 -148.5498 -122.049 0.099 38.499 $ envelope TAM_r2LA
204 rpp -57.8139 -28.541 -148.5468 -122.052 0.102 13.698 $ slab 0 TAM_r2LA
205 rpp -56.959 -30.0369 -133.3741 -123.7616 13.702 38.498 $ slab 1 TAM_r2LA
206 rpp -61.6604 -25.1217 -134.87 -81.8764 38.502 43.298 $ slab 2 TAM_r2LA
207 rpp -62.7289 -24.4807 -137.2207 -81.2353 43.302 48.098 $ slab 3 TAM_r2LA
208 rpp -62.7289 -24.4807 -139.144 -81.0216 48.102 52.898 $ slab 4 TAM_r2LA
209 rpp -61.8742 -24.9081 -139.3577 -81.0216 52.902 57.698 $ slab 5 TAM_r2LA
210 rpp -61.233 -25.3355 -139.144 -81.449 57.702 62.498 $ slab 6 TAM_r2LA
211 rpp -63.37 -21.9163 -126.5357 -82.7312 62.502 68.098 $ slab 7 TAM_r2LA
212 rpp -66.1482 -19.7792 -125.4672 -82.9449 68.102 72.898 $ slab 8 TAM_r2LA
213 rpp -67.2167 -17.8559 -112.6452 -81.0216 72.902 79.298 $ slab 9 TAM_r2LA
214 rpp -67.644 -18.4971 -105.8068 -81.2353 79.302 88.098 $ slab 10 TAM_r2LA
215 rpp -67.644 -18.4971 -104.5246 -80.1668 88.102 96.898 $ slab 11 TAM_r2LA
216 rpp -66.7892 -18.9245 -101.5328 -80.1668 96.902 107.298 $ slab 12 TAM_r2LA
217 rpp -62.0879 -21.9162 -105.3794 -82.7312 107.302 119.298 $ slab 13 TAM_r2LA
218 rpp -51.6166 -33.2424 -107.3027 -83.1586 119.302 136.098 $ slab 14 TAM_r2LA
219 rpp 17.8529 67.6471 -139.3607 -80.1638 38.501 136.101 $ envelope TAM_r2RA
220 rpp 27.6832 56.962 -148.5498 -122.049 0.099 38.499 $ envelope TAM_r2RA
221 rpp 27.6862 56.959 -148.5468 -122.052 0.102 13.698 $ slab 0 TAM_r2RA
222 rpp 28.541 55.4631 -133.3741 -123.7616 13.702 38.498 $ slab 1 TAM_r2RA
223 rpp 23.8395 60.3783 -134.87 -81.8764 38.502 43.298 $ slab 2 TAM_r2RA
224 rpp 22.771 61.0193 -137.2207 -81.2353 43.302 48.098 $ slab 3 TAM_r2RA
225 rpp 22.771 61.0193 -139.144 -81.0216 48.102 52.898 $ slab 4 TAM_r2RA
226 rpp 23.6258 60.5919 -139.3577 -81.0216 52.902 57.698 $ slab 5 TAM_r2RA
227 rpp 24.267 60.1645 -139.144 -81.449 57.702 62.498 $ slab 6 TAM_r2RA
228 rpp 22.13 63.5837 -126.5357 -82.7312 62.502 68.098 $ slab 7 TAM_r2RA
229 rpp 19.3518 65.7208 -125.4672 -82.9449 68.102 72.898 $ slab 8 TAM_r2RA
230 rpp 18.2833 67.644 -112.6452 -81.0216 72.902 79.298 $ slab 9 TAM_r2RA
231 rpp 17.8559 67.0029 -105.8068 -81.2353 79.302 88.098 $ slab 10 TAM_r2RA
232 rpp 17.8559 67.0029 -104.5246 -80.1668 88.102 96.898 $ slab 11 TAM_r2RA
233 rpp 18.7108 66.5755 -101.5328 -80.1668 96.902 107.298 $ slab 12 TAM_r2RA
234 rpp 23.4122 63.5838 -105.3794 -82.7312 107.302 119.298 $ slab 13 TAM_r2RA
235 rpp 33.8834 52.2576 -107.3027 -83.1586 119.302 136.098 $ slab 14 TAM_r2RA
236 rpp 68.353 118.1471 -139.3607 -80.1638 38.501 136.101 $ envelope TAM_r2RW
237 rpp 78.1831 107.4621 -148.5498 -122.049 0.099 38.499 $ envelope TAM_r2RW
238 rpp 78.1861 107.459 -148.5468 -122.052 0.102 13.698 $ slab 0 TAM_r2RW
239 rpp 79.0409 105.9631 -133.3741 -123.7616 13.702 38.498 $ slab 1 TAM_r2RW
240 rpp 74.3396 110.8783 -134.87 -81.8764 38.502 43.298 $ slab 2 TAM_r2RW
241 rpp 73.2711 111.5194 -137.2207 -81.2353 43.302 48.098 $ slab 3 TAM_r2RW
242 rpp 73.2711 111.5194 -139.144 -81.0216 48.102 52.898 $ slab 4 TAM_r2RW
243 rpp 74.1258 111.0919 -139.3577 -81.0216 52.902 57.698 $ slab 5 TAM_r2RW
244 rpp 74.767 110.6645 -139.144 -81.449 57.702 62.498 $ slab 6 TAM_r2RW
245 rpp 72.6299 114.0837 -126.5357 -82.7312 62.502 68.098 $ slab 7 TAM_r2RW
246 rpp 69.8518 116.2208 -125.4672 -82.9449 68.102 72.898 $ slab 8 TAM_r2RW
247 rpp 68.7833 118.144 -112.6452 -81.0216 72.902 79.298 $ slab 9 TAM_r2RW
248 rpp 68.356 117.5029 -105.8068 -81.2353 79.302 88.098 $ slab 10 TAM_r2RW
249 rpp 68.356 117.5029 -104.5246 -80.1668 88.102 96.898 $ slab 11 TAM_r2RW
250 rpp 69.2108 117.0755 -101.5328 -80.1668 96.902 107.298 $ slab 12 TAM_r2RW
251 rpp 73.9121 114.0838 -105.3794 -82.7312 107.302 119.298 $ slab 13 TAM_r2RW
252 rpp 84.3834 102.7576 -107.3027 -83.1586 119.302 136.098 $ slab 14 TAM_r2RW
253 rpp -118.147 -68.3529 -59.3607 -0.1638 38.501 136.101 $ envelope TAM_r3LW
254 rpp -108.3169 -79.0379 -68.5498 -42.049 0.099 38.499 $ envelope TAM_r3LW
255 rpp -108.3139 -79.041 -68.5468 -42.052 0.102 13.698 $ slab 0 TAM_r3LW
256 rpp -107.4591 -80.5369 -53.3741 -43.7616 13.702 38.498 $ slab 1 TAM_r3LW
257 rpp -112.1604 -75.6217 -54.87 -1.8764 38.502 43.298 $ slab 2 TAM_r3LW
258 rpp -113.2289 -74.9806 -57.2207 -1.2353 43.302 48.098 $ slab 3 TAM_r3LW
259 rpp -113.2289 -74.9806 -59.144 -1.0216 48.102 52.898 $ slab 4 TAM_r3LW
260 rpp -112.3742 -75.4081 -59.3577 -1.0216 52.902 57.698 $ slab 5 TAM_r3LW
261 rpp -111.733 -75.8355 -59.144 -1.449 57.702 62.498 $ slab 6 TAM_r3LW
262 rpp -113.8701 -72.4163 -46.5357 -2.7312 62.502 68.098 $ slab 7 TAM_r3LW
263 rpp -116.6482 -70.2792 -45.4672 -2.9449 68.102 72.898 $ slab 8 TAM_r3LW
264 rpp -117.7167 -68.356 -32.6452 -1.0216 72.902 79.298 $ slab 9 TAM_r3LW
265 rpp -118.144 -68.9971 -25.8068 -1.2353 79.302 88.098 $ slab 10 TAM_r3LW
266 rpp -118.144 -68.9971 -24.5246 -0.1668 88.102 96.898 $ slab 11 TAM_r3LW
267 rpp -117.2892 -69.4245 -21.5328 -0.1668 96.902 107.298 $ slab 12 TAM_r3LW
268 rpp -112.5879 -72.4162 -25.3794 -2.7312 107.302 119.298 $ slab 13 TAM_r3LW
269 rpp -102.1166 -83.7424 -27.3027 -3.1586 119.302 136.098 $ slab 14 TAM_r3LW
270 rpp -67.647 -17.8529 -59.3607 -0.1638 38.501 136.101 $ envelope TAM_r3LA
271 rpp -57.8169 -28.538 -68.5498 -42.049 0.099 38.499 $ envelope TAM_r3LA
272 rpp -57.8139 -28.541 -68.5468 -42.052 0.102 13.698 $ slab 0 TAM_r3LA
273 rpp -56.959 -30.0369 -53.3741 -43.7616 13.702 38.498 $ slab 1 TAM_r3LA
274 rpp -61.6604 -25.1217 -54.87 -1.8764 38.502 43.298 $ slab 2 TAM_r3LA
275 rpp -62.7289 -24.4807 -57.2207 -1.2353 43.302 48.098 $ slab 3 TAM_r3LA
276 rpp -62.7289 -24.4807 -59.144 -1.0216 48.102 52.898 $ slab 4 TAM_r3LA
277 rpp -61.8742 -24.9081 -59.3577 -1.0216 52.902 57.698 $ slab 5 TAM_r3LA
278 rpp -61.233 -25.3355 -59.144 -1.449 57.702 62.498 $ slab 6 TAM_r3LA
279 rpp -63.37 -21.9163 -46.5357 -2.7312 62.502 68.098 $ slab 7 TAM_r3LA
280 rpp -66.1482 -19.7792 -45.4672 -2.9449 68.102 72.898 $ slab 8 TAM_r3LA
281 rpp -67.2167 -17.8559 -32.6452 -1.0216 72.902 79.298 $ slab 9 TAM_r3LA
282 rpp -67.644 -18.4971 -25.8068 -1.2353 79.302 88.098 $ slab 10 TAM_r3LA
283 rpp -67.644 -18.4971 -24.5246 -0.1668 88.102 96.898 $ slab 11 TAM_r3LA
284 rpp -66.7892 -18.9245 -21.5328 -0.1668 96.902 107.298 $ slab 12 TAM_r3LA
285 rpp -62.0879 -21.9162 -25.3794 -2.7312 107.302 119.298 $ slab 13 TAM_r3LA
286 rpp -51.6166 -33.2424 -27.3027 -3.1586 119.302 136.098 $ slab 14 TAM_r3LA
287 rpp 17.8529 67.6471 -59.3607 -0.1638 38.501 136.101 $ envelope TAM_r3RA
288 rpp 27.6832 56.962 -68.5498 -42.049 0.099 38.499 $ envelope TAM_r3RA
289 rpp 27.6862 56.959 -68.5468 -42.052 0.102 13.698 $ slab 0 TAM_r3RA
290 rpp 28.541 55.4631 -53.3741 -43.7616 13.702 38.498 $ slab 1 TAM_r3RA
291 rpp 23.8395 60.3783 -54.87 -1.8764 38.502 43.298 $ slab 2 TAM_r3RA
292 rpp 22.771 61.0193 -57.2207 -1.2353 43.302 48.098 $ slab 3 TAM_r3RA
293 rpp 22.771 61.0193 -59.144 -1.0216 48.102 52.898 $ slab 4 TAM_r3RA
294 rpp 23.6258 60.5919 -59.3577 -1.0216 52.902 57.698 $ slab 5 TAM_r3RA
295 rpp 24.267 60.1645 -59.144 -1.449 57.702 62.498 $ slab 6 TAM_r3RA
296 rpp 22.13 63.5837 -46.5357 -2.7312 62.502 68.098 $ slab 7 TAM_r3RA
297 rpp 19.3518 65.7208 -45.4672 -2.9449 68.102 72.898 $ slab 8 TAM_r3RA
298 rpp 18.2833 67.644 -32.6452 -1.0216 72.902 79.298 $ slab 9 TAM_r3RA
299 rpp 17.8559 67.0029 -25.8068 -1.2353 79.302 88.098 $ slab 10 TAM_r3RA
300 rpp 17.8559 67.0029 -24.5246 -0.1668 88.102 96.898 $ slab 11 TAM_r3RA
301 rpp 18.7108 66.5755 -21.5328 -0.1668 96.902 107.298 $ slab 12 TAM_r3RA
302 rpp 23.4122 63.5838 -25.3794 -2.7312 107.302 119.298 $ slab 13 TAM_r3RA
303 rpp 33.8834 52.2576 -27.3027 -3.1586 119.302 136.098 $ slab 14 TAM_r3RA
304 rpp -118.147 -68.3529 20.6393 79.8362 38.501 136.101 $ envelope TAM_r4LW
305 rpp -108.3169 -79.0379 11.4502 37.951 0.099 38.499 $ envelope TAM_r4LW
306 rpp -108.3139 -79.041 11.4532 37.948 0.102 13.698 $ slab 0 TAM_r4LW
307 rpp -107.4591 -80.5369 26.6259 36.2384 13.702 38.498 $ slab 1 TAM_r4LW
308 rpp -112.1604 -75.6217 25.13 78.1236 38.502 43.298 $ slab 2 TAM_r4LW
309 rpp -113.2289 -74.9806 22.7793 78.7647 43.302 48.098 $ slab 3 TAM_r4LW
310 rpp -113.2289 -74.9806 20.856 78.9784 48.102 52.898 $ slab 4 TAM_r4LW
311 rpp -112.3742 -75.4081 20.6423 78.9784 52.902 57.698 $ slab 5 TAM_r4LW
312 rpp -111.733 -75.8355 20.856 78.551 57.702 62.498 $ slab 6 TAM_r4LW
313 rpp -113.8701 -72.4163 33.4643 77.2688 62.502 68.098 $ slab 7 TAM_r4LW
314 rpp -116.6482 -70.2792 34.5328 77.0551 68.102 72.898 $ slab 8 TAM_r4LW
315 rpp -117.7167 -68.356 47.3548 78.9784 72.902 79.298 $ slab 9 TAM_r4LW
316 rpp -118.144 -68.9971 54.1932 78.7647 79.302 88.098 $ slab 10 TAM_r4LW
317 rpp -118.144 -68.9971 55.4754 79.8332 88.102 96.898 $ slab 11 TAM_r4LW
318 rpp -117.2892 -69.4245 58.4672 79.8332 96.902 107.298 $ slab 12 TAM_r4LW
319 rpp -112.5879 -72.4162 54.6206 77.2688 107.302 119.298 $ slab 13 TAM_r4LW
320 rpp -102.1166 -83.7424 52.6973 76.8414 119.302 136.098 $ slab 14 TAM_r4LW
321 rpp -67.647 -17.8529 20.6393 79.8362 38.501 136.101 $ envelope TAM_r4LA
322 rpp -57.8169 -28.538 11.4502 37.951 0.099 38.499 $ envelope TAM_r4LA
323 rpp -57.8139 -28.541 11.4532 37.948 0.102 13.698 $ slab 0 TAM_r4LA
324 rpp -56.959 -30.0369 26.6259 36.2384 13.702 38.498 $ slab 1 TAM_r4LA
325 rpp -61.6604 -25.1217 25.13 78.1236 38.502 43.298 $ slab 2 TAM_r4LA
326 rpp -62.7289 -24.4807 22.7793 78.7647 43.302 48.098 $ slab 3 TAM_r4LA
327 rpp -62.7289 -24.4807 20.856 78.9784 48.102 52.898 $ slab 4 TAM_r4LA
328 rpp -61.8742 -24.9081 20.6423 78.9784 52.902 57.698 $ slab 5 TAM_r4LA
329 rpp -61.233 -25.3355 20.856 78.551 57.702 62.498 $ slab 6 TAM_r4LA
330 rpp -63.37 -21.9163 33.4643 77.2688 62.502 68.098 $ slab 7 TAM_r4LA
331 rpp -66.1482 -19.7792 34.5328 77.0551 68.102 72.898 $ slab 8 TAM_r4LA
332 rpp -67.2167 -17.8559 47.3548 78.9784 72.902 79.298 $ slab 9 TAM_r4LA
333 rpp -67.644 -18.4971 54.1932 78.7647 79.302 88.098 $ slab 10 TAM_r4LA
334 rpp -67.644 -18.4971 55.4754 79.8332 88.102 96.898 $ slab 11 TAM_r4LA
335 rpp -66.7892 -18.9245 58.4672 79.8332 96.902 107.298 $ slab 12 TAM_r4LA
336 rpp -62.0879 -21.9162 54.6206 77.2688 107.302 119.298 $ slab 13 TAM_r4LA
337 rpp -51.6166 -33.2424 52.6973 76.8414 119.302 136.098 $ slab 14 TAM_r4LA
338 rpp 17.8529 67.6471 20.6393 79.8362 38.501 136.101 $ envelope TAM_r4RA
339 rpp 27.6832 56.962 11.4502 37.951 0.099 38.499 $ envelope TAM_r4RA
340 rpp 27.6862 56.959 11.4532 37.948 0.102 13.698 $ slab 0 TAM_r4RA
341 rpp 28.541 55.4631 26.6259 36.2384 13.702 38.498 $ slab 1 TAM_r4RA
342 rpp 23.8395 60.3783 25.13 78.1236 38.502 43.298 $ slab 2 TAM_r4RA
343 rpp 22.771 61.0193 22.7793 78.7647 43.302 48.098 $ slab 3 TAM_r4RA
344 rpp 22.771 61.0193 20.856 78.9784 48.102 52.898 $ slab 4 TAM_r4RA
345 rpp 23.6258 60.5919 20.6423 78.9784 52.902 57.698 $ slab 5 TAM_r4RA
346 rpp 24.267 60.1645 20.856 78.551 57.702 62.498 $ slab 6 TAM_r4RA
347 rpp 22.13 63.5837 33.4643 77.2688 62.502 68.098 $ slab 7 TAM_r4RA
348 rpp 19.3518 65.7208 34.5328 77.0551 68.102 72.898 $ slab 8 TAM_r4RA
349 rpp 18.2833 67.644 47.3548 78.9784 72.902 79.298 $ slab 9 TAM_r4RA
350 rpp 17.8559 67.0029 54.1932 78.7647 79.302 88.098 $ slab 10 TAM_r4RA
351 rpp 17.8559 67.0029 55.4754 79.8332 88.102 96.898 $ slab 11 TAM_r4RA
352 rpp 18.7108 66.5755 58.4672 79.8332 96.902 107.298 $ slab 12 TAM_r4RA
353 rpp 23.4122 63.5838 54.6206 77.2688 107.302 119.298 $ slab 13 TAM_r4RA
354 rpp 33.8834 52.2576 52.6973 76.8414 119.302 136.098 $ slab 14 TAM_r4RA
355 rpp 68.353 118.1471 20.6393 79.8362 38.501 136.101 $ envelope TAM_r4RW
356 rpp 78.1831 107.4621 11.4502 37.951 0.099 38.499 $ envelope TAM_r4RW
357 rpp 78.1861 107.459 11.4532 37.948 0.102 13.698 $ slab 0 TAM_r4RW
358 rpp 79.0409 105.9631 26.6259 36.2384 13.702 38.498 $ slab 1 TAM_r4RW
359 rpp 74.3396 110.8783 25.13 78.1236 38.502 43.298 $ slab 2 TAM_r4RW
360 rpp 73.2711 111.5194 22.7793 78.7647 43.302 48.098 $ slab 3 TAM_r4RW
361 rpp 73.2711 111.5194 20.856 78.9784 48.102 52.898 $ slab 4 TAM_r4RW
362 rpp 74.1258 111.0919 20.6423 78.9784 52.902 57.698 $ slab 5 TAM_r4RW
363 rpp 74.767 110.6645 20.856 78.551 57.702 62.498 $ slab 6 TAM_r4RW
364 rpp 72.6299 114.0837 33.4643 77.2688 62.502 68.098 $ slab 7 TAM_r4RW
365 rpp 69.8518 116.2208 34.5328 77.0551 68.102 72.898 $ slab 8 TAM_r4RW
366 rpp 68.7833 118.144 47.3548 78.9784 72.902 79.298 $ slab 9 TAM_r4RW
367 rpp 68.356 117.5029 54.1932 78.7647 79.302 88.098 $ slab 10 TAM_r4RW
368 rpp 68.356 117.5029 55.4754 79.8332 88.102 96.898 $ slab 11 TAM_r4RW
369 rpp 69.2108 117.0755 58.4672 79.8332 96.902 107.298 $ slab 12 TAM_r4RW
370 rpp 73.9121 114.0838 54.6206 77.2688 107.302 119.298 $ slab 13 TAM_r4RW
371 rpp 84.3834 102.7576 52.6973 76.8414 119.302 136.098 $ slab 14 TAM_r4RW
372 rpp -118.147 -68.3529 100.6393 159.8362 38.501 136.101 $ envelope TAM_r5LW
373 rpp -108.3169 -79.0379 91.4502 117.951 0.099 38.499 $ envelope TAM_r5LW
374 rpp -108.3139 -79.041 91.4532 117.948 0.102 13.698 $ slab 0 TAM_r5LW
375 rpp -107.4591 -80.5369 106.6259 116.2384 13.702 38.498 $ slab 1 TAM_r5LW
376 rpp -112.1604 -75.6217 105.13 158.1236 38.502 43.298 $ slab 2 TAM_r5LW
377 rpp -113.2289 -74.9806 102.7793 158.7647 43.302 48.098 $ slab 3 TAM_r5LW
378 rpp -113.2289 -74.9806 100.856 158.9784 48.102 52.898 $ slab 4 TAM_r5LW
379 rpp -112.3742 -75.4081 100.6423 158.9784 52.902 57.698 $ slab 5 TAM_r5LW
380 rpp -111.733 -75.8355 100.856 158.551 57.702 62.498 $ slab 6 TAM_r5LW
381 rpp -113.8701 -72.4163 113.4643 157.2688 62.502 68.098 $ slab 7 TAM_r5LW
382 rpp -116.6482 -70.2792 114.5328 157.0551 68.102 72.898 $ slab 8 TAM_r5LW
383 rpp -117.7167 -68.356 127.3548 158.9784 72.902 79.298 $ slab 9 TAM_r5LW
384 rpp -118.144 -68.9971 134.1932 158.7647 79.302 88.098 $ slab 10 TAM_r5LW
385 rpp -118.144 -68.9971 135.4754 159.8332 88.102 96.898 $ slab 11 TAM_r5LW
386 rpp -117.2892 -69.4245 138.4672 159.8332 96.902 107.298 $ slab 12 TAM_r5LW
387 rpp -112.5879 -72.4162 134.6206 157.2688 107.302 119.298 $ slab 13 TAM_r5LW
388 rpp -102.1166 -83.7424 132.6973 156.8414 119.302 136.098 $ slab 14 TAM_r5LW
389 rpp -67.647 -17.8529 100.6393 159.8362 38.501 136.101 $ envelope TAM_r5LA
390 rpp -57.8169 -28.538 91.4502 117.951 0.099 38.499 $ envelope TAM_r5LA
391 rpp -57.8139 -28.541 91.4532 117.948 0.102 13.698 $ slab 0 TAM_r5LA
392 rpp -56.959 -30.0369 106.6259 116.2384 13.702 38.498 $ slab 1 TAM_r5LA
393 rpp -61.6604 -25.1217 105.13 158.1236 38.502 43.298 $ slab 2 TAM_r5LA
394 rpp -62.7289 -24.4807 102.7793 158.7647 43.302 48.098 $ slab 3 TAM_r5LA
395 rpp -62.7289 -24.4807 100.856 158.9784 48.102 52.898 $ slab 4 TAM_r5LA
396 rpp -61.8742 -24.9081 100.6423 158.9784 52.902 57.698 $ slab 5 TAM_r5LA
397 rpp -61.233 -25.3355 100.856 158.551 57.702 62.498 $ slab 6 TAM_r5LA
398 rpp -63.37 -21.9163 113.4643 157.2688 62.502 68.098 $ slab 7 TAM_r5LA
399 rpp -66.1482 -19.7792 114.5328 157.0551 68.102 72.898 $ slab 8 TAM_r5LA
400 rpp -67.2167 -17.8559 127.3548 158.9784 72.902 79.298 $ slab 9 TAM_r5LA
401 rpp -67.644 -18.4971 134.1932 158.7647 79.302 88.098 $ slab 10 TAM_r5LA
402 rpp -67.644 -18.4971 135.4754 159.8332 88.102 96.898 $ slab 11 TAM_r5LA
403 rpp -66.7892 -18.9245 138.4672 159.8332 96.902 107.298 $ slab 12 TAM_r5LA
404 rpp -62.0879 -21.9162 134.6206 157.2688 107.302 119.298 $ slab 13 TAM_r5LA
405 rpp -51.6166 -33.2424 132.6973 156.8414 119.302 136.098 $ slab 14 TAM_r5LA
406 rpp 17.8529 67.6471 100.6393 159.8362 38.501 136.101 $ envelope TAM_r5RA
407 rpp 27.6832 56.962 91.4502 117.951 0.099 38.499 $ envelope TAM_r5RA
408 rpp 27.6862 56.959 91.4532 117.948 0.102 13.698 $ slab 0 TAM_r5RA
409 rpp 28.541 55.4631 106.6259 116.2384 13.702 38.498 $ slab 1 TAM_r5RA
410 rpp 23.8395 60.3783 105.13 158.1236 38.502 43.298 $ slab 2 TAM_r5RA
411 rpp 22.771 61.0193 102.7793 158.7647 43.302 48.098 $ slab 3 TAM_r5RA
412 rpp 22.771 61.0193 100.856 158.9784 48.102 52.898 $ slab 4 TAM_r5RA
413 rpp 23.6258 60.5919 100.6423 158.9784 52.902 57.698 $ slab 5 TAM_r5RA
414 rpp 24.267 60.1645 100.856 158.551 57.702 62.498 $ slab 6 TAM_r5RA
415 rpp 22.13 63.5837 113.4643 157.2688 62.502 68.098 $ slab 7 TAM_r5RA
416 rpp 19.3518 65.7208 114.5328 157.0551 68.102 72.898 $ slab 8 TAM_r5RA
417 rpp 18.2833 67.644 127.3548 158.9784 72.902 79.298 $ slab 9 TAM_r5RA
418 rpp 17.8559 67.0029 134.1932 158.7647 79.302 88.098 $ slab 10 TAM_r5RA
419 rpp 17.8559 67.0029 135.4754 159.8332 88.102 96.898 $ slab 11 TAM_r5RA
420 rpp 18.7108 66.5755 138.4672 159.8332 96.902 107.298 $ slab 12 TAM_r5RA
421 rpp 23.4122 63.5838 134.6206 157.2688 107.302 119.298 $ slab 13 TAM_r5RA
422 rpp 33.8834 52.2576 132.6973 156.8414 119.302 136.098 $ slab 14 TAM_r5RA
423 rpp 68.353 118.1471 100.6393 159.8362 38.501 136.101 $ envelope TAM_r5RW
424 rpp 78.1831 107.4621 91.4502 117.951 0.099 38.499 $ envelope TAM_r5RW
425 rpp 78.1861 107.459 91.4532 117.948 0.102 13.698 $ slab 0 TAM_r5RW
426 rpp 79.0409 105.9631 106.6259 116.2384 13.702 38.498 $ slab 1 TAM_r5RW
427 rpp 74.3396 110.8783 105.13 158.1236 38.502 43.298 $ slab 2 TAM_r5RW
428 rpp 73.2711 111.5194 102.7793 158.7647 43.302 48.098 $ slab 3 TAM_r5RW
429 rpp 73.2711 111.5194 100.856 158.9784 48.102 52.898 $ slab 4 TAM_r5RW
430 rpp 74.1258 111.0919 100.6423 158.9784 52.902 57.698 $ slab 5 TAM_r5RW
431 rpp 74.767 110.6645 100.856 158.551 57.702 62.498 $ slab 6 TAM_r5RW
432 rpp 72.6299 114.0837 113.4643 157.2688 62.502 68.098 $ slab 7 TAM_r5RW
433 rpp 69.8518 116.2208 114.5328 157.0551 68.102 72.898 $ slab 8 TAM_r5RW
434 rpp 68.7833 118.144 127.3548 158.9784 72.902 79.298 $ slab 9 TAM_r5RW
435 rpp 68.356 117.5029 134.1932 158.7647 79.302 88.098 $ slab 10 TAM_r5RW
436 rpp 68.356 117.5029 135.4754 159.8332 88.102 96.898 $ slab 11 TAM_r5RW
437 rpp 69.2108 117.0755 138.4672 159.8332 96.902 107.298 $ slab 12 TAM_r5RW
438 rpp 73.9121 114.0838 134.6206 157.2688 107.302 119.298 $ slab 13 TAM_r5RW
439 rpp 84.3834 102.7576 132.6973 156.8414 119.302 136.098 $ slab 14 TAM_r5RW
440 rpp -115.75 -70.75 -282 -240 28.5 38.5 $ seat r0LW cushion
441 rpp -115.75 -70.75 -282 -240 28.3 28.5 $ seat r0LW pan
442 rpp -115.75 -70.75 -240 -232 38.5 103.5 $ seat r0LW back
443 rpp -115.75 -70.75 -232 -231 38.5 103.5 $ seat r0LW shell
444 rpp -65.25 -20.25 -282 -240 28.5 38.5 $ seat r0LA cushion
445 rpp -65.25 -20.25 -282 -240 28.3 28.5 $ seat r0LA pan
446 rpp -65.25 -20.25 -240 -232 38.5 103.5 $ seat r0LA back
447 rpp -65.25 -20.25 -232 -231 38.5 103.5 $ seat r0LA shell
448 rpp 20.25 65.25 -282 -240 28.5 38.5 $ seat r0RA cushion
449 rpp 20.25 65.25 -282 -240 28.3 28.5 $ seat r0RA pan
450 rpp 20.25 65.25 -240 -232 38.5 103.5 $ seat r0RA back
451 rpp 20.25 65.25 -232 -231 38.5 103.5 $ seat r0RA shell
452 rpp 70.75 115.75 -282 -240 28.5 38.5 $ seat r0RW cushion
453 rpp 70.75 115.75 -282 -240 28.3 28.5 $ seat r0RW pan
454 rpp 70.75 115.75 -240 -232 38.5 103.5 $ seat r0RW back
455 rpp 70.75 115.75 -232 -231 38.5 103.5 $ seat r0RW shell
456 rpp -115.75 -70.75 -202 -160 28.5 38.5 $ seat r1LW cushion
457 rpp -115.75 -70.75 -202 -160 28.3 28.5 $ seat r1LW pan
458 rpp -115.75 -70.75 -160 -152 38.5 103.5 $ seat r1LW back
459 rpp -115.75 -70.75 -152 -151 38.5 103.5 $ seat r1LW shell
460 rpp -65.25 -20.25 -202 -160 28.5 38.5 $ seat r1LA cushion
461 rpp -65.25 -20.25 -202 -160 28.3 28.5 $ seat r1LA pan
462 rpp -65.25 -20.25 -160 -152 38.5 103.5 $ seat r1LA back
463 rpp -65.25 -20.25 -152 -151 38.5 103.5 $ seat r1LA shell
464 rpp 20.25 65.25 -202 -160 28.5 38.5 $ seat r1RA cushion
465 rpp 20.25 65.25 -202 -160 28.3 28.5 $ seat r1RA pan
466 rpp 20.25 65.25 -160 -152 38.5 103.5 $ seat r1RA back
467 rpp 20.25 65.25 -152 -151 38.5 103.5 $ seat r1RA shell
468 rpp 70.75 115.75 -202 -160 28.5 38.5 $ seat r1RW cushion
469 rpp 70.75 115.75 -202 -160 28.3 28.5 $ seat r1RW pan
470 rpp 70.75 115.75 -160 -152 38.5 103.5 $ seat r1RW back
471 rpp 70.75 115.75 -152 -151 38.5 103.5 $ seat r1RW shell
472 rpp -115.75 -70.75 -122 -80 28.5 38.5 $ seat r2LW cushion
473 rpp -115.75 -70.75 -122 -80 28.3 28.5 $ seat r2LW pan
474 rpp -115.75 -70.75 -80 -72 38.5 103.5 $ seat r2LW back
475 rpp -115.75 -70.75 -72 -71 38.5 103.5 $ seat r2LW shell
476 rpp -65.25 -20.25 -122 -80 28.5 38.5 $ seat r2LA cushion
477 rpp -65.25 -20.25 -122 -80 28.3 28.5 $ seat r2LA pan
478 rpp -65.25 -20.25 -80 -72 38.5 103.5 $ seat r2LA back
479 rpp -65.25 -20.25 -72 -71 38.5 103.5 $ seat r2LA shell
480 rpp 20.25 65.25 -122 -80 28.5 38.5 $ seat r2RA cushion
481 rpp 20.25 65.25 -122 -80 28.3 28.5 $ seat r2RA pan
482 rpp 20.25 65.25 -80 -72 38.5 103.5 $ seat r2RA back
483 rpp 20.25 65.25 -72 -71 38.5 103.5 $ seat r2RA shell
484 rpp 70.75 115.75 -122 -80 28.5 38.5 $ seat r2RW cushion
485 rpp 70.75 115.75 -122 -80 28.3 28.5 $ seat r2RW pan
486 rpp 70.75 115.75 -80 -72 38.5 103.5 $ seat r2RW back
487 rpp 70.75 115.75 -72 -71 38.5 103.5 $ seat r2RW shell
488 rpp -115.75 -70.75 -42 0 28.5 38.5 $ seat r3LW cushion
489 rpp -115.75 -70.75 -42 0 28.3 28.5 $ seat r3LW pan
490 rpp -115.75 -70.75 0 8 38.5 103.5 $ seat r3LW back
491 rpp -115.75 -70.75 8 9 38.5 103.5 $ seat r3LW shell
492 rpp -65.25 -20.25 -42 0 28.5 38.5 $ seat r3LA cushion
493 rpp -65.25 -20.25 -42 0 28.3 28.5 $ seat r3LA pan
494 rpp -65.25 -20.25 0 8 38.5 103.5 $ seat r3LA back
495 rpp -65.25 -20.25 8 9 38.5 103.5 $ seat r3LA shell
496 rpp 20.25 65.25 -42 0 28.5 38.5 $ seat r3RA cushion
497 rpp 20.25 65.25 -42 0 28.3 28.5 $ seat r3RA pan
498 rpp 20.25 65.25 0 8 38.5 103.5 $ seat r3RA back
499 rpp 20.25 65.25 8 9 38.5 103.5 $ seat r3RA shell
500 rpp 70.75 115.75 -42 0 28.5 38.5 $ seat r3RW cushion
501 rpp 70.75 115.75 -42 0 28.3 28.5 $ seat r3RW pan
502 rpp 70.75 115.75 0 8 38.5 103.5 $ seat r3RW back
503 rpp 70.75 115.75 8 9 38.5 103.5 $ seat r3RW shell
504 rpp -115.75 -70.75 38 80 28.5 38.5 $ seat r4LW cushion
505 rpp -115.75 -70.75 38 80 28.3 28.5 $ seat r4LW pan
506 rpp -115.75 -70.75 80 88 38.5 103.5 $ seat r4LW back
507 rpp -115.75 -70.75 88 89 38.5 103.5 $ seat r4LW shell
508 rpp -65.25 -20.25 38 80 28.5 38.5 $ seat r4LA cushion
509 rpp -65.25 -20.25 38 80 28.3 28.5 $ seat r4LA pan
510 rpp -65.25 -20.25 80 88 38.5 103.5 $ seat r4LA back
511 rpp -65.25 -20.25 88 89 38.5 103.5 $ seat r4LA shell
512 rpp 20.25 65.25 38 80 28.5 38.5 $ seat r4RA cushion
513 rpp 20.25 65.25 38 80 28.3 28.5 $ seat r4RA pan
514 rpp 20.25 65.25 80 88 38.5 103.5 $ seat r4RA back
515 rpp 20.25 65.25 88 89 38.5 103.5 $ seat r4RA shell
516 rpp 70.75 115.75 38 80 28.5 38.5 $ seat r4RW cushion
517 rpp 70.75 115.75 38 80 28.3 28.5 $ seat r4RW pan
518 rpp 70.75 115.75 80 88 38.5 103.5 $ seat r4RW back
519 rpp 70.75 115.75 88 89 38.5 103.5 $ seat r4RW shell
520 rpp -115.75 -70.75 118 160 28.5 38.5 $ seat r5LW cushion
521 rpp -115.75 -70.75 118 160 28.3 28.5 $ seat r5LW pan
522 rpp -115.75 -70.75 160 168 38.5 103.5 $ seat r5LW back
523 rpp -115.75 -70.75 168 169 38.5 103.5 $ seat r5LW shell
524 rpp -65.25 -20.25 118 160 28.5 38.5 $ seat r5LA cushion
525 rpp -65.25 -20.25 118 160 28.3 28.5 $ seat r5LA pan
526 rpp -65.25 -20.25 160 168 38.5 103.5 $ seat r5LA back
527 rpp -65.25 -20.25 168 169 38.5 103.5 $ seat r5LA shell
528 rpp 20.25 65.25 118 160 28.5 38.5 $ seat r5RA cushion
529 rpp 20.25 65.25 118 160 28.3 28.5 $ seat r5RA pan
530 rpp 20.25 65.25 160 168 38.5 103.5 $ seat r5RA back
531 rpp 20.25 65.25 168 169 38.5 103.5 $ seat r5RA shell
532 rpp 70.75 115.75 118 160 28.5 38.5 $ seat r5RW cushion
533 rpp 70.75 115.75 118 160 28.3 28.5 $ seat r5RW pan
534 rpp 70.75 115.75 160 168 38.5 103.5 $ seat r5RW back
535 rpp 70.75 115.75 168 169 38.5 103.5 $ seat r5RW shell
536 rpp -115.75 -70.75 198 240 28.5 38.5 $ seat r6LW cushion
537 rpp -115.75 -70.75 198 240 28.3 28.5 $ seat r6LW pan
538 rpp -115.75 -70.75 240 248 38.5 103.5 $ seat r6LW back
539 rpp -115.75 -70.75 248 249 38.5 103.5 $ seat r6LW shell
540 rpp -65.25 -20.25 198 240 28.5 38.5 $ seat r6LA cushion
541 rpp -65.25 -20.25 198 240 28.3 28.5 $ seat r6LA pan
542 rpp -65.25 -20.25 240 248 38.5 103.5 $ seat r6LA back
543 rpp -65.25 -20.25 248 249 38.5 103.5 $ seat r6LA shell
544 rpp 20.25 65.25 198 240 28.5 38.5 $ seat r6RA cushion
545 rpp 20.25 65.25 198 240 28.3 28.5 $ seat r6RA pan
546 rpp 20.25 65.25 240 248 38.5 103.5 $ seat r6RA back
547 rpp 20.25 65.25 248 249 38.5 103.5 $ seat r6RA shell
548 rpp 70.75 115.75 198 240 28.5 38.5 $ seat r6RW cushion
549 rpp 70.75 115.75 198 240 28.3 28.5 $ seat r6RW pan
550 rpp 70.75 115.75 240 248 38.5 103.5 $ seat r6RW back
551 rpp 70.75 115.75 248 249 38.5 103.5 $ seat r6RW shell
552 rpp -120.5 120.5 -310.5 -230.5 0 200 $ cabin slab row 0
553 rpp -120.5 120.5 -230.5 -150.5 0 200 $ cabin slab row 1
554 rpp -120.5 120.5 -150.5 -70.5 0 200 $ cabin slab row 2
555 rpp -120.5 120.5 -70.5 9.5 0 200 $ cabin slab row 3
556 rpp -120.5 120.5 9.5 89.5 0 200 $ cabin slab row 4
557 rpp -120.5 120.5 89.5 169.5 0 200 $ cabin slab row 5
558 rpp -120.5 120.5 169.5 249.5 0 200 $ cabin slab row 6
559 rpp -120.5 120.5 -460.5 -310.5 0 200 $ cabin front
560 rpp -120.5 120.5 249.5 369.5 0 200 $ cabin rear
561 rpp -122.5 122.5 -461.5 370.5 -2.2 204.5 $ bus envelope
562 rpp -122.5 122.5 -461.5 370.5 -0.2 0 $ floor vinyl
563 rpp -122.5 122.5 -461.5 370.5 -2 -0.2 $ floor plywood
564 rpp -122.5 122.5 -461.5 370.5 -2.2 -2 $ floor steel
565 rpp -122.5 122.5 -461.5 370.5 200 200.3 $ roof panel
566 rpp -122.5 122.5 -461.5 370.5 200.3 204.3 $ roof gap
567 rpp -122.5 122.5 -461.5 370.5 204.3 204.5 $ roof skin
568 rpp -120.5 120.5 -461.5 -460.5 0 200 $ front wall
569 rpp -120.5 120.5 369.5 370.5 0 200 $ rear wall
570 rpp -121 -120.5 -461.5 370.5 0 80 $ L panel low
571 rpp -121 -120.5 -461.5 370.5 80 175 $ L window
572 rpp -121 -120.5 -461.5 370.5 175 200 $ L panel up
573 rpp -122.3 -121 -461.5 370.5 0 200 $ L gap
574 rpp -122.5 -122.3 -461.5 370.5 0 200 $ L skin
575 rpp 120.5 121 -461.5 370.5 0 80 $ R panel low
576 rpp 120.5 121 -461.5 370.5 80 175 $ R window
577 rpp 120.5 121 -461.5 370.5 175 200 $ R panel up
578 rpp 121 122.3 -461.5 370.5 0 200 $ R gap
579 rpp 122.3 122.5 -461.5 370.5 0 200 $ R skin
580 so 700 $ world

c ============================== DATA
c ============ SOURCE: patient (one photon per history; see FC cards)
c 425 source entries (organ x slab, lattice-element sampling); expected
c element trials per photon 505; min element efficiency 2.1e-05
SDEF PAR=P CEL=D1 ERG=D6 TME=FCEL=D2 X=FCEL=D3 Y=FCEL=D4 Z=FCEL=D5 EFF=1e-08
SI1 L (40089 < 6109 < 700009) (40089 < 6110 < 700010) (40090 < 6109 < 700009)
     (40090 < 6110 < 700010) (40091 < 6109 < 700009) (40091 < 6110 < 700010)
     (40092 < 6109 < 700009) (40092 < 6110 < 700010) (40093 < 6109 < 700009)
     (40093 < 6110 < 700010) (40094 < 6109 < 700009) (40094 < 6110 < 700010)
     (40095 < 6109 < 700009) (40095 < 6110 < 700010) (40095 < 6111 < 700011)
     (40127 < 6110 < 700010) (40127 < 6111 < 700011) (40120 < 6113 < 700013)
     (40120 < 6114 < 700014) (40121 < 6113 < 700013) (40121 < 6114 < 700014)
     (40138 < 6104 < 700004) (40138 < 6105 < 700005) (40137 < 6104 < 700004)
     (40137 < 6105 < 700005) (40115 < 6103 < 700003) (40115 < 6104 < 700004)
     (40074 < 6105 < 700005) (40074 < 6106 < 700006) (40074 < 6107 < 700007)
     (40074 < 6108 < 700008) (40074 < 6109 < 700009) (40074 < 6110 < 700010)
     (40075 < 6105 < 700005) (40075 < 6106 < 700006) (40075 < 6107 < 700007)
     (40075 < 6108 < 700008) (40075 < 6109 < 700009) (40075 < 6110 < 700010)
     (40076 < 6106 < 700006) (40076 < 6107 < 700007) (40076 < 6108 < 700008)
     (40076 < 6109 < 700009) (40077 < 6107 < 700007) (40077 < 6108 < 700008)
     (40077 < 6109 < 700009) (40078 < 6109 < 700009) (40079 < 6109 < 700009)
     (40080 < 6109 < 700009) (40080 < 6110 < 700010) (40081 < 6109 < 700009)
     (40081 < 6110 < 700010) (40082 < 6107 < 700007) (40082 < 6108 < 700008)
     (40082 < 6109 < 700009) (40082 < 6110 < 700010) (40083 < 6107 < 700007)
     (40083 < 6108 < 700008) (40083 < 6109 < 700009) (40083 < 6110 < 700010)
     (40084 < 6105 < 700005) (40084 < 6106 < 700006) (40084 < 6107 < 700007)
     (40085 < 6105 < 700005) (40085 < 6106 < 700006) (40085 < 6107 < 700007)
     (40086 < 6104 < 700004) (40086 < 6105 < 700005) (40072 < 6109 < 700009)
     (40072 < 6110 < 700010) (40073 < 6109 < 700009) (40073 < 6110 < 700010)
     (40009 < 6113 < 700013) (40009 < 6114 < 700014) (40010 < 6102 < 700002)
     (40010 < 6103 < 700003) (40010 < 6104 < 700004) (40010 < 6105 < 700005)
     (40010 < 6106 < 700006) (40010 < 6107 < 700007) (40010 < 6108 < 700008)
     (40010 < 6109 < 700009) (40010 < 6110 < 700010) (40010 < 6111 < 700011)
     (40010 < 6112 < 700012) (40010 < 6113 < 700013) (40011 < 6108 < 700008)
     (40011 < 6109 < 700009) (40011 < 6110 < 700010) (40011 < 6111 < 700011)
     (40012 < 6100 < 700000) (40012 < 6101 < 700001) (40012 < 6102 < 700002)
     (40012 < 6103 < 700003) (40012 < 6104 < 700004) (40012 < 6105 < 700005)
     (40088 < 6111 < 700011) (40088 < 6112 < 700012) (40096 < 6111 < 700011)
     (40096 < 6112 < 700012) (40098 < 6111 < 700011) (40098 < 6112 < 700012)
     (40087 < 6111 < 700011) (40087 < 6112 < 700012) (40097 < 6110 < 700010)
     (40097 < 6111 < 700011) (40097 < 6112 < 700012) (40099 < 6110 < 700010)
     (40099 < 6111 < 700011) (40099 < 6112 < 700012) (40013 < 6111 < 700011)
     (40013 < 6112 < 700012) (40016 < 6109 < 700009) (40016 < 6110 < 700010)
     (40016 < 6111 < 700011) (40019 < 6108 < 700008) (40019 < 6109 < 700009)
     (40019 < 6110 < 700010) (40022 < 6107 < 700007) (40022 < 6108 < 700008)
     (40024 < 6112 < 700012) (40024 < 6113 < 700013) (40026 < 6114 < 700014)
     (40028 < 6103 < 700003) (40028 < 6104 < 700004) (40028 < 6105 < 700005)
     (40031 < 6104 < 700004) (40031 < 6105 < 700005) (40034 < 6100 < 700000)
     (40034 < 6101 < 700001) (40034 < 6102 < 700002) (40034 < 6103 < 700003)
     (40034 < 6104 < 700004) (40034 < 6105 < 700005) (40037 < 6100 < 700000)
     (40039 < 6113 < 700013) (40039 < 6114 < 700014) (40041 < 6103 < 700003)
     (40041 < 6104 < 700004) (40041 < 6105 < 700005) (40041 < 6106 < 700006)
     (40041 < 6107 < 700007) (40043 < 6110 < 700010) (40043 < 6111 < 700011)
     (40043 < 6112 < 700012) (40043 < 6113 < 700013) (40045 < 6111 < 700011)
     (40045 < 6112 < 700012) (40045 < 6113 < 700013) (40047 < 6113 < 700013)
     (40047 < 6114 < 700014) (40049 < 6110 < 700010) (40049 < 6111 < 700011)
     (40049 < 6112 < 700012) (40049 < 6113 < 700013) (40051 < 6107 < 700007)
     (40051 < 6108 < 700008) (40051 < 6109 < 700009) (40053 < 6104 < 700004)
     (40053 < 6105 < 700005) (40053 < 6106 < 700006) (40053 < 6107 < 700007)
     (40055 < 6112 < 700012) (40017 < 6109 < 700009) (40017 < 6110 < 700010)
     (40020 < 6108 < 700008) (40020 < 6109 < 700009) (40023 < 6107 < 700007)
     (40023 < 6108 < 700008) (40032 < 6104 < 700004) (40032 < 6105 < 700005)
     (40035 < 6100 < 700000) (40035 < 6101 < 700001) (40035 < 6102 < 700002)
     (40035 < 6103 < 700003) (40035 < 6104 < 700004) (40035 < 6105 < 700005)
     (40038 < 6100 < 700000) (40015 < 6111 < 700011) (40015 < 6112 < 700012)
     (40018 < 6110 < 700010) (40018 < 6111 < 700011) (40021 < 6108 < 700008)
     (40021 < 6109 < 700009) (40030 < 6104 < 700004) (40030 < 6105 < 700005)
     (40033 < 6104 < 700004) (40033 < 6105 < 700005) (40036 < 6101 < 700001)
     (40057 < 6113 < 700013) (40057 < 6114 < 700014) (40058 < 6102 < 700002)
     (40058 < 6103 < 700003) (40058 < 6104 < 700004) (40058 < 6105 < 700005)
     (40058 < 6106 < 700006) (40058 < 6107 < 700007) (40058 < 6108 < 700008)
     (40058 < 6109 < 700009) (40058 < 6110 < 700010) (40058 < 6111 < 700011)
     (40058 < 6112 < 700012) (40058 < 6113 < 700013) (40059 < 6107 < 700007)
     (40059 < 6108 < 700008) (40059 < 6109 < 700009) (40060 < 6100 < 700000)
     (40060 < 6101 < 700001) (40060 < 6103 < 700003) (40060 < 6104 < 700004)
     (40128 < 6113 < 700013) (40128 < 6114 < 700014) (40014 < 6112 < 700012)
     (40025 < 6112 < 700012) (40025 < 6113 < 700013) (40027 < 6114 < 700014)
     (40029 < 6103 < 700003) (40029 < 6104 < 700004) (40040 < 6113 < 700013)
     (40040 < 6114 < 700014) (40042 < 6103 < 700003) (40042 < 6104 < 700004)
     (40042 < 6105 < 700005) (40042 < 6106 < 700006) (40042 < 6107 < 700007)
     (40044 < 6109 < 700009) (40044 < 6110 < 700010) (40044 < 6111 < 700011)
     (40044 < 6112 < 700012) (40044 < 6113 < 700013) (40046 < 6111 < 700011)
     (40046 < 6112 < 700012) (40046 < 6113 < 700013) (40048 < 6113 < 700013)
     (40048 < 6114 < 700014) (40050 < 6110 < 700010) (40050 < 6111 < 700011)
     (40050 < 6112 < 700012) (40050 < 6113 < 700013) (40052 < 6107 < 700007)
     (40052 < 6108 < 700008) (40052 < 6109 < 700009) (40054 < 6104 < 700004)
     (40054 < 6105 < 700005) (40054 < 6106 < 700006) (40054 < 6107 < 700007)
     (40056 < 6110 < 700010) (40056 < 6111 < 700011) (40056 < 6112 < 700012)
     (40106 < 6113 < 700013) (40106 < 6114 < 700014) (40107 < 6102 < 700002)
     (40107 < 6103 < 700003) (40107 < 6104 < 700004) (40107 < 6105 < 700005)
     (40107 < 6106 < 700006) (40107 < 6107 < 700007) (40107 < 6108 < 700008)
     (40107 < 6109 < 700009) (40107 < 6110 < 700010) (40107 < 6111 < 700011)
     (40107 < 6112 < 700012) (40107 < 6113 < 700013) (40108 < 6107 < 700007)
     (40108 < 6108 < 700008) (40108 < 6109 < 700009) (40108 < 6110 < 700010)
     (40108 < 6111 < 700011) (40109 < 6100 < 700000) (40109 < 6101 < 700001)
     (40109 < 6102 < 700002) (40109 < 6103 < 700003) (40109 < 6104 < 700004)
     (40109 < 6105 < 700005) (40109 < 6106 < 700006) (40116 < 6113 < 700013)
     (40116 < 6114 < 700014) (40117 < 6102 < 700002) (40117 < 6103 < 700003)
     (40117 < 6104 < 700004) (40117 < 6105 < 700005) (40117 < 6106 < 700006)
     (40117 < 6107 < 700007) (40117 < 6108 < 700008) (40117 < 6109 < 700009)
     (40117 < 6110 < 700010) (40117 < 6111 < 700011) (40117 < 6112 < 700012)
     (40117 < 6113 < 700013) (40118 < 6107 < 700007) (40118 < 6108 < 700008)
     (40118 < 6109 < 700009) (40118 < 6110 < 700010) (40118 < 6111 < 700011)
     (40119 < 6100 < 700000) (40119 < 6101 < 700001) (40119 < 6102 < 700002)
     (40119 < 6103 < 700003) (40119 < 6104 < 700004) (40119 < 6105 < 700005)
     (40119 < 6106 < 700006) (40062 < 6111 < 700011) (40064 < 6111 < 700011)
     (40122 < 6113 < 700013) (40122 < 6114 < 700014) (40123 < 6102 < 700002)
     (40123 < 6103 < 700003) (40123 < 6104 < 700004) (40123 < 6105 < 700005)
     (40123 < 6106 < 700006) (40123 < 6107 < 700007) (40123 < 6108 < 700008)
     (40123 < 6109 < 700009) (40123 < 6110 < 700010) (40123 < 6111 < 700011)
     (40123 < 6112 < 700012) (40123 < 6113 < 700013) (40124 < 6107 < 700007)
     (40124 < 6108 < 700008) (40124 < 6109 < 700009) (40124 < 6110 < 700010)
     (40124 < 6111 < 700011) (40125 < 6100 < 700000) (40125 < 6101 < 700001)
     (40125 < 6102 < 700002) (40125 < 6103 < 700003) (40125 < 6104 < 700004)
     (40125 < 6105 < 700005) (40125 < 6106 < 700006) (40141 < 6100 < 700000)
     (40141 < 6114 < 700014) (40061 < 6114 < 700014) (40126 < 6109 < 700009)
     (40126 < 6110 < 700010) (40126 < 6111 < 700011) (40126 < 6112 < 700012)
     (40126 < 6113 < 700013) (40126 < 6114 < 700014) (40103 < 6102 < 700002)
     (40103 < 6103 < 700003) (40103 < 6104 < 700004) (40103 < 6105 < 700005)
     (40103 < 6106 < 700006) (40103 < 6107 < 700007) (40103 < 6108 < 700008)
     (40103 < 6109 < 700009) (40103 < 6110 < 700010) (40103 < 6111 < 700011)
     (40103 < 6112 < 700012) (40103 < 6113 < 700013) (40100 < 6113 < 700013)
     (40101 < 6111 < 700011) (40101 < 6112 < 700012) (40101 < 6113 < 700013)
     (40102 < 6113 < 700013) (40102 < 6114 < 700014) (40104 < 6109 < 700009)
     (40104 < 6110 < 700010) (40104 < 6111 < 700011) (40105 < 6102 < 700002)
     (40105 < 6103 < 700003) (40105 < 6104 < 700004) (40105 < 6105 < 700005)
     (40001 < 6110 < 700010) (40002 < 6110 < 700010) (40003 < 6114 < 700014)
     (40004 < 6113 < 700013) (40004 < 6114 < 700014) (40005 < 6113 < 700013)
     (40005 < 6114 < 700014) (40006 < 6113 < 700013) (40006 < 6114 < 700014)
     (40007 < 6112 < 700012) (40007 < 6113 < 700013) (40008 < 6111 < 700011)
     (40008 < 6112 < 700012) (40063 < 6111 < 700011) (40065 < 6111 < 700011)
     (40066 < 6114 < 700014) (40067 < 6114 < 700014) (40068 < 6114 < 700014)
     (40069 < 6114 < 700014) (40070 < 6109 < 700009) (40070 < 6110 < 700010)
     (40071 < 6109 < 700009) (40071 < 6110 < 700010) (40110 < 6110 < 700010)
     (40110 < 6111 < 700011) (40110 < 6112 < 700012) (40110 < 6113 < 700013)
     (40113 < 6109 < 700009) (40113 < 6110 < 700010) (40114 < 6114 < 700014)
     (40129 < 6105 < 700005) (40130 < 6104 < 700004) (40130 < 6105 < 700005)
     (40131 < 6112 < 700012) (40132 < 6112 < 700012) (40132 < 6113 < 700013)
     (40133 < 6113 < 700013) (40134 < 6114 < 700014) (40135 < 6105 < 700005)
     (40135 < 6106 < 700006) (40135 < 6107 < 700007) (40135 < 6108 < 700008)
     (40135 < 6109 < 700009) (40136 < 6105 < 700005) (40136 < 6106 < 700006)
     (40136 < 6107 < 700007) (40136 < 6108 < 700008) (40136 < 6109 < 700009)
     (6107 < -700007) (6102 < -700002) (6103 < -700003) (6104 < -700004)
     (6105 < -700005) (6106 < -700006) (6107 < -700007) (6108 < -700008)
     (6109 < -700009) (6110 < -700010) (6111 < -700011) (6112 < -700012)
     (6113 < -700013) (6114 < -700014)
SP1 0.00817246 0.00622345 0.00300087 0.00213979 0.000489832 0.000536237
     0.0107608 0.00401147 0.00384647 0.00142825 0.000902322 0.000154684
     0.00277263 0.0347475 0.00414651 0.0405582 0.00110844 0.0112378 0.00959551
     0.010961 0.00987231 0.0145513 0.0271154 0.0195669 0.0220998 0.0158555
     0.0258112 0.00221348 0.00413088 0.00574112 0.00752394 0.00601979
     0.00145349 0.000495579 0.000354664 0.00115741 0.00281198 0.00778044
     0.0019839 0.000177245 0.00169919 0.00245779 0.00126198 0.000727885
     0.00197332 0.000720795 0.00373159 0.00590815 0.00336765 0.000363942
     0.00229709 0.000191424 0.000708979 0.00103984 0.00194733 0.00190006
     3.30857e-05 0.000233963 0.000798782 0.00111073 0.00166846 0.000734974
     8.50774e-05 0.00234436 0.00211512 0.000203241 0.00130452 0.000560093
     0.0012667 0.0143573 0.00101336 0.0250293 2.72279e-05 8.0082e-06
     0.000136139 0.000318726 0.000150554 0.000262669 0.000775194 0.00100263
     0.0010779 0.00155359 0.00198764 0.00161125 0.00210776 3.68377e-05
     7.52771e-05 0.000251457 0.000158562 0.000172977 0.00011692 0.00100743
     0.000246653 0.000546159 0.000466077 0.000253059 0.0196121 0.00147831
     0.00240887 0.000858479 0.0021446 0.000813633 0.0347973 0.00686936
     0.000883803 0.00983757 0.00809654 0.000384864 0.0137117 0.0087522
     0.000292848 0.000524244 0.000107646 0.000413208 0.000239025 0.000570863
     0.00104128 5.50944e-06 0.000372523 0.000675118 0.000193678 9.49319e-05
     0.00340017 0.000240296 0.00115317 0.000121631 0.000780645 0.000943809
     0.000234363 0.00179735 0.000303019 0.00048695 0.000278015 8.89986e-05
     0.00140491 0.00034879 0.000111036 0.00026191 0.000597138 0.000473812
     0.000708599 0.00036659 0.000435246 0.00096839 0.000774288 2.7971e-05
     0.000163588 0.00109807 7.41655e-05 0.00053272 8.89986e-05 0.000528906
     0.000503478 0.000587815 0.000111036 0.000356842 0.000358113 0.000409817
     2.33092e-05 0.000192407 0.000348366 9.57795e-05 5.97562e-05 0.000185873
     0.000173889 0.000274652 0.000828846 0.000246282 0.000594304 0.00117589
     0.00150948 0.000695067 0.000826645 0.000501123 0.0014388 0.000751073
     0.000121796 0.00306666 0.0001233 7.89554e-05 0.000120488 0.000103832
     5.0618e-05 8.65264e-05 0.00013152 2.55253e-05 0.000145797 0.000345673
     0.000475246 8.13393e-05 1.50538e-05 2.42804e-06 5.82729e-05 3.44781e-05
     4.9532e-05 0.000147139 5.29312e-05 5.24456e-05 6.3129e-05 8.25533e-06
     2.67084e-05 4.34619e-05 3.64206e-05 1.94243e-06 3.47209e-05 1.94243e-06
     6.60426e-05 5.09888e-06 0.000109262 2.4766e-05 0.000145075 0.000157215
     0.000957813 0.000199943 0.000131197 0.00316541 0.000350055 0.00244149
     0.000297512 3.7189e-05 0.000651544 0.00153933 0.00234573 0.00207781
     0.000692018 0.000739849 0.00216835 0.00202688 0.00174448 4.29377e-05
     8.64229e-05 0.000993207 8.82617e-05 0.00136956 0.000254093 0.00249753
     0.00184542 0.00198937 0.000390166 0.00172721 0.00156738 0.00182918
     2.95795e-05 0.000337923 0.00312826 0.000631029 1.22182e-05 0.00061353
     0.000666766 0.00114402 0.000585525 0.000824725 0.00274602 0.0025613
     0.00229922 0.00143477 0.00138524 0.00126471 0.00143183 0.00162787
     0.00191557 0.00418198 0.000665839 0.000142867 0.000758414 0.00128144
     0.000783206 0.000824562 0.00131882 0.00260173 0.000761792 0.00223051
     0.0039904 0.00289259 1.17148e-05 0.000629614 0.00140267 0.00270132
     0.00229414 0.00176706 0.00184026 0.00200934 0.00281664 0.00218205
     0.00233094 0.00240206 0.00254644 0.00287592 0.000630556 0.000358203
     0.000654844 0.000759802 0.000650471 0.00069676 0.00111525 0.00124678
     0.000914481 0.00279431 0.00188494 0.00193062 0.000202112 1.45327e-05
     1.45327e-05 0.000941367 0.00216748 0.00203488 0.000891643 0.000937542
     0.00110414 0.00105144 0.00113007 0.000954542 0.00126904 0.00185299
     0.00206548 0.00260778 0.00057162 0.000894193 0.00166641 0.00178074
     0.00116619 0.00112157 0.00242588 0.0031709 0.00158821 0.00183769
     0.00177266 0.00209948 0.000913743 0.00109734 0.000551646 0.0406403
     8.12219e-05 0.00018565 0.00018565 0.000219404 0.000296407 5.80156e-05
     0.000128205 0.000753205 0.00121795 0.00407051 0.00326923 0.00315705
     0.00336538 0.00485577 0.0081891 0.00512821 0.00626603 0.00126603
     0.00378215 0.00151286 0.00762733 0.0015759 0.00762733 0.00239536
     0.00296268 0.00201715 0.00504286 0.00170197 0.00075643 0.000378215
     0.00428643 0.000502779 0.000502779 0.000792011 0.000783902 0.00125695
     0.000823924 0.00138331 0.000184625 0.000181869 0.000505482 0.000213546
     0.00232738 0.0024355 0.0003587 0.0003587 1.3778e-05 0.000523564
     1.3778e-05 0.000526319 0.000159484 0.000840667 0.000654153 0.00323022
     0.00040006 0.000910948 0.00101367 0.000548731 0.00417749 0.00587769
     4.32498e-05 0.00122821 4.36697e-05 0.00121729 0.00179487 0.000510389
     0.000925251 0.00303667 0.000216249 2.4328e-05 0.00015678 0.000129749
     8.92027e-05 0.000210843 3.24373e-05 0.000135156 0.000159484 9.46089e-05
     0.000116234 0.0416667 0.00208268 0.00208268 0.00208268 0.00208268
     0.00208268 0.00243009 0.00208268 0.00277749 0.0038197 0.0038197 0.0045145
     0.00520931 0.00659979
DS2 S 971 971 971 971 971 971 971 971 971 971 971 971 972 972 972 973 973 974
     974 974 974 975 975 976 976 977 977 978 978 978 978 978 978 978 978 978
     978 978 978 979 979 979 979 979 979 979 979 979 979 979 979 979 979 979
     979 979 979 979 979 979 979 979 979 979 979 979 979 979 980 980 980 980
     981 981 981 981 981 981 981 981 981 981 981 981 981 981 981 981 981 981
     981 981 981 981 981 981 981 981 981 981 981 981 982 982 983 983 983 983
     983 983 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984
     984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984
     984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984
     984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984
     984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984 984
     984 984 984 984 984 984 984 984 984 984 984 984 984 984 985 985 985 985
     985 985 985 985 985 985 985 985 985 985 985 985 985 985 985 985 985 985
     985 985 985 985 985 985 985 985 985 985 985 985 985 985 985 986 986 986
     986 986 986 986 986 986 986 986 986 986 986 986 986 986 986 986 986 986
     986 986 986 986 986 987 987 987 987 987 987 987 987 987 987 987 987 987
     987 987 987 987 987 987 987 987 987 987 987 987 987 987 987 988 988 988
     988 988 988 988 988 988 988 988 988 988 988 988 988 988 988 988 988 988
     988 988 988 988 988 988 988 989 989 989 989 989 989 989 990 990 990 990
     990 990 990 990 990 990 990 990 991 991 991 991 991 991 991 991 991 991
     991 991 991 992 992 992 992 992 992 992 992 992 992 992 992 992 992 992
     992 992 992 992 992 992 992 992 992 992 992 992 992 992 992 992 992 992
     992 992 992 992 992 992 992 992 992 992 992 992 992 992 992 993 994 994
     994 994 994 994 994 994 994 994 994 994 994
DS3 S 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
     10 10 10 13 13 13 13 13 13 13 13 13 13 13 13 13 13
DS4 S 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
     11 11 11 14 14 14 14 14 14 14 14 14 14 14 14 14 14
DS5 S 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12
     12 12 12 15 16 17 18 19 20 21 22 23 24 25 26 27 28
SI10 H 0 0.2137
SP10 D 0 1
SI11 H 0 0.2137
SP11 D 0 1
SI12 H 0 0.8
SP12 D 0 1
SI13 L 92.8507
SP13 1
SI14 L -12.0347
SP14 1
SI15 L 63.5
SP15 1
SI16 H 38.502 43.298
SP16 D 0 1
SI17 H 43.302 48.098
SP17 D 0 1
SI18 H 48.102 52.898
SP18 D 0 1
SI19 H 52.902 57.698
SP19 D 0 1
SI20 H 57.702 62.498
SP20 D 0 1
SI21 H 62.502 68.098
SP21 D 0 1
SI22 H 68.102 72.898
SP22 D 0 1
SI23 H 72.902 79.298
SP23 D 0 1
SI24 H 79.302 88.098
SP24 D 0 1
SI25 H 88.102 96.898
SP25 D 0 1
SI26 H 96.902 107.298
SP26 D 0 1
SI27 H 107.302 119.298
SP27 D 0 1
SI28 H 119.302 134.5
SP28 D 0 1
c ---- source energy grid (MeV): 27 discrete energies, tallies binned by
c      FT SCX 6 (user bins). Divide each bin by its SP6 probability.
SI6 L 0.02565 0.035 0.0457 0.04892 0.0526 0.0554 0.0632 0.07457 0.0771 0.0873
     0.1 0.11295 0.15 0.1879 0.20837 0.21812 0.23863 0.27737 0.30009 0.44044
     0.51074 0.58319 0.72733 0.86053 1.1 1.56693 2.61451
SP6 0.0707205 0.00492947 0.0534216 0.0576479 0.0168381 0.0260762 0.0114319
     0.0369713 0.00779477 0.00740506 0.00606133 0.0534496 0.00547183 0.0047986
     0.186292 0.0186776 0.026555 0.00754198 0.0130686 0.0876904 0.0161859
     0.0435177 0.0170969 0.0158608 0.00860065 0.0302954 0.165599
c ---- source region tags: region r is born at time t = r*1000 shakes;
c      tallies are binned by region with the T0 card (photon flight times
c      are < 1 shake, so the time tag does not change any physics)
c   d971: region  1 KID - Kidneys
c   d972: region  2 LIV - Liver
c   d973: region  3 SPL - Spleen
c   d974: region  4 SAL - Salivary glands
c   d975: region  5 UBC - Urinary bladder contents
c   d976: region  6 UBW - Urinary bladder wall
c   d977: region  7 PRO - Prostate
c   d978: region  8 SIN - Small intestine wall+contents
c   d979: region  9 COL - Colon+rectum walls+contents
c   d980: region 10 STO - Stomach wall+contents
c   d981: region 11 BLD - Blood (vessels, heart & lung blood)
c   d982: region 12 HTW - Heart wall
c   d983: region 13 LUN - Lung tissue
c   d984: region 14 SKL - Skeleton excl. red-marrow spongiosa (cortical, medulla
c   d985: region 15 SPO - Spongiosa of red-marrow sites, weighted by RBM mass (m
c   d986: region 16 MUS - Muscle
c   d987: region 17 ADI - Adipose/residual tissue (incl. breast adipose)
c   d988: region 18 SKN - Skin
c   d989: region 19 BRN - Brain+spinal cord
c   d990: region 20 LNT - Lymph nodes, trunk
c   d991: region 21 LNO - Lymph nodes, other
c   d992: region 22 OTH - Other organs
c   d993: region 23 PNT - Point source at trunk centre (simplified model)
c   d994: region 24 LIN - Line source along trunk axis (simplified model)
SI971 L 1000
SP971 1
SI972 L 2000
SP972 1
SI973 L 3000
SP973 1
SI974 L 4000
SP974 1
SI975 L 5000
SP975 1
SI976 L 6000
SP976 1
SI977 L 7000
SP977 1
SI978 L 8000
SP978 1
SI979 L 9000
SP979 1
SI980 L 10000
SP980 1
SI981 L 11000
SP981 1
SI982 L 12000
SP982 1
SI983 L 13000
SP983 1
SI984 L 14000
SP984 1
SI985 L 15000
SP985 1
SI986 L 16000
SP986 1
SI987 L 17000
SP987 1
SI988 L 18000
SP988 1
SI989 L 19000
SP989 1
SI990 L 20000
SP990 1
SI991 L 21000
SP991 1
SI992 L 22000
SP992 1
SI993 L 23000
SP993 1
SI994 L 24000
SP994 1
T0 1500 2500 3500 4500 5500 6500 7500 8500 9500 10500 11500 12500 13500 14500
     15500 16500 17500 18500 19500 20500 21500 22500 23500 24500
c ============ TALLIES on exposed phantoms (envelope cell: name)
c 7001:TAM_r1LW 7002:TAM_r1LA 7003:TAM_r1RA 7004:TAM_r1RW 7005:TAM_r2LW
c 7006:TAM_r2LA 7007:TAM_r2RA 7008:TAM_r2RW 7009:TAM_r3LW 7010:TAM_r3LA
c 7011:TAM_r3RA 7012:TAM_r4LW 7013:TAM_r4LA 7014:TAM_r4RA 7015:TAM_r4RW
c 7016:TAM_r5LW 7017:TAM_r5LA 7018:TAM_r5RA 7019:TAM_r5RW
F6:P ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103 3104 3105 3106
     3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103
     700104 700105 700106 700107 700108 700109 700110 700111 700112 700113
     700114)) ((10096 10097 10098 10099) < (3100 3101 3102 3103 3104 3105 3106
     3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103
     700104 700105 700106 700107 700108 700109 700110 700111 700112 700113
     700114)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) ((10063 10065)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (700100 700101 700102 700103 700104 700105 700106 700107 700108
     700109 700110 700111 700112 700113 700114)) ((10129 10130) < (3100 3101
     3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) (10137 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101
     700102 700103 700104 700105 700106 700107 700108 700109 700110 700111
     700112 700113 700114)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103 700104
     700105 700106 700107 700108 700109 700110 700111 700112 700113 700114))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101
     700102 700103 700104 700105 700106 700107 700108 700109 700110 700111
     700112 700113 700114)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102
     700103 700104 700105 700106 700107 700108 700109 700110 700111 700112
     700113 700114)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101
     700102 700103 700104 700105 700106 700107 700108 700109 700110 700111
     700112 700113 700114)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102
     700103 700104 700105 700106 700107 700108 700109 700110 700111 700112
     700113 700114)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103 700104
     700105 700106 700107 700108 700109 700110 700111 700112 700113 700114))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103 700104
     700105 700106 700107 700108 700109 700110 700111 700112 700113 700114))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103 700104
     700105 700106 700107 700108 700109 700110 700111 700112 700113 700114))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101
     700102 700103 700104 700105 700106 700107 700108 700109 700110 700111
     700112 700113 700114)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103 700104
     700105 700106 700107 700108 700109 700110 700111 700112 700113 700114))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100
     700101 700102 700103 700104 700105 700106 700107 700108 700109 700110
     700111 700112 700113 700114)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102
     700103 700104 700105 700106 700107 700108 700109 700110 700111 700112
     700113 700114)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (700200 700201 700202 700203 700204 700205 700206 700207 700208
     700209 700210 700211 700212 700213 700214)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202
     700203 700204 700205 700206 700207 700208 700209 700210 700211 700212
     700213 700214)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202
     700203 700204 700205 700206 700207 700208 700209 700210 700211 700212
     700213 700214)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200
     700201 700202 700203 700204 700205 700206 700207 700208 700209 700210
     700211 700212 700213 700214)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202
     700203 700204 700205 700206 700207 700208 700209 700210 700211 700212
     700213 700214)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (700300 700301 700302 700303 700304 700305 700306 700307 700308
     700309 700310 700311 700312 700313 700314)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700300 700301 700302 700303 700304 700305 700306 700307 700308 700309
     700310 700311 700312 700313 700314)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302
     700303 700304 700305 700306 700307 700308 700309 700310 700311 700312
     700313 700314)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302
     700303 700304 700305 700306 700307 700308 700309 700310 700311 700312
     700313 700314)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700300 700301 700302 700303 700304 700305 700306 700307 700308 700309
     700310 700311 700312 700313 700314)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700300 700301 700302 700303 700304 700305 700306 700307 700308 700309
     700310 700311 700312 700313 700314)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700300 700301 700302 700303 700304 700305 700306 700307 700308 700309
     700310 700311 700312 700313 700314)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300
     700301 700302 700303 700304 700305 700306 700307 700308 700309 700310
     700311 700312 700313 700314)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302
     700303 700304 700305 700306 700307 700308 700309 700310 700311 700312
     700313 700314)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (700400 700401 700402 700403 700404 700405 700406 700407 700408
     700409 700410 700411 700412 700413 700414)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700400 700401 700402 700403 700404 700405 700406 700407 700408 700409
     700410 700411 700412 700413 700414)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402
     700403 700404 700405 700406 700407 700408 700409 700410 700411 700412
     700413 700414)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402
     700403 700404 700405 700406 700407 700408 700409 700410 700411 700412
     700413 700414)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700400 700401 700402 700403 700404 700405 700406 700407 700408 700409
     700410 700411 700412 700413 700414)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700400 700401 700402 700403 700404 700405 700406 700407 700408 700409
     700410 700411 700412 700413 700414)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700400 700401 700402 700403 700404 700405 700406 700407 700408 700409
     700410 700411 700412 700413 700414)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400
     700401 700402 700403 700404 700405 700406 700407 700408 700409 700410
     700411 700412 700413 700414)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402
     700403 700404 700405 700406 700407 700408 700409 700410 700411 700412
     700413 700414)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (700500 700501 700502 700503 700504 700505 700506 700507 700508
     700509 700510 700511 700512 700513 700514)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700500 700501 700502 700503 700504 700505 700506 700507 700508 700509
     700510 700511 700512 700513 700514)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502
     700503 700504 700505 700506 700507 700508 700509 700510 700511 700512
     700513 700514)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502
     700503 700504 700505 700506 700507 700508 700509 700510 700511 700512
     700513 700514)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700500 700501 700502 700503 700504 700505 700506 700507 700508 700509
     700510 700511 700512 700513 700514)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700500 700501 700502 700503 700504 700505 700506 700507 700508 700509
     700510 700511 700512 700513 700514)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700500 700501 700502 700503 700504 700505 700506 700507 700508 700509
     700510 700511 700512 700513 700514)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500
     700501 700502 700503 700504 700505 700506 700507 700508 700509 700510
     700511 700512 700513 700514)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502
     700503 700504 700505 700506 700507 700508 700509 700510 700511 700512
     700513 700514)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (700600 700601 700602 700603 700604 700605 700606 700607 700608
     700609 700610 700611 700612 700613 700614)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602
     700603 700604 700605 700606 700607 700608 700609 700610 700611 700612
     700613 700614)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602
     700603 700604 700605 700606 700607 700608 700609 700610 700611 700612
     700613 700614)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600
     700601 700602 700603 700604 700605 700606 700607 700608 700609 700610
     700611 700612 700613 700614)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602
     700603 700604 700605 700606 700607 700608 700609 700610 700611 700612
     700613 700614)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (700700 700701 700702 700703 700704 700705 700706 700707 700708
     700709 700710 700711 700712 700713 700714)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700700 700701 700702 700703 700704 700705 700706 700707 700708 700709
     700710 700711 700712 700713 700714)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702
     700703 700704 700705 700706 700707 700708 700709 700710 700711 700712
     700713 700714)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702
     700703 700704 700705 700706 700707 700708 700709 700710 700711 700712
     700713 700714)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700700 700701 700702 700703 700704 700705 700706 700707 700708 700709
     700710 700711 700712 700713 700714)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700700 700701 700702 700703 700704 700705 700706 700707 700708 700709
     700710 700711 700712 700713 700714)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700700 700701 700702 700703 700704 700705 700706 700707 700708 700709
     700710 700711 700712 700713 700714)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700
     700701 700702 700703 700704 700705 700706 700707 700708 700709 700710
     700711 700712 700713 700714)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702
     700703 700704 700705 700706 700707 700708 700709 700710 700711 700712
     700713 700714)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (700800 700801 700802 700803 700804 700805 700806 700807 700808
     700809 700810 700811 700812 700813 700814)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700800 700801 700802 700803 700804 700805 700806 700807 700808 700809
     700810 700811 700812 700813 700814)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802
     700803 700804 700805 700806 700807 700808 700809 700810 700811 700812
     700813 700814)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802
     700803 700804 700805 700806 700807 700808 700809 700810 700811 700812
     700813 700814)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700800 700801 700802 700803 700804 700805 700806 700807 700808 700809
     700810 700811 700812 700813 700814)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700800 700801 700802 700803 700804 700805 700806 700807 700808 700809
     700810 700811 700812 700813 700814)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700800 700801 700802 700803 700804 700805 700806 700807 700808 700809
     700810 700811 700812 700813 700814)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800
     700801 700802 700803 700804 700805 700806 700807 700808 700809 700810
     700811 700812 700813 700814)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802
     700803 700804 700805 700806 700807 700808 700809 700810 700811 700812
     700813 700814)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (700900 700901 700902 700903 700904 700905 700906 700907 700908
     700909 700910 700911 700912 700913 700914)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700900 700901 700902 700903 700904 700905 700906 700907 700908 700909
     700910 700911 700912 700913 700914)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902
     700903 700904 700905 700906 700907 700908 700909 700910 700911 700912
     700913 700914)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902
     700903 700904 700905 700906 700907 700908 700909 700910 700911 700912
     700913 700914)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700900 700901 700902 700903 700904 700905 700906 700907 700908 700909
     700910 700911 700912 700913 700914)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700900 700901 700902 700903 700904 700905 700906 700907 700908 700909
     700910 700911 700912 700913 700914)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700900 700901 700902 700903 700904 700905 700906 700907 700908 700909
     700910 700911 700912 700913 700914)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900
     700901 700902 700903 700904 700905 700906 700907 700908 700909 700910
     700911 700912 700913 700914)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902
     700903 700904 700905 700906 700907 700908 700909 700910 700911 700912
     700913 700914)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701000 701001 701002 701003 701004 701005 701006 701007 701008
     701009 701010 701011 701012 701013 701014)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002
     701003 701004 701005 701006 701007 701008 701009 701010 701011 701012
     701013 701014)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002
     701003 701004 701005 701006 701007 701008 701009 701010 701011 701012
     701013 701014)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000
     701001 701002 701003 701004 701005 701006 701007 701008 701009 701010
     701011 701012 701013 701014)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002
     701003 701004 701005 701006 701007 701008 701009 701010 701011 701012
     701013 701014)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701100 701101 701102 701103 701104 701105 701106 701107 701108
     701109 701110 701111 701112 701113 701114)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701100 701101 701102 701103 701104 701105 701106 701107 701108 701109
     701110 701111 701112 701113 701114)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102
     701103 701104 701105 701106 701107 701108 701109 701110 701111 701112
     701113 701114)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102
     701103 701104 701105 701106 701107 701108 701109 701110 701111 701112
     701113 701114)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701100 701101 701102 701103 701104 701105 701106 701107 701108 701109
     701110 701111 701112 701113 701114)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701100 701101 701102 701103 701104 701105 701106 701107 701108 701109
     701110 701111 701112 701113 701114)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701100 701101 701102 701103 701104 701105 701106 701107 701108 701109
     701110 701111 701112 701113 701114)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100
     701101 701102 701103 701104 701105 701106 701107 701108 701109 701110
     701111 701112 701113 701114)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102
     701103 701104 701105 701106 701107 701108 701109 701110 701111 701112
     701113 701114)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701200 701201 701202 701203 701204 701205 701206 701207 701208
     701209 701210 701211 701212 701213 701214)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701200 701201 701202 701203 701204 701205 701206 701207 701208 701209
     701210 701211 701212 701213 701214)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202
     701203 701204 701205 701206 701207 701208 701209 701210 701211 701212
     701213 701214)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202
     701203 701204 701205 701206 701207 701208 701209 701210 701211 701212
     701213 701214)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701200 701201 701202 701203 701204 701205 701206 701207 701208 701209
     701210 701211 701212 701213 701214)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701200 701201 701202 701203 701204 701205 701206 701207 701208 701209
     701210 701211 701212 701213 701214)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701200 701201 701202 701203 701204 701205 701206 701207 701208 701209
     701210 701211 701212 701213 701214)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200
     701201 701202 701203 701204 701205 701206 701207 701208 701209 701210
     701211 701212 701213 701214)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202
     701203 701204 701205 701206 701207 701208 701209 701210 701211 701212
     701213 701214)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701300 701301 701302 701303 701304 701305 701306 701307 701308
     701309 701310 701311 701312 701313 701314)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701300 701301 701302 701303 701304 701305 701306 701307 701308 701309
     701310 701311 701312 701313 701314)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302
     701303 701304 701305 701306 701307 701308 701309 701310 701311 701312
     701313 701314)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302
     701303 701304 701305 701306 701307 701308 701309 701310 701311 701312
     701313 701314)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701300 701301 701302 701303 701304 701305 701306 701307 701308 701309
     701310 701311 701312 701313 701314)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701300 701301 701302 701303 701304 701305 701306 701307 701308 701309
     701310 701311 701312 701313 701314)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701300 701301 701302 701303 701304 701305 701306 701307 701308 701309
     701310 701311 701312 701313 701314)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300
     701301 701302 701303 701304 701305 701306 701307 701308 701309 701310
     701311 701312 701313 701314)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302
     701303 701304 701305 701306 701307 701308 701309 701310 701311 701312
     701313 701314)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701400 701401 701402 701403 701404 701405 701406 701407 701408
     701409 701410 701411 701412 701413 701414)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402
     701403 701404 701405 701406 701407 701408 701409 701410 701411 701412
     701413 701414)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402
     701403 701404 701405 701406 701407 701408 701409 701410 701411 701412
     701413 701414)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400
     701401 701402 701403 701404 701405 701406 701407 701408 701409 701410
     701411 701412 701413 701414)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402
     701403 701404 701405 701406 701407 701408 701409 701410 701411 701412
     701413 701414)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701500 701501 701502 701503 701504 701505 701506 701507 701508
     701509 701510 701511 701512 701513 701514)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701500 701501 701502 701503 701504 701505 701506 701507 701508 701509
     701510 701511 701512 701513 701514)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502
     701503 701504 701505 701506 701507 701508 701509 701510 701511 701512
     701513 701514)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502
     701503 701504 701505 701506 701507 701508 701509 701510 701511 701512
     701513 701514)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701500 701501 701502 701503 701504 701505 701506 701507 701508 701509
     701510 701511 701512 701513 701514)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701500 701501 701502 701503 701504 701505 701506 701507 701508 701509
     701510 701511 701512 701513 701514)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701500 701501 701502 701503 701504 701505 701506 701507 701508 701509
     701510 701511 701512 701513 701514)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500
     701501 701502 701503 701504 701505 701506 701507 701508 701509 701510
     701511 701512 701513 701514)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502
     701503 701504 701505 701506 701507 701508 701509 701510 701511 701512
     701513 701514)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701600 701601 701602 701603 701604 701605 701606 701607 701608
     701609 701610 701611 701612 701613 701614)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701600 701601 701602 701603 701604 701605 701606 701607 701608 701609
     701610 701611 701612 701613 701614)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602
     701603 701604 701605 701606 701607 701608 701609 701610 701611 701612
     701613 701614)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602
     701603 701604 701605 701606 701607 701608 701609 701610 701611 701612
     701613 701614)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701600 701601 701602 701603 701604 701605 701606 701607 701608 701609
     701610 701611 701612 701613 701614)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701600 701601 701602 701603 701604 701605 701606 701607 701608 701609
     701610 701611 701612 701613 701614)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701600 701601 701602 701603 701604 701605 701606 701607 701608 701609
     701610 701611 701612 701613 701614)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600
     701601 701602 701603 701604 701605 701606 701607 701608 701609 701610
     701611 701612 701613 701614)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602
     701603 701604 701605 701606 701607 701608 701609 701610 701611 701612
     701613 701614)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701700 701701 701702 701703 701704 701705 701706 701707 701708
     701709 701710 701711 701712 701713 701714)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701700 701701 701702 701703 701704 701705 701706 701707 701708 701709
     701710 701711 701712 701713 701714)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702
     701703 701704 701705 701706 701707 701708 701709 701710 701711 701712
     701713 701714)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702
     701703 701704 701705 701706 701707 701708 701709 701710 701711 701712
     701713 701714)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701700 701701 701702 701703 701704 701705 701706 701707 701708 701709
     701710 701711 701712 701713 701714)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701700 701701 701702 701703 701704 701705 701706 701707 701708 701709
     701710 701711 701712 701713 701714)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701700 701701 701702 701703 701704 701705 701706 701707 701708 701709
     701710 701711 701712 701713 701714)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700
     701701 701702 701703 701704 701705 701706 701707 701708 701709 701710
     701711 701712 701713 701714)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702
     701703 701704 701705 701706 701707 701708 701709 701710 701711 701712
     701713 701714)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701800 701801 701802 701803 701804 701805 701806 701807 701808
     701809 701810 701811 701812 701813 701814)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802
     701803 701804 701805 701806 701807 701808 701809 701810 701811 701812
     701813 701814)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802
     701803 701804 701805 701806 701807 701808 701809 701810 701811 701812
     701813 701814)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800
     701801 701802 701803 701804 701805 701806 701807 701808 701809 701810
     701811 701812 701813 701814)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802
     701803 701804 701805 701806 701807 701808 701809 701810 701811 701812
     701813 701814)) ((10076 10078 10080 10082 10084) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) ((10096 10097 10098 10099) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) (10072 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     ((10063 10065) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) ((10129 10130)
     < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113
     3114) < (701900 701901 701902 701903 701904 701905 701906 701907 701908
     701909 701910 701911 701912 701913 701914)) (10137 < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) (10110 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     (10095 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) (10132 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701900 701901 701902 701903 701904 701905 701906 701907 701908 701909
     701910 701911 701912 701913 701914)) (10061 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) ((10120 10121) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902
     701903 701904 701905 701906 701907 701908 701909 701910 701911 701912
     701913 701914)) ((10122 10123 10124 10125 10141) < (3100 3101 3102 3103
     3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) ((10001 10002) < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902
     701903 701904 701905 701906 701907 701908 701909 701910 701911 701912
     701913 701914)) ((10003 10004) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     (10070 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) (10087 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701900 701901 701902 701903 701904 701905 701906 701907 701908 701909
     701910 701911 701912 701913 701914)) ((10089 10090 10091 10092 10093
     10094) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) ((10100 10101
     10102 10103 10104 10105) < (3100 3101 3102 3103 3104 3105 3106 3107 3108
     3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     ((10106 10107 10108 10109) < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     ((10005 10006) < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110
     3111 3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) (10113 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701900 701901 701902 701903 701904 701905 701906 701907 701908 701909
     701910 701911 701912 701913 701914)) (10115 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) (10074 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     (10127 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) (10131 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701900 701901 701902 701903 701904 701905 701906 701907 701908 701909
     701910 701911 701912 701913 701914)) ((10066 10068) < (3100 3101 3102
     3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900
     701901 701902 701903 701904 701905 701906 701907 701908 701909 701910
     701911 701912 701913 701914)) (10086 < (3100 3101 3102 3103 3104 3105
     3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902
     701903 701904 701905 701906 701907 701908 701909 701910 701911 701912
     701913 701914))
SD6 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
FC6 organ energy deposition MeV per source photon (SD=1)
FT6 SCX 6
F906:P (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101
     700102 700103 700104 700105 700106 700107 700108 700109 700110 700111
     700112 700113 700114)) (10023 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103 700104
     700105 700106 700107 700108 700109 700110 700111 700112 700113 700114))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101
     700102 700103 700104 700105 700106 700107 700108 700109 700110 700111
     700112 700113 700114)) (10032 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103 700104
     700105 700106 700107 700108 700109 700110 700111 700112 700113 700114))
     (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101
     700102 700103 700104 700105 700106 700107 700108 700109 700110 700111
     700112 700113 700114)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103 700104
     700105 700106 700107 700108 700109 700110 700111 700112 700113 700114))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101
     700102 700103 700104 700105 700106 700107 700108 700109 700110 700111
     700112 700113 700114)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700100 700101 700102 700103 700104
     700105 700106 700107 700108 700109 700110 700111 700112 700113 700114))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700100 700101 700102 700103 700104 700105 700106 700107 700108 700109
     700110 700111 700112 700113 700114)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700100 700101
     700102 700103 700104 700105 700106 700107 700108 700109 700110 700111
     700112 700113 700114)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) (10035 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700200 700201
     700202 700203 700204 700205 700206 700207 700208 700209 700210 700211
     700212 700213 700214)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700200 700201 700202 700203 700204
     700205 700206 700207 700208 700209 700210 700211 700212 700213 700214))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700200 700201 700202 700203 700204 700205 700206
     700207 700208 700209 700210 700211 700212 700213 700214)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10017 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700300 700301 700302 700303 700304 700305 700306 700307 700308 700309
     700310 700311 700312 700313 700314)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700300 700301 700302 700303 700304 700305 700306 700307 700308 700309
     700310 700311 700312 700313 700314)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10038 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700300 700301 700302 700303 700304 700305 700306 700307 700308 700309
     700310 700311 700312 700313 700314)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700300 700301 700302 700303 700304 700305 700306 700307 700308 700309
     700310 700311 700312 700313 700314)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700300 700301 700302 700303 700304
     700305 700306 700307 700308 700309 700310 700311 700312 700313 700314))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700300 700301 700302 700303 700304 700305 700306
     700307 700308 700309 700310 700311 700312 700313 700314)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700400 700401 700402 700403 700404 700405 700406 700407 700408 700409
     700410 700411 700412 700413 700414)) (10017 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) (10020 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10023 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700400 700401 700402 700403 700404 700405 700406 700407 700408 700409
     700410 700411 700412 700413 700414)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10032 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) (10035 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700400 700401 700402 700403 700404 700405 700406 700407 700408 700409
     700410 700411 700412 700413 700414)) (10038 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700400 700401 700402 700403 700404 700405 700406 700407 700408 700409
     700410 700411 700412 700413 700414)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700400 700401 700402 700403 700404 700405 700406
     700407 700408 700409 700410 700411 700412 700413 700414)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700400 700401 700402 700403 700404 700405 700406 700407 700408 700409
     700410 700411 700412 700413 700414)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700400 700401
     700402 700403 700404 700405 700406 700407 700408 700409 700410 700411
     700412 700413 700414)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700500 700501 700502 700503 700504 700505 700506 700507 700508 700509
     700510 700511 700512 700513 700514)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) (10023 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700500 700501 700502 700503 700504 700505 700506 700507 700508 700509
     700510 700511 700512 700513 700514)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) (10032 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700500 700501 700502 700503 700504 700505 700506 700507 700508 700509
     700510 700511 700512 700513 700514)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700500 700501 700502 700503 700504 700505 700506 700507 700508 700509
     700510 700511 700512 700513 700514)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700500 700501 700502 700503 700504
     700505 700506 700507 700508 700509 700510 700511 700512 700513 700514))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700500 700501 700502 700503 700504 700505 700506 700507 700508 700509
     700510 700511 700512 700513 700514)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700500 700501
     700502 700503 700504 700505 700506 700507 700508 700509 700510 700511
     700512 700513 700514)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) (10035 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700600 700601
     700602 700603 700604 700605 700606 700607 700608 700609 700610 700611
     700612 700613 700614)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700600 700601 700602 700603 700604
     700605 700606 700607 700608 700609 700610 700611 700612 700613 700614))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700600 700601 700602 700603 700604 700605 700606
     700607 700608 700609 700610 700611 700612 700613 700614)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10017 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700700 700701 700702 700703 700704 700705 700706 700707 700708 700709
     700710 700711 700712 700713 700714)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700700 700701 700702 700703 700704 700705 700706 700707 700708 700709
     700710 700711 700712 700713 700714)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10038 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700700 700701 700702 700703 700704 700705 700706 700707 700708 700709
     700710 700711 700712 700713 700714)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700700 700701 700702 700703 700704 700705 700706 700707 700708 700709
     700710 700711 700712 700713 700714)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700700 700701 700702 700703 700704
     700705 700706 700707 700708 700709 700710 700711 700712 700713 700714))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700700 700701 700702 700703 700704 700705 700706
     700707 700708 700709 700710 700711 700712 700713 700714)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700800 700801 700802 700803 700804 700805 700806 700807 700808 700809
     700810 700811 700812 700813 700814)) (10017 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) (10020 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10023 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700800 700801 700802 700803 700804 700805 700806 700807 700808 700809
     700810 700811 700812 700813 700814)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10032 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) (10035 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700800 700801 700802 700803 700804 700805 700806 700807 700808 700809
     700810 700811 700812 700813 700814)) (10038 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700800 700801 700802 700803 700804 700805 700806 700807 700808 700809
     700810 700811 700812 700813 700814)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700800 700801 700802 700803 700804 700805 700806
     700807 700808 700809 700810 700811 700812 700813 700814)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700800 700801 700802 700803 700804 700805 700806 700807 700808 700809
     700810 700811 700812 700813 700814)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700800 700801
     700802 700803 700804 700805 700806 700807 700808 700809 700810 700811
     700812 700813 700814)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700900 700901 700902 700903 700904 700905 700906 700907 700908 700909
     700910 700911 700912 700913 700914)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) (10023 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700900 700901 700902 700903 700904 700905 700906 700907 700908 700909
     700910 700911 700912 700913 700914)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) (10032 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700900 700901 700902 700903 700904 700905 700906 700907 700908 700909
     700910 700911 700912 700913 700914)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700900 700901 700902 700903 700904 700905 700906 700907 700908 700909
     700910 700911 700912 700913 700914)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700900 700901 700902 700903 700904
     700905 700906 700907 700908 700909 700910 700911 700912 700913 700914))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700900 700901 700902 700903 700904 700905 700906 700907 700908 700909
     700910 700911 700912 700913 700914)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700900 700901
     700902 700903 700904 700905 700906 700907 700908 700909 700910 700911
     700912 700913 700914)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) (10035 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701000 701001
     701002 701003 701004 701005 701006 701007 701008 701009 701010 701011
     701012 701013 701014)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701000 701001 701002 701003 701004
     701005 701006 701007 701008 701009 701010 701011 701012 701013 701014))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701000 701001 701002 701003 701004 701005 701006
     701007 701008 701009 701010 701011 701012 701013 701014)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10017 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701100 701101 701102 701103 701104 701105 701106 701107 701108 701109
     701110 701111 701112 701113 701114)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701100 701101 701102 701103 701104 701105 701106 701107 701108 701109
     701110 701111 701112 701113 701114)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10038 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701100 701101 701102 701103 701104 701105 701106 701107 701108 701109
     701110 701111 701112 701113 701114)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701100 701101 701102 701103 701104 701105 701106 701107 701108 701109
     701110 701111 701112 701113 701114)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701100 701101 701102 701103 701104
     701105 701106 701107 701108 701109 701110 701111 701112 701113 701114))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701100 701101 701102 701103 701104 701105 701106
     701107 701108 701109 701110 701111 701112 701113 701114)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701200 701201 701202 701203 701204 701205 701206 701207 701208 701209
     701210 701211 701212 701213 701214)) (10017 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) (10020 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10023 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701200 701201 701202 701203 701204 701205 701206 701207 701208 701209
     701210 701211 701212 701213 701214)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10032 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) (10035 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701200 701201 701202 701203 701204 701205 701206 701207 701208 701209
     701210 701211 701212 701213 701214)) (10038 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701200 701201 701202 701203 701204 701205 701206 701207 701208 701209
     701210 701211 701212 701213 701214)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701200 701201 701202 701203 701204 701205 701206
     701207 701208 701209 701210 701211 701212 701213 701214)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701200 701201 701202 701203 701204 701205 701206 701207 701208 701209
     701210 701211 701212 701213 701214)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701200 701201
     701202 701203 701204 701205 701206 701207 701208 701209 701210 701211
     701212 701213 701214)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701300 701301 701302 701303 701304 701305 701306 701307 701308 701309
     701310 701311 701312 701313 701314)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) (10023 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701300 701301 701302 701303 701304 701305 701306 701307 701308 701309
     701310 701311 701312 701313 701314)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) (10032 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701300 701301 701302 701303 701304 701305 701306 701307 701308 701309
     701310 701311 701312 701313 701314)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701300 701301 701302 701303 701304 701305 701306 701307 701308 701309
     701310 701311 701312 701313 701314)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701300 701301 701302 701303 701304
     701305 701306 701307 701308 701309 701310 701311 701312 701313 701314))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701300 701301 701302 701303 701304 701305 701306 701307 701308 701309
     701310 701311 701312 701313 701314)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701300 701301
     701302 701303 701304 701305 701306 701307 701308 701309 701310 701311
     701312 701313 701314)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) (10035 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701400 701401
     701402 701403 701404 701405 701406 701407 701408 701409 701410 701411
     701412 701413 701414)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701400 701401 701402 701403 701404
     701405 701406 701407 701408 701409 701410 701411 701412 701413 701414))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701400 701401 701402 701403 701404 701405 701406
     701407 701408 701409 701410 701411 701412 701413 701414)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10017 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701500 701501 701502 701503 701504 701505 701506 701507 701508 701509
     701510 701511 701512 701513 701514)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701500 701501 701502 701503 701504 701505 701506 701507 701508 701509
     701510 701511 701512 701513 701514)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10038 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701500 701501 701502 701503 701504 701505 701506 701507 701508 701509
     701510 701511 701512 701513 701514)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701500 701501 701502 701503 701504 701505 701506 701507 701508 701509
     701510 701511 701512 701513 701514)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701500 701501 701502 701503 701504
     701505 701506 701507 701508 701509 701510 701511 701512 701513 701514))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701500 701501 701502 701503 701504 701505 701506
     701507 701508 701509 701510 701511 701512 701513 701514)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701600 701601 701602 701603 701604 701605 701606 701607 701608 701609
     701610 701611 701612 701613 701614)) (10017 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) (10020 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10023 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701600 701601 701602 701603 701604 701605 701606 701607 701608 701609
     701610 701611 701612 701613 701614)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10032 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) (10035 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701600 701601 701602 701603 701604 701605 701606 701607 701608 701609
     701610 701611 701612 701613 701614)) (10038 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701600 701601 701602 701603 701604 701605 701606 701607 701608 701609
     701610 701611 701612 701613 701614)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701600 701601 701602 701603 701604 701605 701606
     701607 701608 701609 701610 701611 701612 701613 701614)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701600 701601 701602 701603 701604 701605 701606 701607 701608 701609
     701610 701611 701612 701613 701614)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701600 701601
     701602 701603 701604 701605 701606 701607 701608 701609 701610 701611
     701612 701613 701614)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701700 701701 701702 701703 701704 701705 701706 701707 701708 701709
     701710 701711 701712 701713 701714)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) (10023 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701700 701701 701702 701703 701704 701705 701706 701707 701708 701709
     701710 701711 701712 701713 701714)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) (10032 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701700 701701 701702 701703 701704 701705 701706 701707 701708 701709
     701710 701711 701712 701713 701714)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701700 701701 701702 701703 701704 701705 701706 701707 701708 701709
     701710 701711 701712 701713 701714)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701700 701701 701702 701703 701704
     701705 701706 701707 701708 701709 701710 701711 701712 701713 701714))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701700 701701 701702 701703 701704 701705 701706 701707 701708 701709
     701710 701711 701712 701713 701714)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701700 701701
     701702 701703 701704 701705 701706 701707 701708 701709 701710 701711
     701712 701713 701714)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) (10035 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701800 701801
     701802 701803 701804 701805 701806 701807 701808 701809 701810 701811
     701812 701813 701814)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701800 701801 701802 701803 701804
     701805 701806 701807 701808 701809 701810 701811 701812 701813 701814))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701800 701801 701802 701803 701804 701805 701806
     701807 701808 701809 701810 701811 701812 701813 701814)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) (10017 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701900 701901 701902 701903 701904 701905 701906 701907 701908 701909
     701910 701911 701912 701913 701914)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701900 701901 701902 701903 701904 701905 701906 701907 701908 701909
     701910 701911 701912 701913 701914)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) (10038 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701900 701901 701902 701903 701904 701905 701906 701907 701908 701909
     701910 701911 701912 701913 701914)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701900 701901 701902 701903 701904 701905 701906 701907 701908 701909
     701910 701911 701912 701913 701914)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701900 701901 701902 701903 701904
     701905 701906 701907 701908 701909 701910 701911 701912 701913 701914))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701900 701901 701902 701903 701904 701905 701906
     701907 701908 701909 701910 701911 701912 701913 701914))
SD906 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
FC906 spongiosa energy deposition per bone site, MeV per source photon
FT906 SCX 6
F104:P (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD104 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434
     153.4434 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434
     153.4434 153.4434 153.4434
FC104 AM DRF site 14 (pGy per source photon)
DE104 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF104 LOG 6.13 2.58 1.38 0.598 0.368 0.292 0.276 0.318 0.399 0.656 0.948 1.52
     2.08 2.61 3.12 4.07 4.92 6.76 8.3 10.9 13.2 15.4 17.5 21.6 25.8
FT104 SCX 6
F114:P (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD114 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061
     46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061
     46.1061
FC114 AM DRF site 25 (pGy per source photon)
DE114 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF114 LOG 6.14 2.58 1.38 0.6 0.371 0.295 0.278 0.318 0.399 0.655 0.948 1.51
     2.07 2.61 3.12 4.06 4.91 6.74 8.28 10.9 13.2 15.4 17.5 21.7 25.9
FT114 SCX 6
F124:P (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD124 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367
     389.6367 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367
     389.6367 389.6367 389.6367
FC124 AM DRF site 27 (pGy per source photon)
DE124 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF124 LOG 6.21 2.67 1.48 0.675 0.444 0.363 0.34 0.366 0.439 0.666 0.95 1.48
     2.03 2.54 3.04 3.95 4.78 6.56 8.08 10.7 13.1 15.4 17.6 22.2 26.9
FT124 SCX 6
F134:P (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD134 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359
     412.8359 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359
     412.8359 412.8359 412.8359
FC134 AM DRF site 29 (pGy per source photon)
DE134 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF134 LOG 6.16 2.6 1.4 0.616 0.384 0.307 0.289 0.328 0.408 0.663 0.948 1.51
     2.07 2.6 3.11 4.04 4.9 6.72 8.25 10.9 13.2 15.4 17.5 21.7 26
FT134 SCX 6
F144:P (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD144 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175
     60.17175 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175
     60.17175 60.17175 60.17175
FC144 AM DRF site 40 (pGy per source photon)
DE144 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF144 LOG 6.14 2.58 1.39 0.602 0.372 0.296 0.279 0.319 0.4 0.656 0.947 1.52
     2.08 2.61 3.12 4.07 4.92 6.76 8.3 10.9 13.2 15.4 17.5 21.6 25.8
FT144 SCX 6
F154:P (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD154 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592
     606.7592 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592
     606.7592 606.7592 606.7592
FC154 AM DRF site 42 (pGy per source photon)
DE154 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF154 LOG 6.16 2.6 1.4 0.615 0.384 0.306 0.288 0.326 0.406 0.661 0.947 1.51
     2.07 2.61 3.12 4.06 4.91 6.74 8.28 10.9 13.2 15.4 17.5 21.6 25.9
FT154 SCX 6
F164:P (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD164 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551
     446.1551 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551
     446.1551 446.1551 446.1551
FC164 AM DRF site 44 (pGy per source photon)
DE164 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF164 LOG 6.18 2.62 1.42 0.629 0.395 0.316 0.296 0.333 0.412 0.676 0.947 1.51
     2.07 2.6 3.11 4.05 4.9 6.72 8.26 10.9 13.2 15.4 17.5 21.7 26
FT164 SCX 6
F174:P (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD174 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308
     162.4308 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308
     162.4308 162.4308 162.4308
FC174 AM DRF site 46 (pGy per source photon)
DE174 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF174 LOG 6.16 2.6 1.4 0.616 0.385 0.307 0.289 0.327 0.407 0.661 0.948 1.51
     2.06 2.6 3.1 4.04 4.89 6.71 8.24 10.9 13.2 15.4 17.5 21.7 26.1
FT174 SCX 6
F184:P (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD184 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597
     70.03597 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597
     70.03597 70.03597 70.03597
FC184 AM DRF site 48 (pGy per source photon)
DE184 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF184 LOG 6.19 2.64 1.44 0.643 0.409 0.328 0.308 0.342 0.418 0.668 0.947 1.5
     2.06 2.59 3.09 4.02 4.87 6.68 8.21 10.8 13.2 15.4 17.6 21.8 26.2
FT184 SCX 6
F194:P (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD194 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209
     312.2209 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209
     312.2209 312.2209 312.2209
FC194 AM DRF site 50 (pGy per source photon)
DE194 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF194 LOG 6.16 2.6 1.41 0.618 0.386 0.308 0.289 0.327 0.406 0.66 0.946 1.51
     2.07 2.61 3.11 4.05 4.91 6.73 8.28 10.9 13.2 15.4 17.5 21.7 25.9
FT194 SCX 6
F204:P (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD204 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045
     271.7045 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045
     271.7045 271.7045 271.7045
FC204 AM DRF site 52 (pGy per source photon)
DE204 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF204 LOG 6.17 2.61 1.41 0.62 0.388 0.31 0.291 0.328 0.407 0.661 0.946 1.51
     2.07 2.6 3.11 4.05 4.91 6.73 8.27 10.9 13.2 15.4 17.5 21.7 26
FT204 SCX 6
F214:P (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD214 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032
     168.2032 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032
     168.2032 168.2032 168.2032
FC214 AM DRF site 54 (pGy per source photon)
DE214 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF214 LOG 6.17 2.61 1.41 0.622 0.389 0.311 0.292 0.329 0.408 0.662 0.947 1.51
     2.07 2.6 3.11 4.04 4.9 6.72 8.26 10.9 13.2 15.4 17.5 21.7 26
FT214 SCX 6
F224:P (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD224 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708
     54.10708 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708
     54.10708 54.10708 54.10708
FC224 AM DRF site 56 (pGy per source photon)
DE224 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF224 LOG 6.16 2.6 1.41 0.618 0.386 0.308 0.289 0.327 0.406 0.659 0.946 1.51
     2.07 2.61 3.12 4.06 4.92 6.74 8.29 10.9 13.2 15.4 17.5 21.6 25.9
FT224 SCX 6
F404:P (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10014 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10014 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10014 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10014 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD404 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434
     153.4434 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434 153.4434
     153.4434 153.4434 153.4434
FC404 TM50 DRF site 14 (pGy per source photon)
DE404 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF404 LOG 5.36 2.44 1.46 0.8 0.59 0.504 0.473 0.475 0.517 0.705 0.948 1.52
     2.08 2.61 3.12 4.07 4.92 6.76 8.3 10.9 13.2 15.4 17.5 21.6 25.8
FT404 SCX 6
F414:P (10015 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10015 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10015 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10015 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10015 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10015 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10015 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10015 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10015 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10015 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10015 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10015 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10015 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10015 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10015 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10015 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10015 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10015 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10015 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD414 34.15943 34.15943 34.15943 34.15943 34.15943 34.15943 34.15943 34.15943
     34.15943 34.15943 34.15943 34.15943 34.15943 34.15943 34.15943 34.15943
     34.15943 34.15943 34.15943
FC414 TM50 DRF site 15 (pGy per source photon)
DE414 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF414 LOG 3.78 1.54 0.806 0.325 0.195 0.167 0.175 0.232 0.304 0.599 0.948 1.53
     2.1 2.65 3.17 4.12 4.99 6.86 8.41 11 13.3 15.4 17.4 21.3 25.2
FT414 SCX 6
F424:P (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10017 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10017 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10017 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10017 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10017 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10017 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10017 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10017 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10017 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10017 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10017 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD424 53.74174 53.74174 53.74174 53.74174 53.74174 53.74174 53.74174 53.74174
     53.74174 53.74174 53.74174 53.74174 53.74174 53.74174 53.74174 53.74174
     53.74174 53.74174 53.74174
FC424 TM50 DRF site 17 (pGy per source photon)
DE424 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF424 LOG 4.71 2.17 1.33 0.744 0.562 0.488 0.458 0.459 0.497 0.697 0.949 1.51
     2.07 2.6 3.11 4.05 4.9 6.73 8.26 10.9 13.2 15.4 17.5 21.7 26
FT424 SCX 6
F434:P (10018 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10018 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10018 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10018 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10018 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10018 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10018 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10018 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10018 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10018 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10018 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10018 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10018 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10018 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10018 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10018 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10018 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10018 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10018 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD434 37.88592 37.88592 37.88592 37.88592 37.88592 37.88592 37.88592 37.88592
     37.88592 37.88592 37.88592 37.88592 37.88592 37.88592 37.88592 37.88592
     37.88592 37.88592 37.88592
FC434 TM50 DRF site 18 (pGy per source photon)
DE434 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF434 LOG 3.78 1.54 0.806 0.325 0.195 0.167 0.175 0.232 0.304 0.599 0.948 1.53
     2.1 2.65 3.17 4.12 4.99 6.86 8.41 11 13.3 15.4 17.4 21.3 25.2
FT434 SCX 6
F444:P (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10020 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10020 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10020 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10020 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10020 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10020 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10020 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD444 164.8421 164.8421 164.8421 164.8421 164.8421 164.8421 164.8421 164.8421
     164.8421 164.8421 164.8421 164.8421 164.8421 164.8421 164.8421 164.8421
     164.8421 164.8421 164.8421
FC444 TM50 DRF site 20 (pGy per source photon)
DE444 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF444 LOG 4.75 2.19 1.33 0.749 0.561 0.488 0.458 0.46 0.499 0.689 0.949 1.51
     2.08 2.61 3.12 4.06 4.92 6.75 8.28 10.9 13.2 15.4 17.5 21.6 25.8
FT444 SCX 6
F454:P (10021 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10021 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10021 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10021 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10021 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10021 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10021 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10021 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10021 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10021 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10021 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10021 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10021 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10021 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10021 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10021 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10021 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10021 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10021 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD454 23.16265 23.16265 23.16265 23.16265 23.16265 23.16265 23.16265 23.16265
     23.16265 23.16265 23.16265 23.16265 23.16265 23.16265 23.16265 23.16265
     23.16265 23.16265 23.16265
FC454 TM50 DRF site 21 (pGy per source photon)
DE454 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF454 LOG 4.38 1.79 0.935 0.376 0.226 0.194 0.203 0.269 0.353 0.62 0.948 1.53
     2.1 2.65 3.17 4.12 4.99 6.86 8.41 11 13.3 15.4 17.4 21.3 25.2
FT454 SCX 6
F464:P (10023 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10023 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10023 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10023 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10023 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10023 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10023 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10023 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10023 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10023 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10023 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD464 125.5679 125.5679 125.5679 125.5679 125.5679 125.5679 125.5679 125.5679
     125.5679 125.5679 125.5679 125.5679 125.5679 125.5679 125.5679 125.5679
     125.5679 125.5679 125.5679
FC464 TM50 DRF site 23 (pGy per source photon)
DE464 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF464 LOG 5.15 2.39 1.47 0.836 0.633 0.549 0.516 0.513 0.548 0.715 0.949 1.51
     2.07 2.6 3.11 4.05 4.9 6.73 8.26 10.9 13.2 15.4 17.5 21.7 26
FT464 SCX 6
F474:P (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10025 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10025 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10025 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10025 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD474 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061
     46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061 46.1061
     46.1061
FC474 TM50 DRF site 25 (pGy per source photon)
DE474 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF474 LOG 5.81 2.62 1.55 0.832 0.603 0.514 0.48 0.487 0.537 0.721 0.948 1.51
     2.07 2.61 3.12 4.06 4.91 6.74 8.28 10.9 13.2 15.4 17.5 21.7 25.9
FT474 SCX 6
F484:P (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10027 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10027 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10027 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10027 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD484 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367
     389.6367 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367 389.6367
     389.6367 389.6367 389.6367
FC484 TM50 DRF site 27 (pGy per source photon)
DE484 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF484 LOG 5.78 2.58 1.5 0.757 0.548 0.474 0.451 0.471 0.537 0.71 0.95 1.48
     2.03 2.54 3.04 3.95 4.78 6.56 8.08 10.7 13.1 15.4 17.6 22.2 26.9
FT484 SCX 6
F494:P (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10029 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10029 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10029 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10029 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD494 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359
     412.8359 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359 412.8359
     412.8359 412.8359 412.8359
FC494 TM50 DRF site 29 (pGy per source photon)
DE494 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF494 LOG 5.03 2.31 1.39 0.768 0.565 0.484 0.451 0.451 0.487 0.68 0.948 1.51
     2.07 2.6 3.11 4.04 4.9 6.72 8.25 10.9 13.2 15.4 17.5 21.7 26
FT494 SCX 6
F504:P (10030 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10030 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10030 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10030 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10030 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10030 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10030 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10030 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10030 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10030 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10030 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10030 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10030 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10030 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10030 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10030 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10030 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10030 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10030 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD504 26.52379 26.52379 26.52379 26.52379 26.52379 26.52379 26.52379 26.52379
     26.52379 26.52379 26.52379 26.52379 26.52379 26.52379 26.52379 26.52379
     26.52379 26.52379 26.52379
FC504 TM50 DRF site 30 (pGy per source photon)
DE504 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF504 LOG 3.74 1.53 0.797 0.321 0.193 0.166 0.173 0.229 0.311 0.613 0.948 1.53
     2.1 2.65 3.17 4.12 4.99 6.86 8.41 11 13.3 15.4 17.4 21.3 25.2
FT504 SCX 6
F514:P (10032 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10032 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10032 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10032 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10032 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10032 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10032 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10032 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10032 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10032 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10032 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD514 401.145 401.145 401.145 401.145 401.145 401.145 401.145 401.145 401.145
     401.145 401.145 401.145 401.145 401.145 401.145 401.145 401.145 401.145
     401.145
FC514 TM50 DRF site 32 (pGy per source photon)
DE514 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF514 LOG 5.3 2.44 1.48 0.823 0.615 0.535 0.506 0.511 0.556 0.726 0.949 1.51
     2.07 2.61 3.11 4.05 4.9 6.73 8.27 10.9 13.2 15.4 17.5 21.7 25.9
FT514 SCX 6
F524:P (10033 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10033 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10033 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10033 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10033 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10033 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10033 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10033 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10033 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10033 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10033 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10033 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10033 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10033 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10033 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10033 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10033 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10033 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10033 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD524 83.00559 83.00559 83.00559 83.00559 83.00559 83.00559 83.00559 83.00559
     83.00559 83.00559 83.00559 83.00559 83.00559 83.00559 83.00559 83.00559
     83.00559 83.00559 83.00559
FC524 TM50 DRF site 33 (pGy per source photon)
DE524 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF524 LOG 3.74 1.53 0.797 0.321 0.193 0.166 0.173 0.229 0.311 0.613 0.948 1.53
     2.1 2.65 3.17 4.12 4.99 6.86 8.41 11 13.3 15.4 17.4 21.3 25.2
FT524 SCX 6
F534:P (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10035 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10035 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10035 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10035 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10035 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10035 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10035 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10035 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10035 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10035 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10035 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD534 647.4948 647.4948 647.4948 647.4948 647.4948 647.4948 647.4948 647.4948
     647.4948 647.4948 647.4948 647.4948 647.4948 647.4948 647.4948 647.4948
     647.4948 647.4948 647.4948
FC534 TM50 DRF site 35 (pGy per source photon)
DE534 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF534 LOG 4.57 2.1 1.27 0.71 0.53 0.461 0.434 0.438 0.483 0.684 0.949 1.51
     2.08 2.61 3.12 4.06 4.92 6.75 8.29 10.9 13.2 15.4 17.5 21.6 25.8
FT534 SCX 6
F544:P (10036 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10036 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10036 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10036 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10036 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10036 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10036 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10036 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10036 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10036 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10036 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10036 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10036 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10036 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10036 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10036 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10036 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10036 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10036 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD544 80.26553 80.26553 80.26553 80.26553 80.26553 80.26553 80.26553 80.26553
     80.26553 80.26553 80.26553 80.26553 80.26553 80.26553 80.26553 80.26553
     80.26553 80.26553 80.26553
FC544 TM50 DRF site 36 (pGy per source photon)
DE544 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF544 LOG 4.38 1.79 0.935 0.376 0.225 0.194 0.203 0.269 0.353 0.63 0.948 1.53
     2.1 2.65 3.17 4.12 4.99 6.86 8.41 11 13.3 15.4 17.4 21.3 25.2
FT544 SCX 6
F554:P (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10038 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10038 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10038 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10038 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10038 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10038 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10038 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10038 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10038 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10038 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10038 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD554 458.1017 458.1017 458.1017 458.1017 458.1017 458.1017 458.1017 458.1017
     458.1017 458.1017 458.1017 458.1017 458.1017 458.1017 458.1017 458.1017
     458.1017 458.1017 458.1017
FC554 TM50 DRF site 38 (pGy per source photon)
DE554 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF554 LOG 5.11 2.35 1.42 0.79 0.596 0.517 0.487 0.49 0.532 0.712 0.949 1.51
     2.07 2.61 3.11 4.05 4.9 6.73 8.27 10.9 13.2 15.4 17.5 21.7 25.9
FT554 SCX 6
F564:P (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10040 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10040 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10040 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10040 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD564 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175
     60.17175 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175 60.17175
     60.17175 60.17175 60.17175
FC564 TM50 DRF site 40 (pGy per source photon)
DE564 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF564 LOG 5.56 2.54 1.51 0.816 0.594 0.506 0.47 0.468 0.51 0.717 0.947 1.52
     2.08 2.61 3.12 4.07 4.92 6.76 8.3 10.9 13.2 15.4 17.5 21.6 25.8
FT564 SCX 6
F574:P (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10042 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10042 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10042 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10042 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD574 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592
     606.7592 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592 606.7592
     606.7592 606.7592 606.7592
FC574 TM50 DRF site 42 (pGy per source photon)
DE574 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF574 LOG 5.13 2.35 1.39 0.748 0.545 0.463 0.43 0.424 0.458 0.671 0.947 1.51
     2.07 2.61 3.12 4.06 4.91 6.74 8.28 10.9 13.2 15.4 17.5 21.6 25.9
FT574 SCX 6
F584:P (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10044 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10044 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10044 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10044 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD584 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551
     446.1551 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551 446.1551
     446.1551 446.1551 446.1551
FC584 TM50 DRF site 44 (pGy per source photon)
DE584 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF584 LOG 6.15 2.77 1.64 0.861 0.617 0.519 0.48 0.477 0.517 0.712 0.947 1.51
     2.07 2.6 3.11 4.05 4.9 6.72 8.26 10.9 13.2 15.4 17.5 21.7 26
FT584 SCX 6
F594:P (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10046 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10046 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10046 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10046 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD594 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308
     162.4308 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308 162.4308
     162.4308 162.4308 162.4308
FC594 TM50 DRF site 46 (pGy per source photon)
DE594 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF594 LOG 5.74 2.63 1.57 0.861 0.629 0.537 0.499 0.494 0.533 0.724 0.948 1.51
     2.06 2.6 3.1 4.04 4.89 6.71 8.24 10.9 13.2 15.4 17.5 21.7 26.1
FT594 SCX 6
F604:P (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10048 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10048 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10048 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10048 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD604 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597
     70.03597 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597 70.03597
     70.03597 70.03597 70.03597
FC604 TM50 DRF site 48 (pGy per source photon)
DE604 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF604 LOG 5.96 2.71 1.61 0.856 0.615 0.518 0.476 0.469 0.505 0.701 0.947 1.5
     2.06 2.59 3.09 4.02 4.87 6.68 8.21 10.8 13.2 15.4 17.6 21.8 26.2
FT604 SCX 6
F614:P (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10050 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10050 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10050 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10050 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD614 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209
     312.2209 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209 312.2209
     312.2209 312.2209 312.2209
FC614 TM50 DRF site 50 (pGy per source photon)
DE614 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF614 LOG 6.04 2.74 1.62 0.857 0.611 0.514 0.473 0.468 0.507 0.707 0.946 1.51
     2.07 2.61 3.11 4.05 4.91 6.73 8.28 10.9 13.2 15.4 17.5 21.7 25.9
FT614 SCX 6
F624:P (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10052 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10052 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10052 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10052 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD624 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045
     271.7045 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045 271.7045
     271.7045 271.7045 271.7045
FC624 TM50 DRF site 52 (pGy per source photon)
DE624 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF624 LOG 5.65 2.57 1.51 0.801 0.575 0.482 0.444 0.439 0.475 0.664 0.946 1.51
     2.07 2.6 3.11 4.05 4.91 6.73 8.27 10.9 13.2 15.4 17.5 21.7 26
FT624 SCX 6
F634:P (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10054 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10054 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10054 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10054 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD634 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032
     168.2032 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032 168.2032
     168.2032 168.2032 168.2032
FC634 TM50 DRF site 54 (pGy per source photon)
DE634 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF634 LOG 5.44 2.47 1.45 0.769 0.547 0.461 0.426 0.421 0.457 0.673 0.947 1.51
     2.07 2.6 3.11 4.04 4.9 6.72 8.26 10.9 13.2 15.4 17.5 21.7 26
FT634 SCX 6
F644:P (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700100 700101 700102 700103 700104 700105 700106
     700107 700108 700109 700110 700111 700112 700113 700114)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700200 700201 700202 700203 700204 700205 700206 700207 700208 700209
     700210 700211 700212 700213 700214)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700300 700301
     700302 700303 700304 700305 700306 700307 700308 700309 700310 700311
     700312 700313 700314)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700400 700401 700402 700403 700404
     700405 700406 700407 700408 700409 700410 700411 700412 700413 700414))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700500 700501 700502 700503 700504 700505 700506
     700507 700508 700509 700510 700511 700512 700513 700514)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (700600 700601 700602 700603 700604 700605 700606 700607 700608 700609
     700610 700611 700612 700613 700614)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (700700 700701
     700702 700703 700704 700705 700706 700707 700708 700709 700710 700711
     700712 700713 700714)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (700800 700801 700802 700803 700804
     700805 700806 700807 700808 700809 700810 700811 700812 700813 700814))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (700900 700901 700902 700903 700904 700905 700906
     700907 700908 700909 700910 700911 700912 700913 700914)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701000 701001 701002 701003 701004 701005 701006 701007 701008 701009
     701010 701011 701012 701013 701014)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701100 701101
     701102 701103 701104 701105 701106 701107 701108 701109 701110 701111
     701112 701113 701114)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701200 701201 701202 701203 701204
     701205 701206 701207 701208 701209 701210 701211 701212 701213 701214))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701300 701301 701302 701303 701304 701305 701306
     701307 701308 701309 701310 701311 701312 701313 701314)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701400 701401 701402 701403 701404 701405 701406 701407 701408 701409
     701410 701411 701412 701413 701414)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701500 701501
     701502 701503 701504 701505 701506 701507 701508 701509 701510 701511
     701512 701513 701514)) (10056 < (3100 3101 3102 3103 3104 3105 3106 3107
     3108 3109 3110 3111 3112 3113 3114) < (701600 701601 701602 701603 701604
     701605 701606 701607 701608 701609 701610 701611 701612 701613 701614))
     (10056 < (3100 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111
     3112 3113 3114) < (701700 701701 701702 701703 701704 701705 701706
     701707 701708 701709 701710 701711 701712 701713 701714)) (10056 < (3100
     3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) <
     (701800 701801 701802 701803 701804 701805 701806 701807 701808 701809
     701810 701811 701812 701813 701814)) (10056 < (3100 3101 3102 3103 3104
     3105 3106 3107 3108 3109 3110 3111 3112 3113 3114) < (701900 701901
     701902 701903 701904 701905 701906 701907 701908 701909 701910 701911
     701912 701913 701914))
SD644 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708
     54.10708 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708 54.10708
     54.10708 54.10708 54.10708
FC644 TM50 DRF site 56 (pGy per source photon)
DE644 LOG 0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 0.1 0.15 0.2 0.3 0.4 0.5
     0.6 0.8 1 1.5 2 3 4 5 6 8 10
DF644 LOG 5.73 2.61 1.54 0.808 0.576 0.484 0.447 0.443 0.479 0.67 0.946 1.51
     2.07 2.61 3.12 4.06 4.92 6.74 8.29 10.9 13.2 15.4 17.5 21.6 25.9
FT644 SCX 6
c ============ RUN CONTROL
MODE P
VOL NO
NPS 1000000000
CTME 900
PRDMP j -60 1 1
LOST 1000 20
c ---- materials: ICRP110 media (AM: m1-m53, AF: m101-m153), air, vehicle
m1 1000 -0.02200 6000 -0.09500 7000 -0.02900 8000 -0.42100 12000 -0.00700
     15000 -0.13700 20000 -0.28900
m2 1000 -0.03600 6000 -0.15900 7000 -0.04200 8000 -0.44800 11000 -0.00300
     12000 -0.00200 15000 -0.09400 16000 -0.00300 20000 -0.21300
m3 1000 -0.08500 6000 -0.28800 7000 -0.02600 8000 -0.49800 11000 -0.00200
     12000 -0.00100 15000 -0.03300 16000 -0.00400 17000 -0.00200 20000
     -0.06100
m4 1000 -0.09700 6000 -0.43900 7000 -0.01700 8000 -0.38100 11000 -0.00200
     15000 -0.02100 16000 -0.00300 17000 -0.00100 20000 -0.03900
m5 1000 -0.09700 6000 -0.43900 7000 -0.01700 8000 -0.38100 11000 -0.00200
     15000 -0.02100 16000 -0.00300 17000 -0.00100 20000 -0.03900
m6 1000 -0.09700 6000 -0.43900 7000 -0.01700 8000 -0.38100 11000 -0.00200
     15000 -0.02100 16000 -0.00300 17000 -0.00100 20000 -0.03900
m7 1000 -0.09100 6000 -0.34800 7000 -0.02400 8000 -0.45700 11000 -0.00200
     15000 -0.02600 16000 -0.00300 17000 -0.00100 20000 -0.04800
m8 1000 -0.09000 6000 -0.33500 7000 -0.02500 8000 -0.46700 11000 -0.00200
     15000 -0.02600 16000 -0.00300 17000 -0.00200 19000 -0.00100 20000
     -0.04900
m9 1000 -0.09400 6000 -0.38500 7000 -0.02200 8000 -0.43000 11000 -0.00200
     15000 -0.02200 16000 -0.00300 17000 -0.00100 20000 -0.04100
m10 1000 -0.09700 6000 -0.43900 7000 -0.01700 8000 -0.38100 11000 -0.00200
     15000 -0.02100 16000 -0.00300 17000 -0.00100 20000 -0.03900
m11 1000 -0.09700 6000 -0.43900 7000 -0.01700 8000 -0.38100 11000 -0.00200
     15000 -0.02100 16000 -0.00300 17000 -0.00100 20000 -0.03900
m12 1000 -0.09700 6000 -0.43900 7000 -0.01700 8000 -0.38100 11000 -0.00200
     15000 -0.02100 16000 -0.00300 17000 -0.00100 20000 -0.03900
m13 1000 -0.08300 6000 -0.26600 7000 -0.02700 8000 -0.51100 11000 -0.00300
     12000 -0.00100 15000 -0.03600 16000 -0.00400 17000 -0.00200 20000
     -0.06700
m14 1000 -0.09400 6000 -0.36000 7000 -0.02500 8000 -0.45400 11000 -0.00200
     15000 -0.02100 16000 -0.00300 17000 -0.00200 19000 -0.00100 20000
     -0.03800
m15 1000 -0.08900 6000 -0.29200 7000 -0.02900 8000 -0.50700 11000 -0.00200
     15000 -0.02600 16000 -0.00400 17000 -0.00200 19000 -0.00100 20000
     -0.04800
m16 1000 -0.08700 6000 -0.30900 7000 -0.02600 8000 -0.48300 11000 -0.00200
     12000 -0.00100 15000 -0.03000 16000 -0.00400 17000 -0.00200 20000
     -0.05600
m17 1000 -0.10300 6000 -0.40000 7000 -0.02700 8000 -0.44400 11000 -0.00100
     15000 -0.00700 16000 -0.00200 17000 -0.00200 19000 -0.00100 20000
     -0.01200 26000 -0.00100
m18 1000 -0.09900 6000 -0.37600 7000 -0.02700 8000 -0.45900 11000 -0.00100
     15000 -0.01200 16000 -0.00200 17000 -0.00200 19000 -0.00100 20000
     -0.02000 26000 -0.00100
m19 1000 -0.09500 6000 -0.34000 7000 -0.02800 8000 -0.48000 11000 -0.00100
     15000 -0.01800 16000 -0.00300 17000 -0.00200 19000 -0.00100 20000
     -0.03200
m20 1000 -0.10500 6000 -0.41900 7000 -0.02700 8000 -0.43200 11000 -0.00100
     15000 -0.00400 16000 -0.00200 17000 -0.00200 19000 -0.00100 20000
     -0.00600 26000 -0.00100
m21 1000 -0.10400 6000 -0.40900 7000 -0.02700 8000 -0.43800 11000 -0.00100
     15000 -0.00600 16000 -0.00200 17000 -0.00200 19000 -0.00100 20000
     -0.00900 26000 -0.00100
m22 1000 -0.11500 6000 -0.63600 7000 -0.00700 8000 -0.23900 11000 -0.00100
     16000 -0.00100 17000 -0.00100
m23 1000 -0.11500 6000 -0.63600 7000 -0.00700 8000 -0.23900 11000 -0.00100
     16000 -0.00100 17000 -0.00100
m24 1000 -0.11500 6000 -0.63600 7000 -0.00700 8000 -0.23900 11000 -0.00100
     16000 -0.00100 17000 -0.00100
m25 1000 -0.11500 6000 -0.63600 7000 -0.00700 8000 -0.23900 11000 -0.00100
     16000 -0.00100 17000 -0.00100
m26 1000 -0.09600 6000 -0.09900 7000 -0.02200 8000 -0.74400 11000 -0.00500
     15000 -0.02200 16000 -0.00900 17000 -0.00300
m27 1000 -0.10000 6000 -0.19900 7000 -0.04200 8000 -0.65000 11000 -0.00200
     15000 -0.00100 16000 -0.00200 17000 -0.00300 19000 -0.00100
m28 1000 -0.10200 6000 -0.11000 7000 -0.03300 8000 -0.74500 11000 -0.00100
     15000 -0.00100 16000 -0.00200 17000 -0.00300 19000 -0.00200 26000
     -0.00100
m29 1000 -0.10200 6000 -0.14200 7000 -0.03400 8000 -0.71100 11000 -0.00100
     15000 -0.00200 16000 -0.00300 17000 -0.00100 19000 -0.00400
m30 1000 -0.10200 6000 -0.13000 7000 -0.03100 8000 -0.72500 11000 -0.00200
     15000 -0.00200 16000 -0.00300 17000 -0.00200 19000 -0.00300
m31 1000 -0.10500 6000 -0.15500 7000 -0.02500 8000 -0.70600 11000 -0.00200
     15000 -0.00200 16000 -0.00100 17000 -0.00200 19000 -0.00200
m32 1000 -0.10700 6000 -0.14300 7000 -0.02300 8000 -0.71300 11000 -0.00200
     15000 -0.00400 16000 -0.00200 17000 -0.00300 19000 -0.00300
m33 1000 -0.10400 6000 -0.13800 7000 -0.02900 8000 -0.71900 11000 -0.00100
     15000 -0.00200 16000 -0.00200 17000 -0.00200 19000 -0.00300
m34 1000 -0.09700 6000 -0.18100 7000 -0.05300 8000 -0.66300 11000 -0.00100
     15000 -0.00100 16000 -0.00300 17000 -0.00100
m35 1000 -0.10300 6000 -0.12400 7000 -0.03100 8000 -0.73100 11000 -0.00200
     15000 -0.00200 16000 -0.00200 17000 -0.00200 19000 -0.00200 20000
     -0.00100
m36 1000 -0.10500 6000 -0.11400 7000 -0.02500 8000 -0.75000 11000 -0.00100
     15000 -0.00100 16000 -0.00100 17000 -0.00200 19000 -0.00100
m37 1000 -0.10500 6000 -0.11300 7000 -0.02600 8000 -0.75000 11000 -0.00100
     15000 -0.00100 16000 -0.00100 17000 -0.00200 19000 -0.00100
m38 1000 -0.10500 6000 -0.11300 7000 -0.02600 8000 -0.75000 11000 -0.00100
     15000 -0.00100 16000 -0.00100 17000 -0.00200 19000 -0.00100
m39 1000 -0.10200 6000 -0.11100 7000 -0.03300 8000 -0.74300 11000 -0.00100
     15000 -0.00200 16000 -0.00200 17000 -0.00300 19000 -0.00200 26000
     -0.00100
m40 1000 -0.10400 6000 -0.11700 7000 -0.02600 8000 -0.74500 11000 -0.00200
     15000 -0.00100 16000 -0.00100 17000 -0.00200 19000 -0.00100 53000
     -0.00100
m41 1000 -0.10500 6000 -0.09600 7000 -0.02600 8000 -0.76100 11000 -0.00200
     15000 -0.00200 16000 -0.00200 17000 -0.00300 19000 -0.00300
m42 1000 -0.10600 6000 -0.10000 7000 -0.02100 8000 -0.76400 11000 -0.00200
     15000 -0.00100 16000 -0.00200 17000 -0.00200 19000 -0.00200
m43 1000 -0.10400 6000 -0.22100 7000 -0.02800 8000 -0.63700 11000 -0.00100
     15000 -0.00200 16000 -0.00300 17000 -0.00200 19000 -0.00200
m44 1000 -0.10400 6000 -0.21300 7000 -0.02900 8000 -0.64400 11000 -0.00100
     15000 -0.00200 16000 -0.00300 17000 -0.00200 19000 -0.00200
m45 1000 -0.10400 6000 -0.23100 7000 -0.02800 8000 -0.62700 11000 -0.00100
     15000 -0.00200 16000 -0.00300 17000 -0.00200 19000 -0.00200
m46 1000 -0.10400 6000 -0.23100 7000 -0.02800 8000 -0.62700 11000 -0.00100
     15000 -0.00200 16000 -0.00300 17000 -0.00200 19000 -0.00200
m47 1000 -0.10800 6000 -0.04200 7000 -0.01100 8000 -0.83100 11000 -0.00300
     16000 -0.00100 17000 -0.00400
m48 1000 -0.11200 6000 -0.51600 7000 -0.01100 8000 -0.35800 11000 -0.00100
     16000 -0.00100 17000 -0.00100
m49 1000 -0.11400 6000 -0.58800 7000 -0.00800 8000 -0.28700 11000 -0.00100
     16000 -0.00100 17000 -0.00100
m50 1000 -0.10300 6000 -0.10700 7000 -0.03200 8000 -0.74600 11000 -0.00200
     15000 -0.00200 16000 -0.00300 17000 -0.00300 19000 -0.00200
m51 1000 -0.10000 6000 -0.22200 7000 -0.02200 8000 -0.64400 11000 -0.00100
     15000 -0.00200 16000 -0.00300 17000 -0.00100 19000 -0.00400 20000
     -0.00100
m52 1000 -0.10700 6000 -0.00300 7000 -0.01000 8000 -0.87300 11000 -0.00400
     15000 -0.00100 19000 -0.00200
m53 7000 -0.80000 8000 -0.20000
m200 6000 -0.000124 7000 -0.755268 8000 -0.231781 18000 -0.012827
m201 26000 -0.988 25000 -0.008 6000 -0.004
m202 13000 -1.0
m203 8000 -0.4598 11000 -0.0964 14000 -0.3365 20000 -0.1072 12000 -0.0001
m204 1000 -0.062 6000 -0.495 8000 -0.443
m205 1000 -0.0484 6000 -0.3844 17000 -0.5672
m206 1000 -0.071 6000 -0.630 7000 -0.068 8000 -0.231
m207 1000 -0.1437 6000 -0.8563
