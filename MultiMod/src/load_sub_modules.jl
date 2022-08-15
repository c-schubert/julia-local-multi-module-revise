if ~@isdefined load_submodules
    using Pkg

    Pkg.develop(path="src/MyMod1")
    Pkg.develop(path="src/MyMod2")

    using Revise

    using MyMod1
    using MyMod2

    Revise.track(MyMod1)
    Revise.track(MyMod2)

    load_submodules = true
end