def muuntaja(input)
    
    input = input.gsub("a","y")
    input = input.gsub("l","g")
    input.upcase!
    puts "Käsittelyn jälkeen tulos on: " + input
end

puts "Kirjoita jotain: "
syote = gets.chomp!
muuntaja(syote)