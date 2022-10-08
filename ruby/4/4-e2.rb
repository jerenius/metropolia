jatka = true
while jatka
    print "Anna autolla ajetut kilometrit: "
    km = gets.to_f
    print "Anna bensanhinta: "
    hinta = gets.to_f
    print "Onko matka (1) maantieajoa vai (2) kaupunkiajoa?: "
    tyyppi = gets.to_i
    if tyyppi == 1
        kulutus = 5
    else
        kulutus = 9
    end
    loppusumma = (hinta * kulutus * km) / 100.0
    loppusumma = loppusumma.to_s
        puts "Matka maksoi "+ loppusumma +" euroa"
    print "Lasketaanko toinen matka? (k/e)?: "
    vastaus = gets
    if vastaus.chop! == "e"
        jatka = false
    end
end