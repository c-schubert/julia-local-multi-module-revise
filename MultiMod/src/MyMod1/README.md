
# Setup Sub Modul: MyMod1

## Generate Sub-Module via Pkg.generate

Go to src folder of the main module and open julia execute the follwing command in package mode (]=package mode):

```julia
generate MyMod1
```

## Maunal Sub-Module Generation:

1. Set up folder/directory structure

```
mkdir src/MyMod1
mkdir src/MyMod1/src
```
2. Generate file: Project.toml

```
touch src/MyMod1/Project.toml
```

3. Write MyMod1.jl to src/MyMod1/src

4. Generate sub-module UUID

``` julia
using Pkg
Pkg.add("UUIDs")
import UUIDs
UUIDs.uuid1()
```

5. Write UUID und modul name to Project.toml:

```
name = "MyMod1"
uuid = "870e91a8-1c70-11ed-230a-c54b7497b5ed"
```

6. Start julia and execute the following commands in package mode (]=package mode):

``` julia

activate .
instatiate
```

6. Close julia

