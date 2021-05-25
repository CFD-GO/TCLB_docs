

## Description
d3q27_csf


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at fba1799)/src/d3q27_csf/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at fba1799)/src/d3q27_csf/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Velocity`|inlet/outlet/init velocity|
|`Pressure`|inlet/outlet/init density|
|`PhaseField`|Phase Field marker scalar|
|`WettingAngle`|WettingAngle|
|`WallAdhesionDecay`|WallAdhesionDecay|
|`FluxInObj`|Weight of [Volume flux] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega_l`|1.0/(3*nu_l + 0.5)|one over relaxation time, light phase|
|`nu_l`||viscosity pf=-0.5|
|`omega_h`|1.0/(3*nu_h + 0.5)|one over relaxation time, light phase|
|`nu_h`||viscosity pf=0.5|
|`IntWidth`||Anty-diffusivity coeff|
|`Mobility`||Mobility|
|`GravitationX_h`||GravitationX_h|
|`GravitationY_h`||GravitationY_h|
|`GravitationX_l`||GravitationX_l|
|`GravitationY_l`||GravitationY_l|
|`SurfaceTensionDecay`||SurfaceTensionDecay|
|`SurfaceTensionRate`||SurfaceTensionRate|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`P`|`Pa`|P|
|`U`|`m/s`|U|
|`PhaseField`|`1`|PhaseField|
|`Normal`|`1/m`|Normal|
|`Curvature`|`1`|Curvature|
|`InterfaceForce`|`1`|InterfaceForce|
|`DEBUG`|`1`|DEBUG|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Flux`|`m3/s`|Volume flux|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ALL|Clear|
|BOUNDARY|EPressure, Solid, Wall, WPressure, WVelocity|
|COLLISION|MRT|
|NONE|None|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f0`|![stencil](/images/st_b1p1p1p1p1p1p1.png)|density F 0|
|`f1`|![stencil](/images/st_b1p0p1p1p0p1p1.png)|density F 1|
|`f2`|![stencil](/images/st_b1n1p1p1n1p1p1.png)|density F 2|
|`f3`|![stencil](/images/st_b1p1p0p1p1p0p1.png)|density F 3|
|`f4`|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density F 4|
|`f5`|![stencil](/images/st_b1n1p0p1n1p0p1.png)|density F 5|
|`f6`|![stencil](/images/st_b1p1n1p1p1n1p1.png)|density F 6|
|`f7`|![stencil](/images/st_b1p0n1p1p0n1p1.png)|density F 7|
|`f8`|![stencil](/images/st_b1n1n1p1n1n1p1.png)|density F 8|
|`f9`|![stencil](/images/st_b1p1p1p0p1p1p0.png)|density F 9|
|`f10`|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density F 10|
|`f11`|![stencil](/images/st_b1n1p1p0n1p1p0.png)|density F 11|
|`f12`|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density F 12|
|`f13`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density F 13|
|`f14`|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density F 14|
|`f15`|![stencil](/images/st_b1p1n1p0p1n1p0.png)|density F 15|
|`f16`|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density F 16|
|`f17`|![stencil](/images/st_b1n1n1p0n1n1p0.png)|density F 17|
|`f18`|![stencil](/images/st_b1p1p1n1p1p1n1.png)|density F 18|
|`f19`|![stencil](/images/st_b1p0p1n1p0p1n1.png)|density F 19|
|`f20`|![stencil](/images/st_b1n1p1n1n1p1n1.png)|density F 20|
|`f21`|![stencil](/images/st_b1p1p0n1p1p0n1.png)|density F 21|
|`f22`|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density F 22|
|`f23`|![stencil](/images/st_b1n1p0n1n1p0n1.png)|density F 23|
|`f24`|![stencil](/images/st_b1p1n1n1p1n1n1.png)|density F 24|
|`f25`|![stencil](/images/st_b1p0n1n1p0n1n1.png)|density F 25|
|`f26`|![stencil](/images/st_b1n1n1n1n1n1n1.png)|density F 26|
|`h0`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density H 0|
|`h1`|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density H 1|
|`h2`|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density H 2|
|`h3`|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density H 3|
|`h4`|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density H 4|
|`h5`|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density H 5|
|`h6`|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density H 6|
|`nw_x`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|nw_x|
|`nw_y`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|nw_y|
|`nw_z`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|nw_z|
|`phi`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|phi|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f0`|f0|![stencil](/images/st_b1n1n1n1n1n1n1.png)|density F 0|
|`f1`|f1|![stencil](/images/st_b1p0n1n1p0n1n1.png)|density F 1|
|`f2`|f2|![stencil](/images/st_b1p1n1n1p1n1n1.png)|density F 2|
|`f3`|f3|![stencil](/images/st_b1n1p0n1n1p0n1.png)|density F 3|
|`f4`|f4|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density F 4|
|`f5`|f5|![stencil](/images/st_b1p1p0n1p1p0n1.png)|density F 5|
|`f6`|f6|![stencil](/images/st_b1n1p1n1n1p1n1.png)|density F 6|
|`f7`|f7|![stencil](/images/st_b1p0p1n1p0p1n1.png)|density F 7|
|`f8`|f8|![stencil](/images/st_b1p1p1n1p1p1n1.png)|density F 8|
|`f9`|f9|![stencil](/images/st_b1n1n1p0n1n1p0.png)|density F 9|
|`f10`|f10|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density F 10|
|`f11`|f11|![stencil](/images/st_b1p1n1p0p1n1p0.png)|density F 11|
|`f12`|f12|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density F 12|
|`f13`|f13|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density F 13|
|`f14`|f14|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density F 14|
|`f15`|f15|![stencil](/images/st_b1n1p1p0n1p1p0.png)|density F 15|
|`f16`|f16|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density F 16|
|`f17`|f17|![stencil](/images/st_b1p1p1p0p1p1p0.png)|density F 17|
|`f18`|f18|![stencil](/images/st_b1n1n1p1n1n1p1.png)|density F 18|
|`f19`|f19|![stencil](/images/st_b1p0n1p1p0n1p1.png)|density F 19|
|`f20`|f20|![stencil](/images/st_b1p1n1p1p1n1p1.png)|density F 20|
|`f21`|f21|![stencil](/images/st_b1n1p0p1n1p0p1.png)|density F 21|
|`f22`|f22|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density F 22|
|`f23`|f23|![stencil](/images/st_b1p1p0p1p1p0p1.png)|density F 23|
|`f24`|f24|![stencil](/images/st_b1n1p1p1n1p1p1.png)|density F 24|
|`f25`|f25|![stencil](/images/st_b1p0p1p1p0p1p1.png)|density F 25|
|`f26`|f26|![stencil](/images/st_b1p1p1p1p1p1p1.png)|density F 26|
|`h0`|h0|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density H 0|
|`h1`|h1|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density H 1|
|`h2`|h2|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density H 2|
|`h3`|h3|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density H 3|
|`h4`|h4|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density H 4|
|`h5`|h5|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density H 5|
|`h6`|h6|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density H 6|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25, f26, h0, h1, h2, h3, h4, h5, h6|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25, f26, h0, h1, h2, h3, h4, h5, h6, nw_x, nw_y, nw_z|
|CalcPhi|CalcPhi|h0, h1, h2, h3, h4, h5, h6|phi|
|BaseInit|Init|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25, f26, h0, h1, h2, h3, h4, h5, h6|
|CalcWallNormall|CalcNormal|_none_|nw_x, nw_y, nw_z|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration, CalcPhi|
|Init|BaseInit, CalcPhi|

