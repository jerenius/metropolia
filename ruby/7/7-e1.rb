print "Monenteenko lukuun asti etsitään?: "
luku = gets.to_i

for x in 2..luku-1 do
    z = []
    print x.to_s
    for y in 2..x-1 do
        z = z.push(x % y)
        
        #print  + " "
    end
    if z.include? 0
        puts " ei ole alkuluku."
    else
        puts " on alkuluku!"
    end
end
