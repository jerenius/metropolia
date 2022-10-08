jatka = true
tuotteet = []

while jatka
    puts "Ostoslistalla on seuraavaa;"
    for tuote in tuotteet do
        print tuote + " "
    end
    puts "\n"
 
    puts "(1) Lisää tuote (2) Poista listan viimeinen tuote (3) Lopeta:"
    operaatio = gets.to_i
    case operaatio
        when 1
            puts "Mitä lisätään?: "
            tuote = gets.chomp!
            tuotteet.push(tuote)
        when 2
            tuote = tuotteet[0]
            tuotteet.shift()
            puts "Poistetaan " + tuote.to_s
        when 3
            korinkoko = tuotteet.length
            puts "Koriin jäi " + korinkoko.to_s + " tuotetta:"
            if korinkoko == 1
                output=tuotteet[0]
                print output
            elsif korinkoko > 1
                    for tuote in tuotteet do
                      output = output +  tuote + " "
                      print output
                    end
                    output.chop!
                end
            
            break
    end #case






end #while