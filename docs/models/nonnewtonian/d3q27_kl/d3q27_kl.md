

## Description
d3q27_kl


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9e1ceb1)/src/d3q27_kl/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9e1ceb1)/src/d3q27_kl/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`VelocityX`|inlet/outlet/init velocity|
|`VelocityY`|inlet/outlet/init velocity|
|`GravitationX`|body/external acceleration|
|`GravitationY`|body/external acceleration|
|`GravitationZ`|body/external acceleration|
|`Pressure`|Pressure for boundary condition|
|`deltaP`|half range of pressure fluctuations|
|`Period`|Period of pressure fluctuations|
|`Pmax`|Heartbeat Pmax|
|`VelocityMaxInObj`|Weight of [VelocityMax] in objective|
|`Log_UxInObj`|Weight of [Log_Ux] in objective|
|`Log_UyInObj`|Weight of [Log_Uy] in objective|
|`Log_UzInObj`|Weight of [Log_Uz] in objective|
|`Log_PInObj`|Weight of [Log_P] in objective|
|`Log_rhoInObj`|Weight of [Log_rho] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`Density`||Density|
|`Strain_Dim`||Number of dimensions for strain calculation|
|`eta1`||Plastic viscosity component|
|`eta2`||Shear thinning component|
|`sigmaY`||Yield stress|
|`m`||Regularisation parameter|
|`Lambda`||TRT Magic Number|
|`MaxIter`||MaxIter|
|`sLim`||sLim|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`U`|`m/s`|U|
|`Rho`|`kg/m3`|Rho|
|`Shear`|`1`|Shear|
|`Nu_app`|`1`|Nu_app|
|`Stress`|`1`|Stress|
|`YieldStatus`|`1`|YieldStatus|
|`Dxx`|`1`|Dxx|
|`Dxy`|`1`|Dxy|
|`Dyz`|`1`|Dyz|
|`Dyy`|`1`|Dyy|
|`Dzx`|`1`|Dzx|
|`Dzz`|`1`|Dzz|
|`Pressure`|`1`|Pressure|
|`Iterations`|`1`|Iterations|
|`Lambda_even`|`1`|Lambda_even|
|`Lambda_odd`|`1`|Lambda_odd|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`VelocityMax`|`1`|VelocityMax|
|`Log_Ux`|`1`|Log_Ux|
|`Log_Uy`|`1`|Log_Uy|
|`Log_Uz`|`1`|Log_Uz|
|`Log_P`|`1`|Log_P|
|`Log_rho`|`1`|Log_rho|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|ExtendedBdy, LogP|
|BOUNDARY|Solid, Wall, PressureXP, PressureXN, PressureSinXN, PressureCosXN, PressureHBXN|
|COLLISION|BGK, TRT|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f0`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|f0|
|`f1`|![stencil](/images/st_b1n1p0p0n1p0p0.png)|f1|
|`f2`|![stencil](/images/st_b1p0n1p0p0n1p0.png)|f2|
|`f3`|![stencil](/images/st_b1p1p0p0p1p0p0.png)|f3|
|`f4`|![stencil](/images/st_b1p0p1p0p0p1p0.png)|f4|
|`f5`|![stencil](/images/st_b1p0p0n1p0p0n1.png)|f5|
|`f6`|![stencil](/images/st_b1p0p0p1p0p0p1.png)|f6|
|`f7`|![stencil](/images/st_b1n1n1p0n1n1p0.png)|f7|
|`f8`|![stencil](/images/st_b1p1n1p0p1n1p0.png)|f8|
|`f9`|![stencil](/images/st_b1p1p1p0p1p1p0.png)|f9|
|`f10`|![stencil](/images/st_b1n1p1p0n1p1p0.png)|f10|
|`f11`|![stencil](/images/st_b1n1p0n1n1p0n1.png)|f11|
|`f12`|![stencil](/images/st_b1p0n1n1p0n1n1.png)|f12|
|`f13`|![stencil](/images/st_b1p1p0n1p1p0n1.png)|f13|
|`f14`|![stencil](/images/st_b1p0p1n1p0p1n1.png)|f14|
|`f15`|![stencil](/images/st_b1n1p0p1n1p0p1.png)|f15|
|`f16`|![stencil](/images/st_b1p0n1p1p0n1p1.png)|f16|
|`f17`|![stencil](/images/st_b1p1p0p1p1p0p1.png)|f17|
|`f18`|![stencil](/images/st_b1p0p1p1p0p1p1.png)|f18|
|`f19`|![stencil](/images/st_b1n1n1n1n1n1n1.png)|f19|
|`f20`|![stencil](/images/st_b1p1n1n1p1n1n1.png)|f20|
|`f21`|![stencil](/images/st_b1p1p1n1p1p1n1.png)|f21|
|`f22`|![stencil](/images/st_b1n1p1n1n1p1n1.png)|f22|
|`f23`|![stencil](/images/st_b1n1n1p1n1n1p1.png)|f23|
|`f24`|![stencil](/images/st_b1p1n1p1p1n1p1.png)|f24|
|`f25`|![stencil](/images/st_b1p1p1p1p1p1p1.png)|f25|
|`f26`|![stencil](/images/st_b1n1p1p1n1p1p1.png)|f26|
|`gamma_dot`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|gamma_dot|
|`nu_app`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nu_app|
|`Omega`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Omega|
|`Dxx`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dxx|
|`Dxy`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dxy|
|`Dyz`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dyz|
|`Dyy`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dyy|
|`Dzx`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dzx|
|`Dzz`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dzz|
|`Iter`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Iter|
|`lambda_even`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|lambda_even|
|`lambda_odd`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|lambda_odd|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f0`|f0|![stencil](/images/st_b1p0p0p0p0p0p0.png)|f0|
|`f1`|f1|![stencil](/images/st_b1p1p0p0p1p0p0.png)|f1|
|`f2`|f2|![stencil](/images/st_b1p0p1p0p0p1p0.png)|f2|
|`f3`|f3|![stencil](/images/st_b1n1p0p0n1p0p0.png)|f3|
|`f4`|f4|![stencil](/images/st_b1p0n1p0p0n1p0.png)|f4|
|`f5`|f5|![stencil](/images/st_b1p0p0p1p0p0p1.png)|f5|
|`f6`|f6|![stencil](/images/st_b1p0p0n1p0p0n1.png)|f6|
|`f7`|f7|![stencil](/images/st_b1p1p1p0p1p1p0.png)|f7|
|`f8`|f8|![stencil](/images/st_b1n1p1p0n1p1p0.png)|f8|
|`f9`|f9|![stencil](/images/st_b1n1n1p0n1n1p0.png)|f9|
|`f10`|f10|![stencil](/images/st_b1p1n1p0p1n1p0.png)|f10|
|`f11`|f11|![stencil](/images/st_b1p1p0p1p1p0p1.png)|f11|
|`f12`|f12|![stencil](/images/st_b1p0p1p1p0p1p1.png)|f12|
|`f13`|f13|![stencil](/images/st_b1n1p0p1n1p0p1.png)|f13|
|`f14`|f14|![stencil](/images/st_b1p0n1p1p0n1p1.png)|f14|
|`f15`|f15|![stencil](/images/st_b1p1p0n1p1p0n1.png)|f15|
|`f16`|f16|![stencil](/images/st_b1p0p1n1p0p1n1.png)|f16|
|`f17`|f17|![stencil](/images/st_b1n1p0n1n1p0n1.png)|f17|
|`f18`|f18|![stencil](/images/st_b1p0n1n1p0n1n1.png)|f18|
|`f19`|f19|![stencil](/images/st_b1p1p1p1p1p1p1.png)|f19|
|`f20`|f20|![stencil](/images/st_b1n1p1p1n1p1p1.png)|f20|
|`f21`|f21|![stencil](/images/st_b1n1n1p1n1n1p1.png)|f21|
|`f22`|f22|![stencil](/images/st_b1p1n1p1p1n1p1.png)|f22|
|`f23`|f23|![stencil](/images/st_b1p1p1n1p1p1n1.png)|f23|
|`f24`|f24|![stencil](/images/st_b1n1p1n1n1p1n1.png)|f24|
|`f25`|f25|![stencil](/images/st_b1n1n1n1n1n1n1.png)|f25|
|`f26`|f26|![stencil](/images/st_b1p1n1n1p1n1n1.png)|f26|
|`gamma_dot`|gamma_dot|![stencil](/images/st_b1p0p0p0p0p0p0.png)|gamma_dot|
|`nu_app`|nu_app|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nu_app|
|`Omega`|Omega|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Omega|
|`Dxx`|Dxx|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dxx|
|`Dxy`|Dxy|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dxy|
|`Dyz`|Dyz|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dyz|
|`Dyy`|Dyy|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dyy|
|`Dzx`|Dzx|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dzx|
|`Dzz`|Dzz|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Dzz|
|`Iter`|Iter|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Iter|
|`lambda_even`|lambda_even|![stencil](/images/st_b1p0p0p0p0p0p0.png)|lambda_even|
|`lambda_odd`|lambda_odd|![stencil](/images/st_b1p0p0p0p0p0p0.png)|lambda_odd|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25, f26, gamma_dot, nu_app, Omega, Dxx, Dxy, Dyz, Dyy, Dzx, Dzz, Iter, lambda_even, lambda_odd|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25, f26, gamma_dot, nu_app, Omega, Dxx, Dxy, Dyz, Dyy, Dzx, Dzz, Iter, lambda_even, lambda_odd|
|BaseInit|Init|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25, f26, gamma_dot, nu_app, Omega, Dxx, Dxy, Dyz, Dyy, Dzx, Dzz, Iter, lambda_even, lambda_odd|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

