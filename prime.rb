require 'benchmark'
require 'bigdecimal/math'
require 'pry'

#example = rand(-1000000..1000000)

def prime?(int)
    if int <= 1
        false
    elsif int == 2 
        true
    else
        numbers = (2..(int-1)).to_a
        numbers.none? do |i|
            int % i == 0 
        end
    end
end


# i'm thinking this could be faster by trying a different iterator -- .find ?

=begin
def prime_2?(int)
    if int <= 1
        false
    elsif int == 2 
        true
    else
        numbers = (2..(int-1)).to_a
        numbers.find do |i|
            return false if int % i == 0 
        end
        true
    end
end



Benchmark.bm(10) do |x|
    x.report("None in range: ") { prime? example }
    x.report("Find in range ") { prime_2? example }
end

# they ended up being both very similar
=end 