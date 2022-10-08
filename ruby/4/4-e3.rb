
jatka = true

puts "Anna aloituspaikka:"
luku = gets.to_i

while jatka
    tulos3 = luku % 3
    tulos5 = luku % 5
    tulos7 = luku % 7
    tulos = tulos3 + tulos5 + tulos7
    if tulos == 0
        jatka = false
        puts "Sopiva luku löytyi: " + luku.to_s
    else
        puts luku.to_s + " ei kelpaa..."
    end
    
    luku += 1
    
end