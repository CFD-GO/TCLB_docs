#  Executions 
##  Solve 

```xml
<Solve .../>
```

Main solution element. It runs a prescribed number of iterations.
 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |

##  Adjoint 

```xml
<Adjoint .../>
```

 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)), [Executions](Executions.md) ([<code>&lt;Solve/&gt;</code>](Executions.md#solve), [<code>&lt;Adjoint/&gt;</code>](Executions.md#adjoint), [<code>&lt;Optimize/&gt;</code>](Executions.md#optimize), [<code>&lt;Threshold/&gt;</code>](Executions.md#threshold), [<code>&lt;ThresholdNow/&gt;</code>](Executions.md#thresholdnow), [<code>&lt;Repeat/&gt;</code>](Executions.md#repeat), [<code>&lt;LoadBinary/&gt;</code>](Executions.md#loadbinary), [<code>&lt;SaveBinary/&gt;</code>](Executions.md#savebinary), [<code>&lt;LoadMemoryDump/&gt;</code>](Executions.md#loadmemorydump), [<code>&lt;SaveMemoryDump/&gt;</code>](Executions.md#savememorydump), [<code>&lt;EvalIf/&gt;</code>](Executions.md#evalif)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |

##  Optimize 

```xml
<Optimize .../>
```

 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)), [Executions](Executions.md) ([<code>&lt;Solve/&gt;</code>](Executions.md#solve), [<code>&lt;Adjoint/&gt;</code>](Executions.md#adjoint), [<code>&lt;Optimize/&gt;</code>](Executions.md#optimize), [<code>&lt;Threshold/&gt;</code>](Executions.md#threshold), [<code>&lt;ThresholdNow/&gt;</code>](Executions.md#thresholdnow), [<code>&lt;Repeat/&gt;</code>](Executions.md#repeat), [<code>&lt;LoadBinary/&gt;</code>](Executions.md#loadbinary), [<code>&lt;SaveBinary/&gt;</code>](Executions.md#savebinary), [<code>&lt;LoadMemoryDump/&gt;</code>](Executions.md#loadmemorydump), [<code>&lt;SaveMemoryDump/&gt;</code>](Executions.md#savememorydump), [<code>&lt;EvalIf/&gt;</code>](Executions.md#evalif)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `Method=` | Optimization method | Select from: MMA, L-BFGS-B, COBYLA, NELDERMEAD |
| `Material=` | Optional constraint on "amount of material", which is the sum of Topological parameters | Select from: more, less |
| `XAbsTolerance=` |  | Numeric (float) |
| `RelTolerance=` | Relative Tolerance | Numeric (float) |
| `AbsTolerance=` | Absolute Tolerance | Numeric (float) |
| `StopAtValue=` | At what value of the objective to stop | Numeric (float) |
| `MaxEvaluations=` | Maximal number of evalulations (optimizer iterations) | Numeric (int) |

##  Threshold 

```xml
<Threshold .../>
```

Goes with a threshold from 0 to 1. Then for a specific threshold sets all the parameter below the threshold to 0 and above the threshold to 1. Then runs the calculation for the binary (0-1) parameter set.
 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `Levels=` | Number of Levels to calculate between 0 and 1 | Numeric (int) |

##  ThresholdNow 

```xml
<ThresholdNow .../>
```

For a specific threshold sets all the parameter below the threshold to 0 and above the threshold to 1. Then runs the calculation for the binary (0-1) parameter set.
 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `Level=` | Threshold level to apply | Numeric (float) |

##  Repeat 

```xml
<Repeat Times="5">
  <Init/>
  <Solve Iterations="1000"/>
  <VTK/>
</Repeat>
```

A loop element 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `Times=` | Numer of Times to repeat a segment | Numeric (int) |

##  LoadBinary 

```xml
<LoadBinary .../>
```

Load a Field from a binary file (low level) 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `file=` | path to a binary file (without the suffix) | Unknown type |
| `comp=` | Field to load from the binary file | Select from: list(special = "Fields") |

##  SaveBinary 

```xml
<SaveBinary .../>
```

Save a Field to a binary file (low level) 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `file=` | the name of the binary file | Unknown type |
| `filename=` | full path to the binary file | Unknown type |
| `comp=` | Field to save to the binary file | Select from: list(special = "Fields") |

##  LoadMemoryDump 

```xml
<LoadMemoryDump .../>
```

Load all fields from a dump created by Save element 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `file=` | path to a binary file (without the suffix) | Unknown type |

##  SaveMemoryDump 

```xml
<SaveMemoryDump .../>
```

Save all fields, to be loaded later on with LoadMemoryDump
Warning: Save and Load Memory Dump have to be used on the *same number of cores*, same model and same precision.
 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `file=` | the name of the binary file | Unknown type |
| `filename=` | full path to the binary file | Unknown type |

##  EvalIf 

```xml
<EvalIf .../>
```

Evaluate subactions only if opt_present build (d2qg and d2q9_bc, option is *bc* )options are present, or only if opt_missing is missing
 
Possible children: [Params](Params.md) ([<code>&lt;Param/&gt;</code>](Params.md#param)) 


| Attribute | Comment | Value |
| --- | --- | --- |
| `Iterations=` |  | Value with unit (int) |
| `opt_present=` |  | Unknown type |
| `opt_missing=` |  | Unknown type |

