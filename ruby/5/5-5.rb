tiedosto = File.open("teksti.txt","r")
lista = Array.new
tiedosto.each {|rivi| lista.push(rivi)}
puts "Luettiin #{lista.length} riviä."
puts "Ensimmäinen rivi:" +lista[0]
tiedosto.close