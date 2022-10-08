jatka = true
lista = Array.new
tiedosto = File.open("5-2_tiedosto.txt","w+")
while jatka
    puts "Kirjoita jotain (lopeta lopettaa):"
    input = gets.chomp!
    break if input == "lopeta"
    tiedosto.puts(input)
end
tiedosto.rewind
puts "Tiedostoon kirjoitettiin:"
tiedosto.each {|rivi| print rivi}
tiedosto.close