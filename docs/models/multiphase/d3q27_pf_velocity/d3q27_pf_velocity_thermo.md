

## Description
The 'd3q27_pf_velocity' model is a multiphase 3D lattice Boltzmann model for the simulation of immiscible fluids (at both high and low density ratios).

The base implementation uses a velocity based LBM for capturing the hydrodynamics of the flow and solves the conservative phase field equation for the interfacial dynamics. To enhance stability, a Weighted-Multiple-Relaxation-Time collision operator is used.

The model currently has 3 options at compile time: 
	- OutFlow; this enables convective and neumann outflow conditions. It requires extra memory access and is thus added as a compile option (faster code without).
	- BGK; this is in existence for the sole reason of initial testing, however if you would like to use a BGK collision operator - this flag is necessary.
	- autosym; both of these options can be compiled with symmetry conditions. 


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 321354f)/src/d3q27_pf_velocity_thermo/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 321354f)/src/d3q27_pf_velocity_thermo/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`T_init`|Initial temperature field unit=[K]|
|`Uavg`|Average velocity of channel for 2D Poiseuille flow|
|`PhaseField`|Initial PhaseField distribution|
|`VelocityX`|inlet/outlet/init velocity|
|`VelocityY`|inlet/outlet/init velocity|
|`VelocityZ`|inlet/outlet/init velocity|
|`Pressure`|inlet/outlet/init density|
|`TempChangeInObj`|Weight of [TempChange] in objective|
|`InterfacePositionInObj`|Weight of [trackPosition] in objective|
|`VfrontInObj`|Weight of [velocity infront of bubble] in objective|
|`VbackInObj`|Weight of [velocity behind bubble] in objective|
|`RTISpikeInObj`|Weight of [SpikeTracker ] in objective|
|`RTIBubbleInObj`|Weight of [BubbleTracker] in objective|
|`RTISaddleInObj`|Weight of [SaddleTracker] in objective|
|`PressureLossInObj`|Weight of [pressure loss] in objective|
|`OutletFluxInObj`|Weight of [pressure loss] in objective|
|`InletFluxInObj`|Weight of [pressure loss] in objective|
|`TotalDensityInObj`|Weight of [Mass conservation check] in objective|
|`KineticEnergyInObj`|Weight of [Measure of kinetic energy] in objective|
|`XLocationInObj`|Weight of [tracking of x-centroid of the gas regions in domain] in objective|
|`GasTotalVelocityInObj`|Weight of [use to determine avg velocity of bubbles] in objective|
|`GasTotalVelocityXInObj`|Weight of [use to determine avg velocity of bubbles] in objective|
|`GasTotalVelocityYInObj`|Weight of [use to determine avg velocity of bubbles] in objective|
|`GasTotalVelocityZInObj`|Weight of [use to determine avg velocity of bubbles] in objective|
|`GasCellsInObj`|Weight of [use in line with GasTotalVelocity to determine average velocity] in objective|
|`LiqTotalVelocityInObj`|Weight of [use to determine avg velocity of droplets] in objective|
|`LiqTotalVelocityXInObj`|Weight of [use to determine avg velocity of droplets] in objective|
|`LiqTotalVelocityYInObj`|Weight of [use to determine avg velocity of droplets] in objective|
|`LiqTotalVelocityZInObj`|Weight of [use to determine avg velocity of droplets] in objective|
|`LiqCellsInObj`|Weight of [use in line with LiqTotalVelocity to determine average velocity] in objective|
|`DropFrontInObj`|Weight of [Highest location of droplet] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`surfPower`||Use for parabolic representation of surface tension|
|`sigma_T`||Derivative describing how surface tension changes with temp unit=[N/m2]|
|`sigma_TT`||Derivative describing how surface tension changes with temp unit=[N/m3]|
|`T_ref`||Reference temperature at which sigma is set unit=[K]|
|`cp_h`||specific heat for heavy phase unit=[J/kg/K]|
|`cp_l`||specific heat for light phase unit=[J/kg/K]|
|`k_h`||thermal conductivity for heavy phase unit=[W/m/K]|
|`k_l`||thermal conductivity for light phase unit=[W/m/K]|
|`dT`||Application of vertical temp gradient to speed up initialisation unit=[K]|
|`dTx`||Application of horizontal temp gradient to speed up initialisation unit=[K]|
|`stabiliser`||If not solving flow field, can adjust temperature timestep|
|`HEIGHT`||Height of channel for 2D Poiseuille flow|
|`developedFlow`||set greater than 0 for fully developed flow in the domain (x-direction)|
|`Density_h`||High density|
|`Density_l`||Low  density|
|`PhaseField_h`||PhaseField in Liquid|
|`PhaseField_l`||PhaseField gas|
|`IntWidth`||Anti-diffusivity coeff|
|`omega_phi`|1.0/(3*M+0.5)|one over relaxation time (phase field)|
|`M`||Mobility|
|`sigma`||surface tension|
|`ContactAngle`||Contact angle in degrees|
|`radAngle`|ContactAngle*3.1415926535897/180|Conversion to rads for calcs|
|`RTI_Characteristic_Length`||Use for RTI instability|
|`Radius`||Diffuse Sphere Radius|
|`CenterX`||Diffuse sphere center_x|
|`CenterY`||Diffuse sphere center_y|
|`CenterZ`||Diffuse sphere center_z|
|`BubbleType`||droplet(1.0) or bubble(-1.0)?!|
|`DonutTime`||Radius of a Torus - initialised to travel along x-axis|
|`Donut_h`||Half donut thickness, i.e. the radius of the cross-section|
|`Donut_D`||Dilation factor along the x-axis|
|`Donut_x0`||Position along x-axis|
|`tau_l`|(3*Viscosity_l)|relaxation time (low density fluid)|
|`tau_h`|(3*Viscosity_h)|relaxation time (high density fluid)|
|`Viscosity_l`||kinematic viscosity|
|`Viscosity_h`||kinematic viscosity|
|`GravitationX`||applied (rho)*GravitationX|
|`GravitationY`||applied (rho)*GravitationY|
|`GravitationZ`||applied (rho)*GravitationZ|
|`BuoyancyX`||applied (rho_h-rho)*BuoyancyX|
|`BuoyancyY`||applied (rho_h-rho)*BuoyancyY|
|`BuoyancyZ`||applied (rho_h-rho)*BuoyancyZ|
|`xyzTrack`||x<-1, y<-2, z<-3|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`T`|`K`|T|
|`ST`|`N/m`|ST|
|`Rho`|`kg/m3`|Rho|
|`PhaseField`|`1`|PhaseField|
|`U`|`m/s`|U|
|`P`|`Pa`|P|
|`Normal`|`1`|Normal|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`DropFront`|`m`|Highest location of droplet|
|`TempChange`|`1`|TempChange|
|`InterfacePosition`|`1`|trackPosition|
|`Vfront`|`1`|velocity infront of bubble|
|`Vback`|`1`|velocity behind bubble|
|`RTISpike`|`1`|SpikeTracker |
|`RTIBubble`|`1`|BubbleTracker|
|`RTISaddle`|`1`|SaddleTracker|
|`PressureLoss`|`1mPa`|pressure loss|
|`OutletFlux`|`1m2/s`|pressure loss|
|`InletFlux`|`1m2/s`|pressure loss|
|`TotalDensity`|`1kg/m3`|Mass conservation check|
|`KineticEnergy`|`J`|Measure of kinetic energy|
|`XLocation`|`m`|tracking of x-centroid of the gas regions in domain|
|`GasTotalVelocity`|`m/s`|use to determine avg velocity of bubbles|
|`GasTotalVelocityX`|`m/s`|use to determine avg velocity of bubbles|
|`GasTotalVelocityY`|`m/s`|use to determine avg velocity of bubbles|
|`GasTotalVelocityZ`|`m/s`|use to determine avg velocity of bubbles|
|`GasCells`|`1`|use in line with GasTotalVelocity to determine average velocity|
|`LiqTotalVelocity`|`m/s`|use to determine avg velocity of droplets|
|`LiqTotalVelocityX`|`m/s`|use to determine avg velocity of droplets|
|`LiqTotalVelocityY`|`m/s`|use to determine avg velocity of droplets|
|`LiqTotalVelocityZ`|`m/s`|use to determine avg velocity of droplets|
|`LiqCells`|`1`|use in line with LiqTotalVelocity to determine average velocity|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|ConstantTemp, EAdiabatic, Centerline, Smoothing, Spiketrack, Saddletrack, Bubbletrack|
|BOUNDARY|MovingWall_N, MovingWall_S, NVelocity, EPressure, EVelocity, Solid, Wall, WPressure, WVelocity|
|COLLISION|BGK, MRT|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`g0`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|g0|
|`g1`|![stencil](/images/st_b1n1p0p0p0p0p0.png)|g1|
|`g2`|![stencil](/images/st_b1p0p0p0p1p0p0.png)|g2|
|`g3`|![stencil](/images/st_b1p0n1p0p0p0p0.png)|g3|
|`g4`|![stencil](/images/st_b1p0p0p0p0p1p0.png)|g4|
|`g5`|![stencil](/images/st_b1p0p0n1p0p0p0.png)|g5|
|`g6`|![stencil](/images/st_b1p0p0p0p0p0p1.png)|g6|
|`g7`|![stencil](/images/st_b1n1n1n1p0p0p0.png)|g7|
|`g8`|![stencil](/images/st_b1p0n1n1p1p0p0.png)|g8|
|`g9`|![stencil](/images/st_b1n1p0n1p0p1p0.png)|g9|
|`g10`|![stencil](/images/st_b1p0p0n1p1p1p0.png)|g10|
|`g11`|![stencil](/images/st_b1n1n1p0p0p0p1.png)|g11|
|`g12`|![stencil](/images/st_b1p0n1p0p1p0p1.png)|g12|
|`g13`|![stencil](/images/st_b1n1p0p0p0p1p1.png)|g13|
|`g14`|![stencil](/images/st_b1p0p0p0p1p1p1.png)|g14|
|`g15`|![stencil](/images/st_b1n1n1p0p0p0p0.png)|g15|
|`g16`|![stencil](/images/st_b1p0n1p0p1p0p0.png)|g16|
|`g17`|![stencil](/images/st_b1n1p0p0p0p1p0.png)|g17|
|`g18`|![stencil](/images/st_b1p0p0p0p1p1p0.png)|g18|
|`g19`|![stencil](/images/st_b1n1p0n1p0p0p0.png)|g19|
|`g20`|![stencil](/images/st_b1p0p0n1p1p0p0.png)|g20|
|`g21`|![stencil](/images/st_b1n1p0p0p0p0p1.png)|g21|
|`g22`|![stencil](/images/st_b1p0p0p0p1p0p1.png)|g22|
|`g23`|![stencil](/images/st_b1p0n1n1p0p0p0.png)|g23|
|`g24`|![stencil](/images/st_b1p0p0n1p0p1p0.png)|g24|
|`g25`|![stencil](/images/st_b1p0n1p0p0p0p1.png)|g25|
|`g26`|![stencil](/images/st_b1p0p0p0p0p1p1.png)|g26|
|`h0`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|h0|
|`h1`|![stencil](/images/st_b1n1p0p0p0p0p0.png)|h1|
|`h2`|![stencil](/images/st_b1p0p0p0p1p0p0.png)|h2|
|`h3`|![stencil](/images/st_b1p0n1p0p0p0p0.png)|h3|
|`h4`|![stencil](/images/st_b1p0p0p0p0p1p0.png)|h4|
|`h5`|![stencil](/images/st_b1p0p0n1p0p0p0.png)|h5|
|`h6`|![stencil](/images/st_b1p0p0p0p0p0p1.png)|h6|
|`h7`|![stencil](/images/st_b1n1n1n1p0p0p0.png)|h7|
|`h8`|![stencil](/images/st_b1p0n1n1p1p0p0.png)|h8|
|`h9`|![stencil](/images/st_b1n1p0n1p0p1p0.png)|h9|
|`h10`|![stencil](/images/st_b1p0p0n1p1p1p0.png)|h10|
|`h11`|![stencil](/images/st_b1n1n1p0p0p0p1.png)|h11|
|`h12`|![stencil](/images/st_b1p0n1p0p1p0p1.png)|h12|
|`h13`|![stencil](/images/st_b1n1p0p0p0p1p1.png)|h13|
|`h14`|![stencil](/images/st_b1p0p0p0p1p1p1.png)|h14|
|`U`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|U|
|`V`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|V|
|`W`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|W|
|`nw_x`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nw_x|
|`nw_y`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nw_y|
|`nw_z`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nw_z|
|`PhaseF`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|PhaseF|
|`Temp`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|Temp|
|`Cond`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|Cond|
|`SurfaceTension`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|SurfaceTension|
|`RK1`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|RK1|
|`RK2`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|RK2|
|`RK3`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|RK3|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`g0`|g0|![stencil](/images/st_b1p0p0p0p0p0p0.png)|g0|
|`g1`|g1|![stencil](/images/st_b1p1p0p0p1p0p0.png)|g1|
|`g2`|g2|![stencil](/images/st_b1n1p0p0n1p0p0.png)|g2|
|`g3`|g3|![stencil](/images/st_b1p0p1p0p0p1p0.png)|g3|
|`g4`|g4|![stencil](/images/st_b1p0n1p0p0n1p0.png)|g4|
|`g5`|g5|![stencil](/images/st_b1p0p0p1p0p0p1.png)|g5|
|`g6`|g6|![stencil](/images/st_b1p0p0n1p0p0n1.png)|g6|
|`g7`|g7|![stencil](/images/st_b1p1p1p1p1p1p1.png)|g7|
|`g8`|g8|![stencil](/images/st_b1n1p1p1n1p1p1.png)|g8|
|`g9`|g9|![stencil](/images/st_b1p1n1p1p1n1p1.png)|g9|
|`g10`|g10|![stencil](/images/st_b1n1n1p1n1n1p1.png)|g10|
|`g11`|g11|![stencil](/images/st_b1p1p1n1p1p1n1.png)|g11|
|`g12`|g12|![stencil](/images/st_b1n1p1n1n1p1n1.png)|g12|
|`g13`|g13|![stencil](/images/st_b1p1n1n1p1n1n1.png)|g13|
|`g14`|g14|![stencil](/images/st_b1n1n1n1n1n1n1.png)|g14|
|`g15`|g15|![stencil](/images/st_b1p1p1p0p1p1p0.png)|g15|
|`g16`|g16|![stencil](/images/st_b1n1p1p0n1p1p0.png)|g16|
|`g17`|g17|![stencil](/images/st_b1p1n1p0p1n1p0.png)|g17|
|`g18`|g18|![stencil](/images/st_b1n1n1p0n1n1p0.png)|g18|
|`g19`|g19|![stencil](/images/st_b1p1p0p1p1p0p1.png)|g19|
|`g20`|g20|![stencil](/images/st_b1n1p0p1n1p0p1.png)|g20|
|`g21`|g21|![stencil](/images/st_b1p1p0n1p1p0n1.png)|g21|
|`g22`|g22|![stencil](/images/st_b1n1p0n1n1p0n1.png)|g22|
|`g23`|g23|![stencil](/images/st_b1p0p1p1p0p1p1.png)|g23|
|`g24`|g24|![stencil](/images/st_b1p0n1p1p0n1p1.png)|g24|
|`g25`|g25|![stencil](/images/st_b1p0p1n1p0p1n1.png)|g25|
|`g26`|g26|![stencil](/images/st_b1p0n1n1p0n1n1.png)|g26|
|`h0`|h0|![stencil](/images/st_b1p0p0p0p0p0p0.png)|h0|
|`h1`|h1|![stencil](/images/st_b1p1p0p0p1p0p0.png)|h1|
|`h2`|h2|![stencil](/images/st_b1n1p0p0n1p0p0.png)|h2|
|`h3`|h3|![stencil](/images/st_b1p0p1p0p0p1p0.png)|h3|
|`h4`|h4|![stencil](/images/st_b1p0n1p0p0n1p0.png)|h4|
|`h5`|h5|![stencil](/images/st_b1p0p0p1p0p0p1.png)|h5|
|`h6`|h6|![stencil](/images/st_b1p0p0n1p0p0n1.png)|h6|
|`h7`|h7|![stencil](/images/st_b1p1p1p1p1p1p1.png)|h7|
|`h8`|h8|![stencil](/images/st_b1n1p1p1n1p1p1.png)|h8|
|`h9`|h9|![stencil](/images/st_b1p1n1p1p1n1p1.png)|h9|
|`h10`|h10|![stencil](/images/st_b1n1n1p1n1n1p1.png)|h10|
|`h11`|h11|![stencil](/images/st_b1p1p1n1p1p1n1.png)|h11|
|`h12`|h12|![stencil](/images/st_b1n1p1n1n1p1n1.png)|h12|
|`h13`|h13|![stencil](/images/st_b1p1n1n1p1n1n1.png)|h13|
|`h14`|h14|![stencil](/images/st_b1n1n1n1n1n1n1.png)|h14|
|`U`|U|![stencil](/images/st_b1p0p0p0p0p0p0.png)|U|
|`V`|V|![stencil](/images/st_b1p0p0p0p0p0p0.png)|V|
|`W`|W|![stencil](/images/st_b1p0p0p0p0p0p0.png)|W|
|`nw_x`|nw_x|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nw_x|
|`nw_y`|nw_y|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nw_y|
|`nw_z`|nw_z|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nw_z|
|`Temp`|Temp|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Temp|
|`Cond`|Cond|![stencil](/images/st_b1p0p0p0p0p0p0.png)|Cond|
|`SurfaceTension`|SurfaceTension|![stencil](/images/st_b1p0p0p0p0p0p0.png)|SurfaceTension|
|`RK1`|RK1|![stencil](/images/st_b1p0p0p0p0p0p0.png)|RK1|
|`RK2`|RK2|![stencil](/images/st_b1p0p0p0p0p0p0.png)|RK2|
|`RK3`|RK3|![stencil](/images/st_b1p0p0p0p0p0p0.png)|RK3|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|CopyDistributions|TempCopy|_none_|g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, U, V, W, nw_x, nw_y, nw_z, PhaseF, Temp, Cond, SurfaceTension, RK1, RK2, RK3|
|CopyThermal|ThermalCopy|Temp, Cond, SurfaceTension|Temp, Cond, SurfaceTension|
|RK_1|TempUpdate1|U, V, W, Temp, Cond|RK1|
|RK_2|TempUpdate2|U, V, W, Temp, Cond, RK1|RK2|
|RK_3|TempUpdate3|U, V, W, Temp, Cond, RK1, RK2|RK3|
|RK_4|TempUpdate4|U, V, W, Temp, Cond, RK1, RK2, RK3|Temp, SurfaceTension|
|NonLocalTemp|BoundUpdate|Temp|Temp, SurfaceTension|
|WallInit|Init_wallNorm|_none_|nw_x, nw_y, nw_z|
|calcWall|calcWallPhase|nw_x, nw_y, nw_z|PhaseF|
|PhaseInit|Init|_none_|PhaseF, Temp, Cond, SurfaceTension, RK1, RK2, RK3|
|BaseInit|Init_distributions|_none_|g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, U, V, W, PhaseF|
|calcPhase|calcPhaseF|g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, U, V, W, nw_x, nw_y, nw_z|PhaseF|
|BaseIter|Run|g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, U, V, W, nw_x, nw_y, nw_z, Temp, Cond, SurfaceTension, RK1, RK2, RK3|g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, U, V, W, nw_x, nw_y, nw_z, Temp, Cond, SurfaceTension, RK1, RK2, RK3|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|TempToSteadyState|CopyDistributions, RK_1, RK_2, RK_3, RK_4, NonLocalTemp|
|Iteration|BaseIter, calcPhase, calcWall, RK_1, RK_2, RK_3, RK_4, NonLocalTemp|
|IterationConstantTemp|BaseIter, calcPhase, calcWall, CopyThermal|
|Init|PhaseInit, WallInit, calcWall, BaseInit|

