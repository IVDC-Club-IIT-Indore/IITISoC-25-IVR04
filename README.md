# IITISoC-25-IVR0xx PS Title

Team Members

_**Team Member 1**:  JAAJIMOGGALA RAMARAJU
_**Team Member 2**:  PRAJAY VARMA

_**Team Member 3**:  [@user3](https://github.com/user3)_

_**Team Member 4**:  [@user4](https://github.com/user4)_

Mentors

_**Mentor 1**:  SARANG JAGDISH
_**Mentor 2**:  [@mentor2](https://github.com/mentor2)_



# Battery Thermal Management System using MATLAB/Simulink

This project is about simulating a Battery Thermal Management System (BTMS) for lithium-ion battery pack using MATLAB Simulink. The model mainly uses a cooling plate with ON/OFF logic to manage battery temperature during operation. We used different modeling approaches and Simulink files to implement and test the system.



Tools Used

- MATLAB 
- Simscape 
- Simulink


---

## 🔧 Files and Descriptions

### 1. `batterypack_coolingplate.slx`

This is the main Simulink model we used to simulate the cooling plate-based BTMS. The battery pack used in this model was imported from a `myBatteryPack.slx` file that we had created using the Simscape Battery Builder. The battery was connected to a thermal system with a cooling plate, thermal reservoir, and ON/OFF switching logic based on temperature. This file shows how the basic BTMS system works using logic blocks and thermal components.you have to first load`myBatteryPack.mat` before using model.

### 2. `batteriesUR_Pack.slx`

This model contains the battery pack we brought directly from a `.mat` file that was previously created using Battery Builder in Simscape. It was used as a reference or base for modeling the main BTMS system. It helped us understand how to import custom-built battery packs into Simulink.

### 3. `NBatteries.slx`

This file contains a battery pack that we created completely using MathWorks' Battery Builder tool. It models a full 1 kWh lithium-ion battery pack with the following configuration:
- 10 cylindrical cells in parallel
- 2 parallel assemblies in series = 1 module
- 2 modules in series = 1 module assembly
- 5 module assemblies in series = 1 battery pack

This structure was modeled directly using `simscape.battery.builder`. The geometry used for each cell was cylindrical. This file was used as the base for our fan/radiator cooling model.

### 4. `ncoolingfan.slx`

In this file, we attempted to create a more advanced BTMS using a fan and radiator system. We used fan blocks and heat exchanger components from Simulink to cool the battery pack created in `NBatteries.slx`. However, this model did not simulate successfully due to issues with unit mismatches (like m³/s vs. kg/s) and physical port connection errors. Although it didn’t run, it showed us how complex active cooling models can be and helped us identify areas that need debugging.

---

## 💡 Summary

- We used Battery Builder to build realistic battery packs in different configurations.
- Multiple Simulink models were created to test various cooling methods (cooling plate, fan, heat exchanger).
- Our main working model is `batterypack_coolingplate.slx` which uses a basic ON/OFF control method.
- Other models were helpful in experimenting and learning, even though not all of them ran successfully.

This work helped us get a better understanding of Simscape Battery modeling and different BTMS architectures using MATLAB.

 

