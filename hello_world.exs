## Hello World

IO.puts("Hello world from Elixir")

## Basic

12 / 10
# => 1.2 -- Float division
div(12, 10)
# => 1 -- Integer division
rem(12, 10)
# => 2 -- Remainder, e.g. mod
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
i("hello")
i('hello')
i(5)
# -- Identifying variable types

## Ruby-like symbol (atom)
:cat == :cat
# => true
is_atom(:bird)
# => true

## String and string interpolation

name = "Lupita"
IO.puts("Hello #{name}")
# => "Hello Lupita"

cat = "Lupita" <> "neko"
# => "Lupitaneko" -- String concatenation

byte_size("Pupuru")
# => 6
is_binary(5)
# => false
is_binary("Pupuru")
# => true
String.length("Pupuruneko")
# => 10
String.upcase("rijong")
# "RIJONG"

## Anonymous function

add = fn a, b -> a + b end
add.(2, 3)
# => 5
is_function(add)
# => true

## Even more anonymous function

(fn a, b -> a * b end).(5, 6)
# => 30

## List
# Basically a linked list, slow for non-linear operation

[1, 2, true, 3]
length([1, 2, true, 3])
# => 4

[1, 2, 3] ++ [4, 5, 6]
# => [1, 2, 3, 4, 5, 6] -- Concat two lists

[1, 2, 3, 4] -- [2, 3]
# => [1,4] -- List subtraction

list = [1, 2, 3, 4]
hd(list)
# 1 -- Head
tl(list)
# [2, 3, 4] -- Tail, e.g. the rest after head

## Tuple
# Like list but store elements contiguosly in memory, fast read

t = {:lupita, :rijong, :kupita}
elem(t, 1)
# => :lupita
tuple_size(t)
# => 3
put_elem(t, 1, :bupita)
# => {:lupita, :bupita, :kupita} -- Overwrite element at index 1

## Pattern matching

{a, b, c} = {:pupuru, "neko", 88}
# a => :pupuru -- Can be used for mass assignment, with tuples matching
# b => "neko"
# c => 88

{:ok, result} = {:ok, 200}
# result => 200 -- Only match if the right tuple starts with :ok
{:ok, result} = {:error, 401}
# => ** (MatchError) no match of right hand side value: {:error, 401}

## Pin operator
# Use when we want to pattern match against a variable's existing value
# rather than rebinding (reassigning) the variable

[^x, 2, 3] = [1, 2, 3]
# => [1, 2, 3]
{y, ^x} = {2, 1}
# => {2, 1}
{y, ^x} = {2, 2}
# => ** (MatchError) no match of right hand side value: {2, 2}
{y, 1} = {2, 2}
# => ** (MatchError) no match of right hand side value: {2, 2}
# Similar like this, because x was already bound to value 1
[a, _] = [5, 6]
# -- Ommit the second variable, disposable
