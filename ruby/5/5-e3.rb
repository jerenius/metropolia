lista = Array.new
counta=0
countf=0
count=0

tiedosto = File.open("5-3_tiedosto.txt","r")
tiedosto.each {|rivi| lista.push(rivi) }


for rivi in lista do
	rivi.chomp!
    counta += rivi.count("a")
    countf += rivi.count("f")
    count += rivi.length
    
end

puts count.to_s + " merkkiä: " + counta.to_s + " a:ta, " + countf.to_s + " f:ää."

tiedosto.close