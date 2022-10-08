count = 1
tiedosto = File.open("5-4_tiedosto.txt","r")
lista = Array.new
tiedosto.each {|rivi| lista.push(rivi)}
for rivi in lista do
    rivi.chomp!
	if rivi == "hanhi"
        puts "Hanhi rivillä " + count.to_s + "!"

    end
    
    
    count += 1
    
    
end
tiedosto.close