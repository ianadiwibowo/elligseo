# Hello World

IO.puts("Hello world from Elixir")

# Basic

12 / 10
# => 1.2 -- Float division
div(12, 10)
# => 1 -- Integer division
round(2.5)
# => 3
is_boolean(false)
# => true
is_boolean(5)
# => false
is_integer(5)
# => true
is_float(5.5)
# => true
is_number(0x1A)
# => true
is_number(7.0e-10)
# => true
trunc(5.78)
# => 5 -- Get the integer part of a float

# Ruby-like symbol (atom)
:cat == :cat
# => true
is_atom(:bird)
# => true

# String interpolation

name = "Lupita"
IO.puts "Hello #{name}"
# => "Hello Lupita"
