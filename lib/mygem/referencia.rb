class Referencia
    
    attr_accessor :autores, :titulo, :serie, :editorial,:edicion
    
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
    
    def set_editorial(edit)
        @editorial=edit
    end
    
    def set_edicion(nuedi)
        @edicion=nuedi
    end
    
    def get_autores
        @autores
    end
    
    def get_titulo
       @titulo 
    end
    
    def get_serie
        @serie
    end
    
    def get_editorial
        @editorial
    end



end