

## Description
d3q27_tePSM_per_SUP


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at FETCH_HEAD)/src/d3q27_tePSM_per_SUP/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at FETCH_HEAD)/src/d3q27_tePSM_per_SUP/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`WallVelocityX`|WallVelocity x-direction|
|`WallVelocityY`|WallVelocity y-direction|
|`WallVelocityZ`|WallVelocity z-direction|
|`Pressure`|Inlet pressure|
|`InitTemperature`|initial temperature|
|`WallTemperatureGradient`|Gradient of temperature along wall|
|`MediaNumber`|Media Number|
|`TotalSVFInObj`|Weight of [Total of solids throughout domain] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omegaF`||one over F relaxation time|
|`omegaFplus`||one over F+ relaxation time for TRT|
|`omegaFminus`||one over F- relaxation time for TRT|
|`InitVelocityX`||Initialisation x-velocity|
|`InitVelocityY`||Initialisation y-velocity|
|`InitVelocityZ`||Initialisation z-velocity|
|`InletPressure`||inlet pressure|
|`InletDensity`|1.0+InletPressure/3|inlet density|
|`GravitationX`||applied (rho)*GravitationX|
|`GravitationY`||applied (rho)*GravitationY|
|`GravitationZ`||applied (rho)*GravitationZ|
|`AccelX`||body acceleration X|
|`AccelY`||body acceleration Y|
|`AccelZ`||body acceleration Z|
|`DNx`||Total nodes in X direction|
|`DNy`||Total nodes in Y direction|
|`DNz`||Total nodes in Z direction|
|`omegaH`||one over H relaxation time|
|`alpha`||Thermal Diffusivity|
|`omegaHplus`||one over H+ relaxation time for TRT|
|`omegaHminus`||one over H- relaxation time for TRT|
|`ViscCoeff`||Thermoviscous coefficient|
|`BoussinesqCoeff`||Boussinesq force coefficient|
|`FluidCv`||Thermal Cv|
|`FluidRho`||Material desnsity|
|`FluidConductivity`||Thermal Conductivity|
|`SolidCv`||Thermal Cv|
|`SolidRho`||Material density - solid|
|`SolidConductivity`||Thermal Conductivity|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Solid`|`1`|Solid|
|`U`|`m/s`|U|
|`Rho`|`kg/m3`|Rho|
|`T`|`K`|T|
|`T2`|`K`|T2|
|`TotEnergy`|`1`|TotEnergy|
|`TE2`|`1`|TE2|
|`Cv`|`1`|Cv|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`TotalSVF`|`1`|Total of solids throughout domain|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|Interface, Med2|
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, NWall, EWall, WWall, SWall, FWall, BWall, NPressure, SPressure, FPressure, BPressure|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f[0]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[0]|
|`f[1]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[1]|
|`f[2]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[2]|
|`f[3]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[3]|
|`f[4]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[4]|
|`f[5]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[5]|
|`f[6]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[6]|
|`f[7]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[7]|
|`f[8]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[8]|
|`f[9]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[9]|
|`f[10]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[10]|
|`f[11]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[11]|
|`f[12]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[12]|
|`f[13]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[13]|
|`f[14]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[14]|
|`f[15]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[15]|
|`f[16]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[16]|
|`f[17]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[17]|
|`f[18]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[18]|
|`f[19]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[19]|
|`f[20]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[20]|
|`f[21]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[21]|
|`f[22]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[22]|
|`f[23]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[23]|
|`f[24]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[24]|
|`f[25]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[25]|
|`f[26]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|f[26]|
|`h[0]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[0]|
|`h[1]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[1]|
|`h[2]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[2]|
|`h[3]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[3]|
|`h[4]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[4]|
|`h[5]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[5]|
|`h[6]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[6]|
|`h[7]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[7]|
|`h[8]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[8]|
|`h[9]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[9]|
|`h[10]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[10]|
|`h[11]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[11]|
|`h[12]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[12]|
|`h[13]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[13]|
|`h[14]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[14]|
|`h[15]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[15]|
|`h[16]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[16]|
|`h[17]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[17]|
|`h[18]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[18]|
|`h[19]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[19]|
|`h[20]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[20]|
|`h[21]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[21]|
|`h[22]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[22]|
|`h[23]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[23]|
|`h[24]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[24]|
|`h[25]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[25]|
|`h[26]`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|h[26]|
|`sol`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|sol|
|`uPx`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPx|
|`uPy`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPy|
|`uPz`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPz|
|`localOmegaF`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localOmegaF|
|`TotEnergy`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|TotEnergy|
|`Temperature`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|Temperature|
|`rhoCp`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|rhoCp|
|`Conductivity`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|Conductivity|
|`mediaNum`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|mediaNum|
|`localCv`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localCv|
|`localConductivity`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localConductivity|
|`localRho`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localRho|
|`localOmegaH`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localOmegaH|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f[0]`|f[0]|![stencil](/images/st_b1p0p0p0p0p0p0.png)|f[0]|
|`f[1]`|f[1]|![stencil](/images/st_b1p1p0p0p1p0p0.png)|f[1]|
|`f[2]`|f[2]|![stencil](/images/st_b1n1p0p0n1p0p0.png)|f[2]|
|`f[3]`|f[3]|![stencil](/images/st_b1p0p1p0p0p1p0.png)|f[3]|
|`f[4]`|f[4]|![stencil](/images/st_b1p0n1p0p0n1p0.png)|f[4]|
|`f[5]`|f[5]|![stencil](/images/st_b1p0p0p1p0p0p1.png)|f[5]|
|`f[6]`|f[6]|![stencil](/images/st_b1p0p0n1p0p0n1.png)|f[6]|
|`f[7]`|f[7]|![stencil](/images/st_b1p1p1p0p1p1p0.png)|f[7]|
|`f[8]`|f[8]|![stencil](/images/st_b1n1p1p0n1p1p0.png)|f[8]|
|`f[9]`|f[9]|![stencil](/images/st_b1p1n1p0p1n1p0.png)|f[9]|
|`f[10]`|f[10]|![stencil](/images/st_b1n1n1p0n1n1p0.png)|f[10]|
|`f[11]`|f[11]|![stencil](/images/st_b1p1p0p1p1p0p1.png)|f[11]|
|`f[12]`|f[12]|![stencil](/images/st_b1n1p0p1n1p0p1.png)|f[12]|
|`f[13]`|f[13]|![stencil](/images/st_b1p1p0n1p1p0n1.png)|f[13]|
|`f[14]`|f[14]|![stencil](/images/st_b1n1p0n1n1p0n1.png)|f[14]|
|`f[15]`|f[15]|![stencil](/images/st_b1p0p1p1p0p1p1.png)|f[15]|
|`f[16]`|f[16]|![stencil](/images/st_b1p0n1p1p0n1p1.png)|f[16]|
|`f[17]`|f[17]|![stencil](/images/st_b1p0p1n1p0p1n1.png)|f[17]|
|`f[18]`|f[18]|![stencil](/images/st_b1p0n1n1p0n1n1.png)|f[18]|
|`f[19]`|f[19]|![stencil](/images/st_b1p1p1p1p1p1p1.png)|f[19]|
|`f[20]`|f[20]|![stencil](/images/st_b1n1p1p1n1p1p1.png)|f[20]|
|`f[21]`|f[21]|![stencil](/images/st_b1p1n1p1p1n1p1.png)|f[21]|
|`f[22]`|f[22]|![stencil](/images/st_b1n1n1p1n1n1p1.png)|f[22]|
|`f[23]`|f[23]|![stencil](/images/st_b1p1p1n1p1p1n1.png)|f[23]|
|`f[24]`|f[24]|![stencil](/images/st_b1n1p1n1n1p1n1.png)|f[24]|
|`f[25]`|f[25]|![stencil](/images/st_b1p1n1n1p1n1n1.png)|f[25]|
|`f[26]`|f[26]|![stencil](/images/st_b1n1n1n1n1n1n1.png)|f[26]|
|`h[0]`|h[0]|![stencil](/images/st_b1p0p0p0p0p0p0.png)|h[0]|
|`h[1]`|h[1]|![stencil](/images/st_b1p1p0p0p1p0p0.png)|h[1]|
|`h[2]`|h[2]|![stencil](/images/st_b1n1p0p0n1p0p0.png)|h[2]|
|`h[3]`|h[3]|![stencil](/images/st_b1p0p1p0p0p1p0.png)|h[3]|
|`h[4]`|h[4]|![stencil](/images/st_b1p0n1p0p0n1p0.png)|h[4]|
|`h[5]`|h[5]|![stencil](/images/st_b1p0p0p1p0p0p1.png)|h[5]|
|`h[6]`|h[6]|![stencil](/images/st_b1p0p0n1p0p0n1.png)|h[6]|
|`h[7]`|h[7]|![stencil](/images/st_b1p1p1p0p1p1p0.png)|h[7]|
|`h[8]`|h[8]|![stencil](/images/st_b1n1p1p0n1p1p0.png)|h[8]|
|`h[9]`|h[9]|![stencil](/images/st_b1p1n1p0p1n1p0.png)|h[9]|
|`h[10]`|h[10]|![stencil](/images/st_b1n1n1p0n1n1p0.png)|h[10]|
|`h[11]`|h[11]|![stencil](/images/st_b1p1p0p1p1p0p1.png)|h[11]|
|`h[12]`|h[12]|![stencil](/images/st_b1n1p0p1n1p0p1.png)|h[12]|
|`h[13]`|h[13]|![stencil](/images/st_b1p1p0n1p1p0n1.png)|h[13]|
|`h[14]`|h[14]|![stencil](/images/st_b1n1p0n1n1p0n1.png)|h[14]|
|`h[15]`|h[15]|![stencil](/images/st_b1p0p1p1p0p1p1.png)|h[15]|
|`h[16]`|h[16]|![stencil](/images/st_b1p0n1p1p0n1p1.png)|h[16]|
|`h[17]`|h[17]|![stencil](/images/st_b1p0p1n1p0p1n1.png)|h[17]|
|`h[18]`|h[18]|![stencil](/images/st_b1p0n1n1p0n1n1.png)|h[18]|
|`h[19]`|h[19]|![stencil](/images/st_b1p1p1p1p1p1p1.png)|h[19]|
|`h[20]`|h[20]|![stencil](/images/st_b1n1p1p1n1p1p1.png)|h[20]|
|`h[21]`|h[21]|![stencil](/images/st_b1p1n1p1p1n1p1.png)|h[21]|
|`h[22]`|h[22]|![stencil](/images/st_b1n1n1p1n1n1p1.png)|h[22]|
|`h[23]`|h[23]|![stencil](/images/st_b1p1p1n1p1p1n1.png)|h[23]|
|`h[24]`|h[24]|![stencil](/images/st_b1n1p1n1n1p1n1.png)|h[24]|
|`h[25]`|h[25]|![stencil](/images/st_b1p1n1n1p1n1n1.png)|h[25]|
|`h[26]`|h[26]|![stencil](/images/st_b1n1n1n1n1n1n1.png)|h[26]|
|`sol`|sol|![stencil](/images/st_b1p0p0p0p0p0p0.png)|sol|
|`uPx`|uPx|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPx|
|`uPy`|uPy|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPy|
|`uPz`|uPz|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPz|
|`localOmegaF`|localOmegaF|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localOmegaF|
|`localCv`|localCv|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localCv|
|`localConductivity`|localConductivity|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localConductivity|
|`localRho`|localRho|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localRho|
|`localOmegaH`|localOmegaH|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localOmegaH|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseInit|Init|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], h[9], h[10], h[11], h[12], h[13], h[14], h[15], h[16], h[17], h[18], h[19], h[20], h[21], h[22], h[23], h[24], h[25], h[26], sol, uPx, uPy, uPz, localOmegaF, localCv, localConductivity, localRho, localOmegaH|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], h[9], h[10], h[11], h[12], h[13], h[14], h[15], h[16], h[17], h[18], h[19], h[20], h[21], h[22], h[23], h[24], h[25], h[26], sol, uPx, uPy, uPz, localOmegaF, TotEnergy, Temperature, rhoCp, Conductivity, mediaNum, localCv, localConductivity, localRho, localOmegaH|
|BaseIteration|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], h[9], h[10], h[11], h[12], h[13], h[14], h[15], h[16], h[17], h[18], h[19], h[20], h[21], h[22], h[23], h[24], h[25], h[26], sol, uPx, uPy, uPz, localOmegaF, localCv, localConductivity, localRho, localOmegaH|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], h[9], h[10], h[11], h[12], h[13], h[14], h[15], h[16], h[17], h[18], h[19], h[20], h[21], h[22], h[23], h[24], h[25], h[26], sol, uPx, uPy, uPz, localOmegaF, TotEnergy, Temperature, rhoCp, Conductivity, mediaNum, localCv, localConductivity, localRho, localOmegaH|
|CalcF|CalcF|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], sol, uPx, uPy, uPz, localOmegaF, localCv, localConductivity, localRho, localOmegaH|sol, uPx, uPy, uPz|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration, CalcF|
|Init|BaseInit, CalcF|

