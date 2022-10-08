while true
    begin 
        puts "Anna luettavan tiedoston nimi:"
        filename = gets.chomp!
        tiedosto = File.new(filename,"r")
        tiedosto.each{ |rivi| print rivi}
        tiedosto.close  
    rescue 
       puts "Tiedoston nimi ei kelpaa."
    else
        break
    end
end