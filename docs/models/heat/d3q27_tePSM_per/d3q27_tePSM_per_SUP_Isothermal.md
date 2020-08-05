

## Description
d3q27_tePSM_per_SUP_Isothermal


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at cac2755)/src/d3q27_tePSM_per_SUP_Isothermal/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at cac2755)/src/d3q27_tePSM_per_SUP_Isothermal/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`WallVelocityX`|WallVelocity x-direction|
|`WallVelocityY`|WallVelocity y-direction|
|`WallVelocityZ`|WallVelocity z-direction|
|`Pressure`|Inlet pressure|
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
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Solid`|`1`|Solid|
|`U`|`m/s`|U|
|`Rho`|`kg/m3`|Rho|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`TotalSVF`|`1`|Total of solids throughout domain|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
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
|`sol`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|sol|
|`uPx`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPx|
|`uPy`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPy|
|`uPz`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPz|
|`localOmegaF`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localOmegaF|

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
|`sol`|sol|![stencil](/images/st_b1p0p0p0p0p0p0.png)|sol|
|`uPx`|uPx|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPx|
|`uPy`|uPy|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPy|
|`uPz`|uPz|![stencil](/images/st_b1p0p0p0p0p0p0.png)|uPz|
|`localOmegaF`|localOmegaF|![stencil](/images/st_b1p0p0p0p0p0p0.png)|localOmegaF|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseInit|Init|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], sol, uPx, uPy, uPz|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], sol, uPx, uPy, uPz|
|BaseIteration|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], sol, uPx, uPy, uPz|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], sol, uPx, uPy, uPz|
|CalcF|CalcF|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12], f[13], f[14], f[15], f[16], f[17], f[18], f[19], f[20], f[21], f[22], f[23], f[24], f[25], f[26], sol, uPx, uPy, uPz|sol, uPx, uPy, uPz|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration, CalcF|
|Init|BaseInit, CalcF|

