tiedosto = File.open("5-1_tiedosto.txt","r")
lista = Array.new
tiedosto.each {|rivi| print rivi}


tiedosto.close