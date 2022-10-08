def pyydaluku()
    begin 
        print "Anna luku: "
        input = gets.to_f
    rescue
        puts "Virheellinen syöte."
        retry
    else
        return input
    end
end


luku = pyydaluku()
puts luku