% Author: Ram & Prajay 
% Description: Script to build battery pack using Simscape Battery

import simscape.battery.builder.*

% Step 1: Define pouch cell geometry
pouchGeometry = batteryPouchGeometry( ...
    simscape.Value(0.1,"m"), ...
    simscape.Value(0.3,"m"), ...
    TabLocation="Opposed");

% Step 2: Create a pouch cell and enable thermal port
pouchCell = batteryCell(pouchGeometry);
pouchCell.CellModelOptions.BlockParameters.thermal_port = "model";

% Step 3: Create parallel assembly (3 cells in parallel)
parallelAssembly = batteryParallelAssembly(pouchCell, 3);

% Step 4: Create battery module (11 series assemblies)
module = batteryModule(parallelAssembly, 11, ...
    InterParallelAssemblyGap=simscape.Value(0.005,"m"));

% Step 5: Create module assembly (2 modules)
moduleAssembly = batteryModuleAssembly( ...
    repmat(module,1,2), ...
    InterModuleGap=simscape.Value(0.1,"m"));

% Step 6: Create full battery pack (5 module assemblies)
pack = batteryPack(repmat(moduleAssembly,1,5), ...
    InterModuleAssemblyGap=simscape.Value(0.01,"m"));

% Step 7: Build battery library for Simulink
buildBattery(pack, LibraryName="packLibraryBTM");

%  Visualize pack
f = figure(Name="Battery Pack", Color="white");
batteryChart(f, pack);
