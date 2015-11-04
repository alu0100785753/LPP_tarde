class Referencia
    
    attr_accessor :autores, :titulo, :serie
    
    def initialize
        "iniciado"
    end
    
    def set_autores (*aut)
        @autores=aut
    end
    def set_titulo(tit)
       @titulo=tit 
    end
    
    def set_serie(ser)
       @serie=ser 
    end
    
    def get_autores
        @autores
    end
    
    def get_titulo
       @titulo 
    end



end