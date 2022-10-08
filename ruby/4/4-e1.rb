puts "Anna luku:"
luku = gets.to_i
for count in 1..10 do
    tulos = luku**count
    count = count.to_s
    tulos = tulos.to_s
    puts count + ". potenssi on " + tulos 
end