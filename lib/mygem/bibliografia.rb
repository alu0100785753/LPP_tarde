
class Bibliografia < List_d
   
   #attr_accessor :ref  
    
    
    def comprobar(elemento)
        res=[]
        for y in elemento do
       
           y.class.ancestors.each do |x| 

              if x==Referencia
                res.push(y)
                break
              end

           end
        end
        
        res
    end
    
    def push_fin(*elemento)
        
        vec=comprobar(elemento)
        #puts "res",vec
        vec.each{|x| super(x)}

    end
    
    def push_ini(*elemento)
        
        vec=comprobar(elemento)
        vec.each{|x| super(x)}
        
    end
    
    def to_apa
        aux=@ini
        while aux!=nil do
            aux.value.to_apa
            aux=aux.next
        end
        ord=self.sort
        #puts ord
        while @fin!=nil do
            self.pop_fin()
        end
        #puts ord
        ord.each{|x| push_fin(x)}

    end

    def each
       aux=@ini
        while aux !=nil 
          yield aux.value
          aux=aux.next
        end
    end



end
=begin
clase= Bibliografia.new
#clase.push_fin(Libro.new,4, Referencia.new)
#clase.push_ini(Referencia.new,5,6,Publicaciones_periodicas.new)
#clase.push_ini(Referencia.new)
@ref1=Referencia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide.","(The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",
        ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])

@ref2=Referencia.new(["Scott Chacon"],"Pro Git 2009th Edition.","(Pro).","Apress","2009 edition","(August 27, 2009)",
        ["ISBN-13: 9781430218333","ISBN-10: 1430218339"])
        
@ref3=Referencia.new(["Scott Chacon"],"Pro Git 2009th Edition.","(Pro).","Apress","2009 edition","(August 27, 2008)",
        ["ISBN-13: 9781430218333","ISBN-10: 1430218339"])
@ref4=Referencia.new(["Scott Chacon"],"Protocolo Git 2009th Edition.","(Pro).","Apress","2009 edition","(August 27, 2009)",
        ["ISBN-13: 9781430218333","ISBN-10: 1430218339"])
        
clase.push_fin(@ref1,@ref2,@ref3,@ref4)

clase.to_apa
puts "clase", clase

=end