require_relative 'roman_number'

r = Roman.new(1)
fail "'i' expected" unless r.to_s == "i"

r = Roman.new(9)
fail "'ix' expected" unless r.to_s == "ix"

# Exception
r = Roman.new(-1)
puts r.to_s
