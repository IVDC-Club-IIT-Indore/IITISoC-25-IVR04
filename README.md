# IITISoC-25-IVR0xx PS Title

Team Members

_**Team Member 1**:  JAAJIMOGGALA RAMARAJU
_**Team Member 2**:  PRAJAY VARMA

_**Team Member 3**:  [@user3](https://github.com/user3)_

_**Team Member 4**:  [@user4](https://github.com/user4)_

Mentors

_**Mentor 1**:  SARANG JAGDISH
_**Mentor 2**:  [@mentor2](https://github.com/mentor2)_

 Battery Pack Modeling using MATLAB Simulink:

 Project Overview:

This project is focused on building a lithium-ion battery pack in MATLAB Simulink using the Simscape Battery Toolbox. The goal is to simulate a basic battery setup and observe heat generation during operation. This is part of an EV Battery Thermal Management System (BTMS) project.


 What’s Done So Far ;

- A "battery pack" has been created using programmatic commands (not drag-and-drop).
- The pack includes pouch cells arranged in a specific structure:
  - 3 cells in "parallel" → 11 such groups in "series" → 2 modules combined → 5 module assemblies
- Thermal port is enabled so we can monitor temperature.
- No complex thermal or cooling system has been added yet.


Tools Used

- MATLAB 
- Simscape 
- Simulink


 Files Included

- `battery_pack_creation.m` → MATLAB script that builds the battery pack
- `README.md` → This documentation file


How to Use

1. Open MATLAB
2. Run the battery pack script:
   ```matlab
   run('battery_pack_creation.m')
