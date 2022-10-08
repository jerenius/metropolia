def luetiedosto
input = File.open("7-3_tiedosto.txt","r")
sisalto = Array.new
sisalto = input.readline
input.close
return sisalto
end

def haemerkki(lmerkit,merkki)
    output = lmerkit[merkki]
    return output
end


merkit = luetiedosto


puts "Luodaan salasana."
print "Anna 1. luku väliltä 0-999: "
m1 = haemerkki(merkit,gets.to_i)
print "Anna 2. luku väliltä 0-999: "
m2 = haemerkki(merkit,gets.to_i)
print "Anna 3. luku väliltä 0-999: "
m3 = haemerkki(merkit,gets.to_i)
print "Anna 4. luku väliltä 0-999: "
m4 = haemerkki(merkit,gets.to_i)
print "Anna 5. luku väliltä 0-999: "
m5 = haemerkki(merkit,gets.to_i)
print "Anna 6. luku väliltä 0-999: "
m6 = haemerkki(merkit,gets.to_i)
print "Anna 7. luku väliltä 0-999: "
m7 = haemerkki(merkit,gets.to_i)
print "Anna 8. luku väliltä 0-999: "
m8 = haemerkki(merkit,gets.to_i)
print "Anna 9. luku väliltä 0-999: "
m9 = haemerkki(merkit,gets.to_i)

puts "Ohjelma loi salasanan " + m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s + m8.to_s + m9.to_s
