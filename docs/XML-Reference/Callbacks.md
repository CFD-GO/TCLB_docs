#  Callbacks 
##  VTK 

```xml
<VTK Iterations="1000" what="U,Rho"/>
```

Export VTK data 

| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `what=` | List of Quantities and Geometry Components to export. | Comma separated list of elements from: |
| `name=` | Name of the VTK file. | Unknown type |

##  HDF5 

```xml
<HDF5 Iterations="1000" what="U,Rho"/>
```

Export HDF5 data file and Xdmf description 

| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `what=` | List of Quantities and Geometry Components to export. | Comma separated list of elements from: |
| `name=` | Name of the HDF5 and Xdmf file. | Unknown type |
| `compress=` | Use ZLIB deflation filter to compress output | Unknown type |
| `write_xdmf=` | Write Xdmf accompaning file describing the data for visualisation | Unknown type |
| `point_data=` | Write Xdmf that described the data as Point Data and not Cell Data | Unknown type |
| `chunk=` | HDF5 Chunk size (not supported yet) | Unknown type |
| `precision=` | Select the precision of the HDF5 data. If this doesn't match the calculation type, this can conflict with compression. | Select from: float, double |

##  TXT 

```xml
<TXT .../>
```

Export data to TXT file 

| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `name=` | Name of the TXT file. | Unknown type |
| `gzip=` | If to compress the TXT output | Unknown type |

##  Catalyst 

```xml
<Catalyst script="vis1.py" Iterations="1000"/>
```

Run Catalyst co-processor 

| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `export=` | Select if to provide the Catalyst co-processor with VTK Cell of Point Data | Select from: CellData, PointData |
| `script=` | Catalyst co-processing Python script | Unknown type |
| `preprocess=` | If active, the Python script will be modified so that the files will be placed in the output directory | Unknown type |

##  Log 

```xml
<Log .../>
```

 

| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `name=` |  | Unknown type |

##  Stop 

```xml
<Stop FluxChange="1e-5" Times="5" Iterations="100"/>
```

Allows to stop the computatation if a change of some Global is small for a longer time 

| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `Unknown=` | Limit on change of a specific Global | Numeric (float) |
| `Times=` | Numer of times the change have to be below the limit to stop the computation. | Numeric (int) |

##  PID 

```xml
<PID Flux="10.0" control="ForceX" scale="0.01" DerivativeTime="100" IntegrationTime="10000" Iterations="10"/>
```

PID controller. Allows to achive a specified value of an Global, with tweaking of a Setting 

| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `integral=` | Target value for a specified Global | Select from: list(special = "Globals") |
| `control=` | The setting to control (currently only zonal settings are supported) | Select from: list(special = "Settings") |
| `zone=` | The setting to control (currently only zonal settings are supported) | Select from: list(special = "Zones") |
| `scale=` | The proportional rate D in PID controller | Numeric (float) |
| `DerivativeTime=` | The derivative time scale. D = P * DerivativeTime | Numeric (float) |
| `IntegrationTime=` | The integral time scale. I = P / IntegrationTime | Numeric (float) |

##  Sample 

```xml
<Sample Iterations="1000" what="U,P" ><Point dx="10" dy="20"/></Sample>
```

Effecient sampling of quantities on each iteration, without need for VTK 

| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `what=` | List of Quantities to be sampled. By default all are sampled. | Comma separated list of elements from: |

