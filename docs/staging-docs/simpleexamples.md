```@meta
EditURL = "<unknown>/docs/src/simpleexamples.jl"
```

# Simple Examples
[![](https://mybinder.org/badge_logo.svg)](<unknown>/notebooks/complexexamples.ipynb)
[![](https://img.shields.io/badge/show-nbviewer-579ACA.svg)](<unknown>/notebooks/complexexamples.ipynb)

To begin using JuliaPackageDemo.jl we first need to load in the package with the `using` syntax. We will also load in PyPlot.jl so we can plot some of the data.

```@example simpleexamples
using JuliaPackageDemo
using Plots
```

Next we will generate a time vector and use this as an input to the function [`coolfunction1`](@ref). The result is plotted.

```@example simpleexamples
# get time vector
timevec = collect(0:0.1:10)

# get function values at time points
data = coolfunction1.(timevec)

# plot the data
plot(timevec, data)
```

For more information on [`coolfunction1`](@ref) please see the [API](@ref) section. Now we can try something similar with [`coolfunction2`](@ref):
!!! note "Beware!"
    Admonitions are a useful feature of Documenter.jl which would be tricky to use directly from Notebooks.

```@example simpleexamples
# get time vector
timevec = collect(0:0.1:10)

# get function values at time points
data = coolfunction2.(timevec)

# plot the data
plot(timevec, data)
```

For more complex examples, see [Complex Examples](@ref) section.

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

