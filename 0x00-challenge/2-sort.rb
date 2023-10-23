###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    i = 0
	big = 0
    l = result.size
    while i < l do
        if result[i] > i_arg
            big += 1
        end
        i += 1
    end
	result.insert(big , i_arg)
    
end

puts result