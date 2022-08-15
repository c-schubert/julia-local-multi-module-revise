
# Setup Sub Modul: MyMod2

## Generate Sub-Module via Pkg.generate

Go to src folder of the main module and open julia execute the follwing command in package mode (]=package mode):

```julia
generate MyMod2
```

## Maunal Sub-Module Generation:

1. Set up folder/directory structure

```
mkdir src/MyMod2
mkdir src/MyMod2/src
```
2. Generate file: Project.toml

```
touch src/MyMod2/Project.toml
```

3. Write MyMod2.jl to src/MyMod2/src

4. Generate sub-module UUID

``` julia
using Pkg
Pkg.add("UUIDs")
import UUIDs
UUIDs.uuid1()
```

5. Write UUID und modul name to Project.toml:

```
name = "MyMod2"
uuid = "9c3d90b0-1c70-11ed-34cc-aba10b97463f"
```

6. Start julia and execute the following commands in package mode (]=package mode):

``` julia

activate .
instatiate
```

6. Close julia

