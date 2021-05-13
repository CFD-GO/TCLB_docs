

## Description
d2q9_part_BC


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at cbad57a)/src/d2q9_part_BC/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at cbad57a)/src/d2q9_part_BC/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`VelocityX`|inlet/outlet/init velocity|
|`VelocityY`|inlet/outlet/init velocity|
|`Pressure`|inlet/outlet/init density|
|`PressureLossInObj`|Weight of [pressure loss] in objective|
|`OutletFluxInObj`|Weight of [pressure loss] in objective|
|`InletFluxInObj`|Weight of [pressure loss] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`RelaxationRate`|1.0/(3*Viscosity + 0.5)|one over relaxation time|
|`Viscosity`||viscosity|
|`GravitationX`||GravitationX|
|`GravitationY`||GravitationY|
|`S2`|1-RelaxationRate|MRT Sx|
|`S3`||MRT Sx|
|`S4`||MRT Sx|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`Solid`|`1`|Solid|
|`Checks`|`1`|Checks|
|`Thread`|`1`|Thread|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`PressureLoss`|`1mPa`|pressure loss|
|`OutletFlux`|`1m2/s`|pressure loss|
|`InletFlux`|`1m2/s`|pressure loss|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|EPressure, WPressure, NVelocity, SVelocity, WVelocity, EVelocity, NSymmetry, SSymmetry, Solid, Wall|
|COLLISION|MRT|
|OBJECTIVE|Inlet, Outlet|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f[0]|
|`f[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f[1]|
|`f[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f[2]|
|`f[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f[3]|
|`f[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f[4]|
|`f[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f[5]|
|`f[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f[6]|
|`f[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f[7]|
|`f[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f[8]|
|`ux`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|ux|
|`uy`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|uy|
|`sol`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|sol|
|`thx`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|thx|
|`thy`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|thy|
|`thz`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|thz|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f[0]`|f[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f[0]|
|`f[1]`|f[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f[1]|
|`f[2]`|f[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f[2]|
|`f[3]`|f[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f[3]|
|`f[4]`|f[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f[4]|
|`f[5]`|f[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f[5]|
|`f[6]`|f[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f[6]|
|`f[7]`|f[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f[7]|
|`f[8]`|f[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f[8]|
|`ux`|ux|![stencil](/images/st_a1p0p0p0p0p0p0.png)|ux|
|`uy`|uy|![stencil](/images/st_a1p0p0p0p0p0p0.png)|uy|
|`sol`|sol|![stencil](/images/st_a1p0p0p0p0p0p0.png)|sol|
|`thx`|thx|![stencil](/images/st_a1p0p0p0p0p0p0.png)|thx|
|`thy`|thy|![stencil](/images/st_a1p0p0p0p0p0p0.png)|thy|
|`thz`|thz|![stencil](/images/st_a1p0p0p0p0p0p0.png)|thz|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], ux, uy, sol, thx, thy, thz|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], ux, uy, sol, thx, thy, thz|
|BaseInit|Init|_none_|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], ux, uy, sol, thx, thy, thz|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

