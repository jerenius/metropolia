#require "7-5"

def siisti(input)
    return input
end









tiedosto = File.open("7-5_tiedosto.txt")
rivit = ""

tiedosto.each{|rivi| rivit << rivi}
tiedosto.close

tulos = siisti(rivit)
puts tulos