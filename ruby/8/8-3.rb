def jakaanollalla
tulos = 10 / 0
end
begin
jakaanollalla
rescue ZeroDivisionError
    puts "Virhe napattu!"
end