
# Smoothing initial distributions

It may happen, that initialization of a particular model with sharp interface would cause it to crash.
To alleviate it, one can pre-run the solver to diffuse the interface for few iterations, then run the actual case.

```xml
<?xml version="1.0"?>
<CLBConfig version="2.0" output="output/">
    <Geometry nx="256" ny="256">
        <MRT><Box /></MRT>
        <Smoothing><Box /></Smoothing> 
        <!--   your geometry     -->
    </Geometry>

    <Model>
        <Params
            <!--   your parameters     -->
        />
    </Model> 
    <Solve Iterations="25" output="output/"> <VTK Iterations="1"/> </Solve>

    <Geometry> <!--  now disable the smoothing    -->
      <None mask="ADDITIONALS">
        <Box nx="256" ny="256"/>
      </None>
    </Geometry>

<Solve Iterations="50" output="output/"> <VTK Iterations="1"/> </Solve>
<Failcheck Iterations="1000" nx="256" ny="256"/>
<Solve Iterations="5000" output="output/"> <VTK Iterations="250"/> </Solve>

</CLBConfig>
```

Don't forget to add the new node type in `Dynamics.R`
```R
AddNodeType(name="Smoothing", group="ADDITIONALS")
```

Then in `Dynamics.c` you can implement the smoothing function like:

```c
CudaDeviceFunction void calcIter() {

    if ((NodeType & NODE_ADDITIONALS) == NODE_Smoothing){
        Init_distributions(); // simply initialize again - if the equilibrium velocity is 0 than you should obtain a diffusive effect
        //mySmoothing(); // another way - special function which does the smoothing
    }
    else{
        BC_Switcher();

        if (NodeType & NODE_MRT) {
            CollisionMRT();
        } 
    }
}
```
