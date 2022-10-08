print "Montako kierrosta lasketaan?: "
count = gets.to_i


n1 = 0
n2 = 1
kierros = 1


until kierros > count
    tulos = n1 + n2
    n1 = n2
    n2 = tulos
    puts "Seuraava Fibonaccin luku on " + tulos.to_s + "."
    kierros += 1
end
