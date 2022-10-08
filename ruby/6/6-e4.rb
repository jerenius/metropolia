#Kirjoita testattava lause: saippua
#saippua ei ole palindromi; se on väärinpäin auppias.
#Testataanko lisää? (k/e): k
#Kirjoita testattava lause: saippuakauppias
#saippuakauppias on palindromi.
#Testataanko lisää? (k/e): e
#jatka = true
#Atte kumiorava varo imuketta

while true
    print "Kirjoita testattava lause: "
    origlause = gets.chomp!
    origdromi = origlause.reverse
    lause = origlause.downcase
    lause = lause.gsub(" ","")
    palindromi = lause.reverse

    if lause.length < 5
        puts lause + " ei ole kelvollinen sana."
    elsif lause == palindromi
            puts origlause + " on palindromi."    
    else
        puts origlause + " ei ole palindromi; se on väärinpäin " + origdromi + "."
    end
print "Testataanko lisää? (k/e): "
vastaus = gets.chomp!
break if vastaus == "e"
end