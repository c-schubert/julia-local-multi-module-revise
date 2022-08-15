module MyMod2

export add


struct ExampleStruct
    A::String
    B::Int
    C::Float64
end


function add(A::ExampleStruct, B::ExampleStruct)
    Aadd = A.A * B.A
    Badd = A.B + B.B
    Cadd = A.C + B.C


    return ExampleStruct(Add, Badd, Cadd)
end

end