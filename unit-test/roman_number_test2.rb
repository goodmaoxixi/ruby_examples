# Dave Thomas -- Programming-Ruby-1.9&2.0

require_relative 'roman_number'
require 'minitest/autorun'

# These two lines cannot work!
#require 'test/unit'
#class TestRoman < Test::Unit::TestCase

class TestRoman < MiniTest::Unit::TestCase
	NUMBERS = { 1 => "i", 2 => "ii", 3 => "iii", 4 => "iv", 5 => "v", 9 => "ix" }
	
	def test_simple
		NUMBERS.each do |arabic, roman|
			r = Roman.new(arabic)
			assert_equal(roman, r.to_s)
		end
	end
	
	def test_range
		# no exception for these two...
		Roman.new(1)
		Roman.new(4999)
		
		# but an exception for these
		assert_raises(RuntimeError) { Roman.new(0) }
		assert_raises(RuntimeError) { Roman.new(5000) }
	end
end
