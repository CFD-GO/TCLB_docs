

## Description
advection_diffusion2D_fields


## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9e1ceb1)/src/advection_diffusion2D_fields/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9e1ceb1)/src/advection_diffusion2D_fields/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Value`|Value|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`diff_coeff`||diff_coeff|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Phi`|`1`|Phi|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|Dirichlet|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`phi`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|phi|
|`ux`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|free stream velocity|
|`uy`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|free stream velocity|
|`phi0`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|initial phi|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`ux`|ux|![stencil](/images/st_a1p0p0p0p0p0p0.png)|free stream velocity|
|`uy`|uy|![stencil](/images/st_a1p0p0p0p0p0p0.png)|free stream velocity|
|`phi0`|phi0|![stencil](/images/st_a1p0p0p0p0p0p0.png)|initial phi|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|InitFromFieldsStage|InitFromFields|ux, uy, phi0|phi, ux, uy, phi0|
|BaseIteration|Run|ux, uy, phi0|phi, ux, uy, phi0|
|BaseInit|Init|_none_|phi, ux, uy, phi0|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|InitFromFields|InitFromFieldsStage|
|Iteration|BaseIteration|
|Init|BaseInit|

