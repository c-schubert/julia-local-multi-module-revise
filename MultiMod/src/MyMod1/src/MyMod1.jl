module MyMod1

export printMyStruct
export test

struct MyStruct
    Foo::Float64
    Bar::String
end

function printMyStruct(s::MyStruct)
    prtinln("MyStruct.Foo: ", s.Foo)
    println("MyStruct.Bar: ", s.Bar)
end

function test()
    println("Test!")
end

end
