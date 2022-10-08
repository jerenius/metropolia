def tulostaja(teksti = "Oletusarvo",luku = 5)
    while luku > 0
        print teksti + " "
        luku = luku - 1
    end
    puts ""
end


tulostaja("Metodeilla voimaa!", 2)
tulostaja("Toimii!")
tulostaja