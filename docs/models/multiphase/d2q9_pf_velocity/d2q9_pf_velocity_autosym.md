

## Description
The 'd2q9_pf_cm' model is a multiphase 2D (planar) lattice Boltzmann model for the simulation of incompressible, immiscible fluids (at both high and low density ratios).

The base implementation uses an incompressible, velocity based LBM for capturing the hydrodynamics of the flow and solves the conservative phase field equation for the interfacial dynamics. 
To enhance stability, a Multiple-Relaxation-Time and Cascaded collision operator are used.

The MRT model has 2 options at compile time: 

* GF: Guo Forcing;

      This is using a higher order Forcing scheme
      from the work of Guo et al. (2002) for the hydrodynamics

* RT: Ren Temporal

      This is using the Temporal term included in the 
      phase field equilibrium distribution function by
      Ren et al. (2016)

Publications:
 "    Improved locality of the phase-field lattice Boltzmann
      model for immiscible fluids at high density ratios          "
 Authors: A. Fakhari, T. Mitchell, C. Leonardi, D. Bolster (2017) 
 DOI: 10.1103/PhysRevE.96.053301

Boundary Conditions options at compile time:
* Outflow: 

      This is used for outflow boundaries, it is made as an
      option as it requires additional fields for calculations
      so results in a slower code.

* autosym:

      Allows symmetry node type flags introduced in v6.2

Updates: 16/08/2018: Cascaded (CLBM) collision scheme is introduced for both hydrodynamics and phase-field.


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 67a6be7)/src/d2q9_pf_velocity_autosym/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 67a6be7)/src/d2q9_pf_velocity_autosym/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`PhaseField_init`|Initial/Inflow PhaseField distribution|
|`VelocityX`|inlet/outlet/init velocity|
|`VelocityY`|inlet/outlet/init velocity|
|`Pressure`|inlet/outlet/init density|
|`GravitationX`|applied (rho)*GravitationX|
|`GravitationY`|applied (rho)*GravitationY|
|`PressureLossInObj`|Weight of [pressure loss] in objective|
|`OutletFluxInObj`|Weight of [pressure loss] in objective|
|`InletFluxInObj`|Weight of [pressure loss] in objective|
|`TotalDensityInObj`|Weight of [Mass conservation check] in objective|
|`RTIBubbleInObj`|Weight of [Bubble Tracker] in objective|
|`RTISpikeInObj`|Weight of [Spike Tracker] in objective|
|`NMovingWallForceInObj`|Weight of [force exerted on the N Moving Wall] in objective|
|`NMovingWallPowerInObj`|Weight of [implented: Vx* incoming momentum (precollision)] in objective|
|`FDragInObj`|Weight of [Force exerted on body in X-direction] in objective|
|`FLiftInObj`|Weight of [Force exerted on body in Y-direction] in objective|
|`FTotalInObj`|Weight of [Force exerted on body in X+Y -direction] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`Period`||Number of cells per cos wave|
|`Perturbation`||Size of wave perturbation, Perturbation Period|
|`MidPoint`||height of RTI centerline|
|`Radius`||Radius of diffuse interface circle|
|`CenterX`||Circle center x-coord|
|`CenterY`||Circle Center y-coord|
|`BubbleType`||Drop/bubble|
|`Density_h`||High density fluid|
|`Density_l`||Low  density fluid|
|`PhaseField_h`||PhaseField in high density fluid|
|`PhaseField_l`||PhaseField in low density fluid|
|`W`||Anti-diffusivity coeff (phase interfacial thickness) |
|`omega_phi`|1.0/(3*M+0.5)|one over relaxation time (phase field)|
|`M`||Mobility|
|`sigma`||surface tension|
|`ContactAngle`||Contact angle in degrees - in reference to the high density fluid|
|`radAngle`|ContactAngle*3.1415926535897/180|Conversion to rads for calcs|
|`tau_l`|(3*Viscosity_l)|relaxation time (low density fluid)|
|`tau_h`|(3*Viscosity_h)|relaxation time (high density fluid)|
|`Viscosity_l`||kinematic viscosity|
|`Viscosity_h`||kinematic viscosity|
|`omega_bulk`|1.0/(3*bulk_visc+0.5)|inverse of bulk relaxation time|
|`bulk_visc`||bulk viscosity|
|`BuoyancyX`||applied (rho-rho_h)*BuoyancyX|
|`BuoyancyY`||applied (rho-rho_h)*BuoyancyY|
|`fixedIterator`||fixed iterator for velocity calculation|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`PhaseField`|`1`|PhaseField|
|`U`|`m/s`|U|
|`NormalizedPressure`|`Pa`|NormalizedPressure|
|`Pressure`|`Pa`|Pressure|
|`Normal`|`1`|Normal|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`RTIBubble`|`1`|Bubble Tracker|
|`RTISpike`|`1`|Spike Tracker|
|`PressureLoss`|`1mPa`|pressure loss|
|`OutletFlux`|`1m2/s`|pressure loss|
|`InletFlux`|`1m2/s`|pressure loss|
|`TotalDensity`|`1kg/m3`|Mass conservation check|
|`NMovingWallForce`|`1`|force exerted on the N Moving Wall|
|`NMovingWallPower`|`1`|implented: Vx* incoming momentum (precollision)|
|`FDrag`|`N`|Force exerted on body in X-direction|
|`FLift`|`N`|Force exerted on body in Y-direction|
|`FTotal`|`N`|Force exerted on body in X+Y -direction|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|SpikeTrack, BubbleTrack, Smoothing|
|BODY|Body|
|BOUNDARY|MovingWall_N, MovingWall_S, NVelocity, WVelocity, Solid, Wall|
|COLLISION|BGK, MRT|
|SETTINGZONE|DefaultZone|
|SYMX|SymmetryX_plus, SymmetryX_minus|
|SYMY|SymmetryY_plus, SymmetryY_minus|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`g[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|g[0]|
|`g[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|g[1]|
|`g[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|g[2]|
|`g[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|g[3]|
|`g[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|g[4]|
|`g[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|g[5]|
|`g[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|g[6]|
|`g[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|g[7]|
|`g[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|g[8]|
|`h[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h[0]|
|`h[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h[1]|
|`h[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h[2]|
|`h[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h[3]|
|`h[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h[4]|
|`h[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h[5]|
|`h[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h[6]|
|`h[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h[7]|
|`h[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h[8]|
|`nw_x`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|phase field normal at the wall in x direction, pointing into fluid|
|`nw_y`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|nw_y|
|`U`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|U|
|`V`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|V|
|`PhaseF`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|PhaseF|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`g[0]`|g[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|g[0]|
|`g[1]`|g[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|g[1]|
|`g[2]`|g[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|g[2]|
|`g[3]`|g[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|g[3]|
|`g[4]`|g[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|g[4]|
|`g[5]`|g[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|g[5]|
|`g[6]`|g[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|g[6]|
|`g[7]`|g[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|g[7]|
|`g[8]`|g[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|g[8]|
|`h[0]`|h[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h[0]|
|`h[1]`|h[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h[1]|
|`h[2]`|h[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h[2]|
|`h[3]`|h[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h[3]|
|`h[4]`|h[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h[4]|
|`h[5]`|h[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h[5]|
|`h[6]`|h[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h[6]|
|`h[7]`|h[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h[7]|
|`h[8]`|h[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h[8]|
|`nw_x`|nw_x|![stencil](/images/st_a1p0p0p0p0p0p0.png)|phase field normal at the wall in x direction, pointing into fluid|
|`nw_y`|nw_y|![stencil](/images/st_a1p0p0p0p0p0p0.png)|nw_y|
|`U`|U|![stencil](/images/st_a1p0p0p0p0p0p0.png)|U|
|`V`|V|![stencil](/images/st_a1p0p0p0p0p0p0.png)|V|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|PhaseInit|Init_phase|_none_|PhaseF|
|WallInit|Init_wallNorm|_none_|nw_x, nw_y|
|BaseInit|Init_distributions|_none_|g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], U, V|
|BaseIter|calcHydroIter|g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], nw_x, nw_y, U, V|g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], nw_x, nw_y, U, V|
|PhaseIter|calcPhaseFIter|g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], nw_x, nw_y, U, V|PhaseF|
|WallIter|calcWallPhaseIter|nw_x, nw_y|PhaseF|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIter, PhaseIter, WallIter|
|Init|PhaseInit, WallInit, WallIter, BaseInit|

