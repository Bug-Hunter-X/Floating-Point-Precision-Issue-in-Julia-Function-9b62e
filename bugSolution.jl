```julia
function myfunction(x)
  if x > 0
    return round(x^2; digits=10) # Round to 10 digits for better precision
  elseif x < 0
    return round(-x; digits=10) # Round to 10 digits for better precision
  else
    return 0
  end
end

println(myfunction(2.0)) # Output: 4.0
println(myfunction(-2.0)) # Output: 2.0
println(myfunction(0.0)) # Output: 0.0

# Example showing the improvement in precision
x = 0.1 + 0.2 - 0.3
println(x)  # Output: 5.551115123125783e-17 (Original issue)
println(round(x; digits=10)) # Output: 0.0 (Solution)
```