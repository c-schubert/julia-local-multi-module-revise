
# Setup Modul: MultiMod

## Generate Sub-Module via Pkg.generate

Go to src folder of the main module and open julia execute the follwing command in package mode (]=package mode):

```julia
generate MultiMod
```

## Maunal Sub-Module Generation:

1. Set up folder/directory structure

```
mkdir src/MultiMod
mkdir src/MultiMod/src
```
2. Generate file: Project.toml

```
touch src/MultiMod/Project.toml
```

3. Write MultiMod.jl to src/MultiMod/src

4. Generate sub-module UUID

``` julia
using Pkg
Pkg.add("UUIDs")
import UUIDs
UUIDs.uuid1()
```

5. Write UUID und modul name to Project.toml:

```
name = "MultiMod"
uuid = "e1890f74-1c79-11ed-0ad1-e532d86f9f42"
```

6. Start julia and execute the following commands in package mode (]=package mode):

``` julia

activate .
instatiate
```

6. Close julia

