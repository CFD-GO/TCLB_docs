

## Description
d2q9_scmp_LycettLuo_VirtualRhoWBC_WMRT


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9e1ceb1)/src/d2q9_scmp_LycettLuo_VirtualRhoWBC_WMRT/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9e1ceb1)/src/d2q9_scmp_LycettLuo_VirtualRhoWBC_WMRT/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`LVRho_phi_dr`|(wa < 90 <-> LVRho_phi_dr>=1) |  (wa > 90 <-> LVRho_phi_dr>=0) Wetting toning parameter, see DOI: 10.1103/PhysRevE.100.053313|
|`LVRho_ulimit`|Upper limiting value of rho_w see DOI: 10.1103/PhysRevE.100.053313|
|`LVRho_llimit`|Lower limiting value of rho_w see DOI: 10.1103/PhysRevE.100.053313|
|`Density`|zonal density|
|`Pressure1InObj`|Weight of [pressure at Obj1] in objective|
|`Pressure2InObj`|Weight of [pressure at Obj2] in objective|
|`Pressure3InObj`|Weight of [pressure at Obj3] in objective|
|`Density1InObj`|Weight of [density at Obj1] in objective|
|`Density2InObj`|Weight of [density at Obj2] in objective|
|`Density3InObj`|Weight of [density at Obj3] in objective|
|`SumUsqrInObj`|Weight of [Sumo o U**2] in objective|
|`WallForce1XInObj`|Weight of [force x] in objective|
|`WallForce1YInObj`|Weight of [force y] in objective|
|`WallForce2XInObj`|Weight of [force x] in objective|
|`WallForce2YInObj`|Weight of [force y] in objective|
|`WallForce3XInObj`|Weight of [force x] in objective|
|`WallForce3YInObj`|Weight of [force y] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega_l`|1.0/(3*nu_l + 0.5)|relaxation factor|
|`omega_v`|1.0/(3*nu_v + 0.5)|relaxation factor|
|`nu_l`||viscosity|
|`nu_v`||viscosity|
|`Magic`||Magic parameter|
|`Velocity`||inlet velocity|
|`Temperature`||temperature of the liquid/gas|
|`Kupershtokh_K`||C-S EOS multiplying param|
|`Kupershtokh_A`||A in force calculation - type of stencil (0 for psi*sum(psi(ei)))|
|`LBL_kappa`||kappa - int width parameter (0 is safe value)|
|`LBL_epsilon0`||epsilon0 param - se original paper (2 is safe value)|
|`GravitationY`||Gravitation in the direction of y|
|`GravitationX`||Gravitation in the direction of x|
|`MovingWallVelocity`||Velocity of the MovingWall|
|`Wetting`||wetting factor|
|`density_l`||density for omega= omega_l|
|`density_v`||density for omega= omega_l|
|`nubuffer`||Wall buffer density for cumulant|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`P`|`Pa`|P|
|`F`|`N`|F|
|`Finternal`|`N`|Finternal|
|`DEBUG`|`1`|DEBUG|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Pressure1`|`1`|pressure at Obj1|
|`Pressure2`|`1`|pressure at Obj2|
|`Pressure3`|`1`|pressure at Obj3|
|`Density1`|`1`|density at Obj1|
|`Density2`|`1`|density at Obj2|
|`Density3`|`1`|density at Obj3|
|`SumUsqr`|`1`|Sumo o U**2|
|`WallForce1X`|`1`|force x|
|`WallForce1Y`|`1`|force y|
|`WallForce2X`|`1`|force x|
|`WallForce2Y`|`1`|force y|
|`WallForce3X`|`1`|force x|
|`WallForce3Y`|`1`|force y|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|NMovingWall, MovingWall, ESymmetry, NSymmetry, SSymmetry|
|OBJECTIVE|SolidBoundary1, SolidBoundary2, SolidBoundary3|
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
|`rho_n`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|rho_n|

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

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8]|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8]|
|CalcRhoSC|CalcRhoSC|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8]|rho_n|
|BaseInit|Init|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8]|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], rho_n|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Init|BaseInit|
|Iteration|BaseIteration, CalcRhoSC|

