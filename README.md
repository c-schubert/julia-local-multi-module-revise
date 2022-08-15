# Examplary Module and Sub-Module Repository to show how Multi-Module Development can be done Locally

**Disclaimer**
> This is not a finished general instruction, more a mnemonic which I have made for my own work.

Overview how to work with multiple local sub-module dependencies and Revise.jl.

Requirements:
    - Revise.jl (installed as general julia package  or toplevel module/function space)


**Warning WSL2 / NFS with Revise**

> The following environmentvariable has to be set for revise to work properly (i.e. add to .bashrc):
```shell
export JULIA_REVISE_POLL=1
```
see: https://timholy.github.io/Revise.jl/stable/config/#Configuration-1

## First: Generate Valid (Copy) Submodules

*See Readme.md files of examplary submodules.*

## Option1: Using Sub-Modules for src functions (no MainModule)

*See "MultiMod/src/main_func_only.jl"*

-> For Example: Changes within the MyMod1.jl (location: MultiMod/src/MyMod1/src/MyMod1.jl) test()'s function should be visible when rerun main_func_only.jl


## Option2: Using Sub-Modules in Main-Module

MainModule (here "MultiMod") musst be generated properly, accordinly how see Readme of the MultiMod Main-Module

*See "MultiMod/src/MainMod.jl" and "MultiMod/main.jl"*

-> For Example: Changes within the MyMod1.jl (location: MultiMod/src/MyMod1/src/MyMod1.jl) test()'s function should be visible when rerun main.jl

## TODOs
- Updates example to include more changes from sub modules
- Make descriptions more clearly