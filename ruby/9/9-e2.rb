class Laatikko
    def initialize
        @sisus = ""
    end
    attr_accessor :sisus
end

Varasto = Laatikko.new()
Varasto.sisus = "puuhapakki"
puts "Varastossa on sisällä #{Varasto.sisus}."
