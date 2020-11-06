module SampleJuliaPackage

greet() = print("Hello World!")

export test0, test0i, test1, test1i


function test0(a, b)
  return a[1] + b[1]
end

@inline function test0i(a, b)
  return a[1] + b[1]
end

function test1(a, b)
  @boundscheck (@assert a==b)
  return a[1] + b[1]
end

@inline function test1i(a ::Vector{S}, b ::Vector{T}) where {S, T}
  @boundscheck (@assert a==b)
  return a[1] + b[1]
end

@inline function test2i(a ::Vector{Int}, b ::Vector{Int})
  @boundscheck (@assert a==b)
  return a[1] + b[1]
end


end # module
