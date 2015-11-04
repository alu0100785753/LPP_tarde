class Referencia
    
    attr_accessor :autores, :titulo
    
    def initialize
        "iniciado"
    end
    
    def set_autores (*aut)
        @autores=aut
    end
    def set_titulo(tit)
       @titulo=tit 
    end
    
    def get_autores
        @autores
    end



end