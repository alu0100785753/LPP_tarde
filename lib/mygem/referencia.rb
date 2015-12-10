class Referencia
    include Comparable
    attr_accessor :autores, :titulo, :serie, :editorial,:edicion,:publicacion,:isbn,:out_format
    
    def initialize(*args)
        
        if args.length==7
        @autores=args[0]
        @titulo=args[1]
        @serie=args[2]
        @editorial=args[3]
        @edicion=args[4]
        @publicacion=args[5]
        @isbn=args[6]
        end
        
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
    
    def set_publicacion(publi)
        @publicacion=publi
    end
    
    def set_isbn(*nums)
        @isbn=nums
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

    def get_edicion
        @edicion
    end
    
    def get_publicacion
        @publicacion
    end
    
    def get_isbn
        @isbn
    end
    
    def out_format
        puts "out of format"
        @out_format=""
        for x in @autores do
           
            @out_format+="#{x},"
        end
        @out_format[-1]="\n"
        @out_format+=@titulo+"\n"+@serie+"\n"+@editorial+"; "+@edicion+", "+@publicacion+"\n"
        for x in @isbn do
           
            @out_format+="#{x}\n"
        end
        @out_format[-1]=""
        
       @out_format
       
       
    end
    
    def to_s
        @out_format=""
        for x in @autores do
           
            @out_format+="Autor: #{x},"
        end
        @out_format[-1]="."
        @out_format+="(#{@publicacion[-5...-1]}). Título: #{@titulo.capitalize} (#{@edicion}) (#{@serie}). Lugar de publicacion: #{@editorial}\n"
        
        @out_format
       
       
    end
    
    
    
    
    def <=>(other)
        
        if @autores==other.autores
        
            if @publicacion[-5...-1]==other.publicacion[-5...-1]
                
                @titulo<=>other.titulo
                
            else
                @publicacion[-5...-1]<=>other.publicacion[-5...-1]
            end
        else
            @autores <=> other.autores
        end
    end
    
    
    def to_apa
        
        
        #Poner nombre en lugar de apellidos
        
        vector=[]
        
        for y in @autores do
            nombre=""
            apellido=""
            n=true
            
            for i in 0..y.size-1 do
            
                if y[i]!=" " && n==true
                    nombre+=y[i]
                elsif y[i]==" "
                    n=false
                else
                    apellido+=y[i]
                    
                end
                i+=1
            end
            vector.push(apellido+" "+nombre)
        end
        @autores=vector
    

    
    end

    
end