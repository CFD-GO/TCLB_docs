

## Description

# This model uses

* d2q7 cumulant collision kernel for hydrodynamics
* d2q7 cumulant or cascaded collision kernel for heat
* Boussinesq approx to couple heat with hydrodynamics

It is a 2d version od d3q27q27_cm_cht

## BC

* periodic
* Dirichlet - Equilibrium scheme (1st order convergence)
* Dirichlet - Anti Bounce Back (2nd order convergence)
* Dirichlet - Interpolated Anti Bounce Back (2nd order convergence)
* Neumann like bc - impose heat flux

* WVelocity inlet
* EPressure Outlet
* Neumann Outlet
* Convective Outlet


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 67a6be7)/src/d2q9q9_cm_cht_OutFlowConvective_SMAG_CHT/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 67a6be7)/src/d2q9q9_cm_cht_OutFlowConvective_SMAG_CHT/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`VelocityX`|inlet/outlet/init x-velocity component|
|`VelocityY`|inlet/outlet/init y-velocity component|
|`Pressure`|inlet/outlet/init pressure|
|`InitTemperature`|Initial/Inflow temperature distribution|
|`InitHeatFlux`|Initial/Inflow heat flux through boundary|
|`conductivity`|thermal conductivity of fluid (W/(m·K))|
|`material_density`|density of material [kg/m3]|
|`cp`|specific heat capacity at constant pressure of fluid (J/(kg·K))|
|`Sigma_GH`|Initial width of the Gaussian Hill|
|`FDragInObj`|Weight of [Force exerted on body in X-direction] in objective|
|`FLiftInObj`|Weight of [Force exerted on body in Y-direction] in objective|
|`XHydroFLuxInObj`|Weight of [Momentum flux in X-direction] in objective|
|`YHydroFLuxInObj`|Weight of [Momentum flux in Y-direction] in objective|
|`XHydroFLux2InObj`|Weight of [Momentum flux (2nd logger) in X-direction] in objective|
|`YHydroFLux2InObj`|Weight of [Momentum flux (2nd logger) in Y-direction] in objective|
|`HeatFluxXInObj`|Weight of [Heat flux in X-direction] in objective|
|`HeatFluxYInObj`|Weight of [Heat flux in Y-direction] in objective|
|`HeatFluxX2InObj`|Weight of [Heat flux (2nd logger) in X-direction] in objective|
|`HeatFluxY2InObj`|Weight of [Heat flux (2nd logger) in Y-direction] in objective|
|`HeatSourceInObj`|Weight of [Total Heat flux from body] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`GravitationX`||applied rho*GravitationX|
|`GravitationY`||applied rho*GravitationY|
|`nu`||kinematic viscosity|
|`GalileanCorrection`||Galilean correction term|
|`nu_buffer`||kinematic viscosity in the buffer layer|
|`conductivity_buffer`||thermal conductivity in the buffer layer|
|`Omegafor3rdCumulants`||relaxation rate for 3rd order cumulants|
|`h_stability_enhancement`||magic stability enhancement|
|`BoussinesqCoeff`||BoussinesqCoeff=rho_0*thermal_exp_coeff|
|`CylinderCenterX`||X coord of cylinder with imposed heat flux|
|`CylinderCenterY`||Y coord of cylinder with imposed heat flux|
|`CylinderCenterX_GH`||X coord of Gaussian Hill|
|`CylinderCenterY_GH`||Y coord of Gaussian Hill|
|`Smag`||Smagorinsky coefficient for SGS modeling|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`H`|`J`|H|
|`T`|`K`|T|
|`m00_F`|`1`|m00_F|
|`material_density`|`kg/m3`|material_density|
|`cp`|`J/kg/K`|cp|
|`conductivity`|`W/m/K`|conductivity|
|`RawU`|`m/s`|RawU|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`FDrag`|`N`|Force exerted on body in X-direction|
|`FLift`|`N`|Force exerted on body in Y-direction|
|`XHydroFLux`|`kg/s`|Momentum flux in X-direction|
|`YHydroFLux`|`kg/s`|Momentum flux in Y-direction|
|`XHydroFLux2`|`kg/s`|Momentum flux (2nd logger) in X-direction|
|`YHydroFLux2`|`kg/s`|Momentum flux (2nd logger) in Y-direction|
|`HeatFluxX`|`W`|Heat flux in X-direction|
|`HeatFluxY`|`W`|Heat flux in Y-direction|
|`HeatFluxX2`|`W`|Heat flux (2nd logger) in X-direction|
|`HeatFluxY2`|`W`|Heat flux (2nd logger) in Y-direction|
|`HeatSource`|`W`|Total Heat flux from body|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|DarcySolid, Smoothing|
|ADDITIONALS_HEAT|HeaterDirichletTemperatureEQ, HeaterDirichletTemperatureABB, HeaterSource, HeaterNeumannHeatFluxCylinder, HeaterNeumannHeatFluxEast|
|BODY|Body|
|BOUNDARY|EConvective, EPressure, Solid, Wall, WVelocity|
|COLLISION|CM, CM_HIGHER, CM_HIGHER_NONLINEAR, Cumulants|
|OBJECTIVEFLUX|FluxMeasurmentZone1, FluxMeasurmentZone2|
|OBJECTIVEFORCE|ForceMeasurmentZone|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f000`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 0|
|`f100`|![stencil](/images/st_a2n2p0p0p0p0p0.png)|flow LB density F 1|
|`f200`|![stencil](/images/st_a2p0p0p0p1p0p0.png)|flow LB density F 2|
|`f010`|![stencil](/images/st_a2n1n1p0p0p0p0.png)|flow LB density F 3|
|`f110`|![stencil](/images/st_a2n2n1p0p0p0p0.png)|flow LB density F 4|
|`f210`|![stencil](/images/st_a2p0n1p0p1p0p0.png)|flow LB density F 5|
|`f020`|![stencil](/images/st_a2n1p0p0p0p1p0.png)|flow LB density F 6|
|`f120`|![stencil](/images/st_a2n2p0p0p0p1p0.png)|flow LB density F 7|
|`f220`|![stencil](/images/st_a2p0p0p0p1p1p0.png)|flow LB density F 8|
|`h000`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 1|
|`h100`|![stencil](/images/st_a2n2p0p0p0p0p0.png)|heat LB density H 2|
|`h200`|![stencil](/images/st_a2p0p0p0p1p0p0.png)|heat LB density H 3|
|`h010`|![stencil](/images/st_a2n1n1p0p0p0p0.png)|heat LB density H 4|
|`h110`|![stencil](/images/st_a2n2n1p0p0p0p0.png)|heat LB density H 5|
|`h210`|![stencil](/images/st_a2p0n1p0p1p0p0.png)|heat LB density H 6|
|`h020`|![stencil](/images/st_a2n1p0p0p0p1p0.png)|heat LB density H 7|
|`h120`|![stencil](/images/st_a2n2p0p0p0p1p0.png)|heat LB density H 8|
|`h220`|![stencil](/images/st_a2p0p0p0p1p1p0.png)|heat LB density H 9|
|`U`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|U|
|`hold000`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 0|
|`hold100`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 1|
|`hold200`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 2|
|`hold010`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 3|
|`hold110`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 4|
|`hold210`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 5|
|`hold020`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 6|
|`hold120`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 7|
|`hold220`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|heat LB density H 8|
|`fold000`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 0|
|`fold100`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 1|
|`fold200`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 2|
|`fold010`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 3|
|`fold110`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 4|
|`fold210`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 5|
|`fold020`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 6|
|`fold120`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 7|
|`fold220`|![stencil](/images/st_a2n1p0p0p0p0p0.png)|flow LB density F 8|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f000`|f000|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 0|
|`f100`|f100|![stencil](/images/st_a2p1p0p0p1p0p0.png)|flow LB density F 1|
|`f200`|f200|![stencil](/images/st_a2n1p0p0n1p0p0.png)|flow LB density F 2|
|`f010`|f010|![stencil](/images/st_a2p0p1p0p0p1p0.png)|flow LB density F 3|
|`f110`|f110|![stencil](/images/st_a2p1p1p0p1p1p0.png)|flow LB density F 4|
|`f210`|f210|![stencil](/images/st_a2n1p1p0n1p1p0.png)|flow LB density F 5|
|`f020`|f020|![stencil](/images/st_a2p0n1p0p0n1p0.png)|flow LB density F 6|
|`f120`|f120|![stencil](/images/st_a2p1n1p0p1n1p0.png)|flow LB density F 7|
|`f220`|f220|![stencil](/images/st_a2n1n1p0n1n1p0.png)|flow LB density F 8|
|`h000`|h000|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 1|
|`h100`|h100|![stencil](/images/st_a2p1p0p0p1p0p0.png)|heat LB density H 2|
|`h200`|h200|![stencil](/images/st_a2n1p0p0n1p0p0.png)|heat LB density H 3|
|`h010`|h010|![stencil](/images/st_a2p0p1p0p0p1p0.png)|heat LB density H 4|
|`h110`|h110|![stencil](/images/st_a2p1p1p0p1p1p0.png)|heat LB density H 5|
|`h210`|h210|![stencil](/images/st_a2n1p1p0n1p1p0.png)|heat LB density H 6|
|`h020`|h020|![stencil](/images/st_a2p0n1p0p0n1p0.png)|heat LB density H 7|
|`h120`|h120|![stencil](/images/st_a2p1n1p0p1n1p0.png)|heat LB density H 8|
|`h220`|h220|![stencil](/images/st_a2n1n1p0n1n1p0.png)|heat LB density H 9|
|`U`|U|![stencil](/images/st_a2p0p0p0p0p0p0.png)|U|
|`hold000`|hold000|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 0|
|`hold100`|hold100|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 1|
|`hold200`|hold200|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 2|
|`hold010`|hold010|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 3|
|`hold110`|hold110|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 4|
|`hold210`|hold210|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 5|
|`hold020`|hold020|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 6|
|`hold120`|hold120|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 7|
|`hold220`|hold220|![stencil](/images/st_a2p0p0p0p0p0p0.png)|heat LB density H 8|
|`fold000`|fold000|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 0|
|`fold100`|fold100|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 1|
|`fold200`|fold200|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 2|
|`fold010`|fold010|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 3|
|`fold110`|fold110|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 4|
|`fold210`|fold210|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 5|
|`fold020`|fold020|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 6|
|`fold120`|fold120|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 7|
|`fold220`|fold220|![stencil](/images/st_a2p0p0p0p0p0p0.png)|flow LB density F 8|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f000, f100, f200, f010, f110, f210, f020, f120, f220, h000, h100, h200, h010, h110, h210, h020, h120, h220, U, hold000, hold100, hold200, hold010, hold110, hold210, hold020, hold120, hold220, fold000, fold100, fold200, fold010, fold110, fold210, fold020, fold120, fold220|f000, f100, f200, f010, f110, f210, f020, f120, f220, h000, h100, h200, h010, h110, h210, h020, h120, h220, U, hold000, hold100, hold200, hold010, hold110, hold210, hold020, hold120, hold220, fold000, fold100, fold200, fold010, fold110, fold210, fold020, fold120, fold220|
|BaseInit|Init|_none_|f000, f100, f200, f010, f110, f210, f020, f120, f220, h000, h100, h200, h010, h110, h210, h020, h120, h220, U, hold000, hold100, hold200, hold010, hold110, hold210, hold020, hold120, hold220, fold000, fold100, fold200, fold010, fold110, fold210, fold020, fold120, fold220|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

