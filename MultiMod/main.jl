if ~@isdefined load_submodules
    using Pkg

    Pkg.develop(path="../MultiMod")
    Pkg.develop(path="src/MyMod1")
    Pkg.develop(path="src/MyMod2")

    using Revise

    using MultiMod

    Revise.track(MultiMod)

    load_submodules = true
end


test()



