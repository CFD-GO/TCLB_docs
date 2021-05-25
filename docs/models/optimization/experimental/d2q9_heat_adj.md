

## Description
d2q9_heat_adj


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at fba1799)/src/d2q9_heat_adj/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at fba1799)/src/d2q9_heat_adj/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`HeatFluxInObj`|Weight of [pressure loss] in objective|
|`HeatSquareFluxInObj`|Weight of [pressure loss] in objective|
|`FluxInObj`|Weight of [pressure loss] in objective|
|`TemperatureInObj`|Weight of [integral of temperature] in objective|
|`HighTemperatureInObj`|Weight of [penalty for high temperature] in objective|
|`LowTemperatureInObj`|Weight of [penalty for low temperature] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega`|1.0/(3*nu + 0.5)|one over relaxation time|
|`nu0`||viscosity|
|`InletVelocity`||inlet velocity|
|`InletPressure`||inlet pressure|
|`InletDensity`|1.0+InletPressure/3|inlet density|
|`InletTemperature`||inlet temperature|
|`InitTemperature`||inlet temperature|
|`HeaterTemperature`||inlet temperature|
|`FluidAlpha`||thermal diffusivity of fluid|
|`SolidAlpha`||thermal diffusivity of solid|
|`LimitTemperature`||temperature of the heater|
|`InletTotalPressure`||temperature of the heater|
|`OutletTotalPressure`||temperature of the heater|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`T`|`K`|T|
|`W`|`1`|W|
|`WB`|`1`|WB|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`HeatFlux`|`1`|pressure loss|
|`HeatSquareFlux`|`1`|pressure loss|
|`Flux`|`1`|pressure loss|
|`Temperature`|`1`|integral of temperature|
|`HighTemperature`|`1`|penalty for high temperature|
|`LowTemperature`|`1`|penalty for low temperature|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|Heater, HeatSource|
|ALL|Clear|
|BOUNDARY|EPressure, EVelocity, Solid, Wall, WPressure, WVelocity|
|COLLISION|MRT|
|NONE|None|
|OBJECTIVE|Thermometer, Outlet|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f0`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f0|
|`f1`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f1|
|`f2`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f2|
|`f3`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f3|
|`f4`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f4|
|`f5`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f5|
|`f6`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f6|
|`f7`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f7|
|`f8`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f8|
|`T0`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|T0|
|`T1`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|T1|
|`T2`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|T2|
|`T3`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|T3|
|`T4`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|T4|
|`T5`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|T5|
|`T6`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|T6|
|`T7`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|T7|
|`T8`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|T8|
|`w`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|w|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f0`|f0|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f0|
|`f1`|f1|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f1|
|`f2`|f2|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f2|
|`f3`|f3|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f3|
|`f4`|f4|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f4|
|`f5`|f5|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f5|
|`f6`|f6|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f6|
|`f7`|f7|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f7|
|`f8`|f8|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f8|
|`T0`|T0|![stencil](/images/st_a1p0p0p0p0p0p0.png)|T0|
|`T1`|T1|![stencil](/images/st_a1p1p0p0p1p0p0.png)|T1|
|`T2`|T2|![stencil](/images/st_a1p0p1p0p0p1p0.png)|T2|
|`T3`|T3|![stencil](/images/st_a1n1p0p0n1p0p0.png)|T3|
|`T4`|T4|![stencil](/images/st_a1p0n1p0p0n1p0.png)|T4|
|`T5`|T5|![stencil](/images/st_a1p1p1p0p1p1p0.png)|T5|
|`T6`|T6|![stencil](/images/st_a1n1p1p0n1p1p0.png)|T6|
|`T7`|T7|![stencil](/images/st_a1n1n1p0n1n1p0.png)|T7|
|`T8`|T8|![stencil](/images/st_a1p1n1p0p1n1p0.png)|T8|
|`w`|w|![stencil](/images/st_a1p0p0p0p0p0p0.png)|w|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8, T0, T1, T2, T3, T4, T5, T6, T7, T8, w|f0, f1, f2, f3, f4, f5, f6, f7, f8, T0, T1, T2, T3, T4, T5, T6, T7, T8, w|
|BaseInit|Init|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8, T0, T1, T2, T3, T4, T5, T6, T7, T8, w|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

