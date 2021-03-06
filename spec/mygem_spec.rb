require 'spec_helper'
require 'mygem'


describe Bibliografia do
    
    before :all do
        
        @clase= Bibliografia.new

        @ref1=Referencia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide.","The Facets of Ruby.","Pragmatic Bookshelf","4 edition","(July 7, 2013)",
                ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
        
        @ref2=Referencia.new(["Scott Chacon"],"pro Git 2009th Edition.","Pro.","Apress","2009 edition","(August 27, 2009)",
                ["ISBN-13: 9781430218333","ISBN-10: 1430218339"])
                
        @ref3=Referencia.new(["Scott Chacon"],"pro Git 2009th Edition.","Pro.","Apress","2008 edition","(August 27, 2008)",
                ["ISBN-13: 9781430218333","ISBN-10: 1430218339"])
        @ref4=Referencia.new(["Scott Chacon"],"profesional Git 2009th Edition.","Pro.","Apress","2009 edition","(August 27, 2009)",
                ["ISBN-13: 9781430218333","ISBN-10: 1430218339"])
                
        @clase.push_fin(@ref1,@ref2,@ref3,@ref4)

        @clase.to_apa
        puts "clase", @clase
        
    end
    
    it "Se pone primero el apellido y luego el nombre" do
        
        expect(@clase.ini.value.autores[0]).to eq("Chacon Scott")
        
    end
    
    it "Se ordenan las referencias por orden albabético de los apellidos de los autores" do
       
       expect(@ref1>=@ref2).to eq(true) 
        
    end
    
    it "Cuando los autores son los mismos se ordenan por año de publicación" do
       expect(@ref2>=@ref3).to eq(true)
    end
    
    it "Cuando los años de publicación son los mismos se ordenan por título" do
       expect(@ref4>=@ref2).to eq(true)
    end



end

=begin
describe Referencia do
    
   before :all do
       
        @ref1=Referencia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide.","(The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",
        ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
        
        @ref2=Referencia.new(["Scott Chacon"],"Pro Git 2009th Edition.","(Pro).","Apress","2009 edition","(August 27, 2009)",
        ["ISBN-13: 9781430218333","ISBN-10: 1430218339"])
        
        @ref3=Referencia.new(["David Flanagan", "Yukihiro Matsumoto"],"The Ruby Programming Language.","","O’Reilly Media","1 edition","(February 4, 2008)",
        ["ISBN-10: 0596516177","ISBN-13: 978-0596516178"])
        
        @ref4=Referencia.new(["David Chelimsky", "Dave Astels", "Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","(The Facets of Ruby)","Pragmatic Bookshelf","1 edition","(December 25, 2010)",
        ["ISBN-10: 1934356379","ISBN-13: 978-1934356371"])
        
        @ref5=Referencia.new(["Richard E"],"Silverman Git Pocket Guide",".","O’Reilly Media","1 edition","(August 2, 2013)",
        ["ISBN-10: 1449325866","ISBN-13: 978-1449325862"])
       
   end
   
   
   it "La referencia 1 es menor que la referencia 2" do
      expect(@ref1 < @ref2).to eq(true)
    end
    it "La referencia 1 es menor o igual que la referencia 2" do
      expect(@ref1 <= @ref2).to eq(true)
    end
    it "La referencia 2 es mayor que la referencia 1" do
      expect(@ref2 > @ref1).to eq(true)
    end
    it "La referencia 2 es mayor o igual que la referencia 1" do
      expect(@ref2 >= @ref1).to eq(true)
    end

    it "La referencia 1 es igual que la referencia 1" do
      expect(@ref1 == @ref1).to eq(true)
    end

    it "La referencia 1 es distinta que la referencia 2" do
      expect(@ref1 == @ref2).to eq(false)
    end

end


describe List_d do
    
    before :all do
       
        @ref1=Referencia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide.","(The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",
        ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
        
        @ref2=Referencia.new(["Scott Chacon"],"Pro Git 2009th Edition.","(Pro).","Apress","2009 edition","(August 27, 2009)",
        ["ISBN-13: 9781430218333","ISBN-10: 1430218339"])
        
        @ref3=Referencia.new(["David Flanagan", "Yukihiro Matsumoto"],"The Ruby Programming Language.","","O’Reilly Media","1 edition","(February 4, 2008)",
        ["ISBN-10: 0596516177","ISBN-13: 978-0596516178"])
        
        @ref4=Referencia.new(["David Chelimsky", "Dave Astels", "Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","(The Facets of Ruby)","Pragmatic Bookshelf","1 edition","(December 25, 2010)",
        ["ISBN-10: 1934356379","ISBN-13: 978-1934356371"])
        
        @ref5=Referencia.new(["Richard E"],"Silverman Git Pocket Guide",".","O’Reilly Media","1 edition","(August 2, 2013)",
        ["ISBN-10: 1449325866","ISBN-13: 978-1449325862"])
        
        @lista=List_d.new
        @lista.push_fin(@ref1,@ref2,@ref3,@ref4,@ref5)
        @lista2=List_d.new
        @lista2.push_fin(nil)
        
    end

    it "comprobrando el metodo all? con un bloque vacio" do
      expect(@lista.all?).to eq(true)
      expect(@lista2.all?).to eq(false)
    end 
    it "comprobrando el metodo any?" do
      expect(@lista.any?).to eq(true)
      expect(@lista2.any?).to eq(false)
    end 
    it "comprobrando el metodo count" do
      expect(@lista.count).to eq(5)
    end
    it "comprobrando drop" do
      expect(@lista.drop(3)).to eq([@ref4,@ref5])
    end
    it "comprobrando max" do
      expect(@lista.max).to eq(@ref2)
    end
    it "comprobrando min" do
      expect(@lista.min).to eq(@ref1)
    end
    it "comprobrando sort" do
      expect(@lista.sort).to eq([@ref1,@ref4,@ref3,@ref5,@ref2])
    end
    
end

=end
=begin
def show (a_class)

    if (a_class != nil) then

        puts "#{a_class}:: es hija de = #{a_class.superclass}"

        show(a_class.superclass)
    end
end

show(Referencia)
=end

=begin
describe Node_d do
    it "Se crea un nodo con su valor, su previo y su siquiente" do
        nodo_doble=Node_d.new(1,2,3)
        expect(nodo_doble.prev).to eq(1)
        expect(nodo_doble.value).to eq(2)
        expect(nodo_doble.next).to eq(3)
    end
end

describe List_d do
  it "existe una lista que contenga el primer y el último elemento" do
    lista_doble=List_d.new
    lista_doble.ini=1
    lista_doble.fin=2
    expect(lista_doble.ini).to eq(1)
    expect(lista_doble.fin).to eq(2)
  end
  
  it "Existe una función que nos devuelve si la lista está vacia" do
      
      lista_doble=List_d.new
      expect(lista_doble.lista_vacia).to be true 
      
  end
  
  it "debe existir un método para insertar uno o más elementos al final de la lista" do
      lista_doble=List_d.new
      lista_doble.push_fin(1)
      lista_doble.push_fin(2,3)
      lista_doble.push_fin(4,5,6)
      expect(lista_doble.to_s).to eq("1->2->3->4->5->6")
  end
  
  it "debe existir un método para insertar uno o más elementos al principio de la lista" do
      lista_doble=List_d.new
      lista_doble.push_ini(6)
      lista_doble.push_ini(4,5)
      lista_doble.push_ini(1,2,3)
      expect(lista_doble.to_s).to eq("1->2->3->4->5->6")
  end
  
  it "debe existir un método para extraer un elemento al principio de la lista" do
      lista_doble=List_d.new
      lista_doble.push_fin(1,2,3)
      lista_doble.pop_ini
      expect(lista_doble.to_s).to eq("2->3")
  end
  
  it "debe existir un método para extraer un elemento al principio de la lista" do
      lista_doble=List_d.new
      lista_doble.push_fin(1,2,3)
      lista_doble.pop_fin
      expect(lista_doble.to_s).to eq("1->2")
  end
end

describe Libro do
    
   
   it "La clase libro hereda de la clase Referencia" do
       
       expect(Libro.superclass).to eq(Referencia)
   end
   
   it "instancia de Libro" do
       
       expect(Libro.new.instance_of?Libro).to eq(true)
       expect(Libro.new.is_a?(Referencia)).to eq(true)
   
   end
   
end

describe Publicaciones_periodicas do
    
   
   it "La clase Publicaciones_periodicas hereda de la clase Referencia" do
       
       expect(Publicaciones_periodicas.superclass).to eq(Referencia)
   end
    
end

def show (a_class)

if (a_class != nil) then

puts "#{a_class}:: es hija de = #{a_class.superclass}"

show(a_class.superclass)
end
end

show(Referencia)

=end
=begin
describe Node do
    it "Se crea un nodo con su valor y su siquiente" do
        nodo=Node.new(1,2)
        nodo.value.should eq(1)
        nodo.next.should eq(2)
    end
end

describe List do
    
    before :all do
        @lista=List.new
        
        @ref1=Referencia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide.","(The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",
        ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
        
        @ref2=Referencia.new(["Scott Chacon"],"Pro Git 2009th Edition.","(Pro).","Apress","2009 edition","(August 27, 2009)",
        ["ISBN-13: 9781430218333","ISBN-10: 1430218339"])
        
        @ref3=Referencia.new(["David Flanagan", "Yukihiro Matsumoto"],"The Ruby Programming Language.","","O’Reilly Media","1 edition","(February 4, 2008)",
        ["ISBN-10: 0596516177","ISBN-13: 978-0596516178"])
        
        @ref4=Referencia.new(["David Chelimsky", "Dave Astels", "Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","(The Facets of Ruby)","Pragmatic Bookshelf","1 edition","(December 25, 2010)",
        ["ISBN-10: 1934356379","ISBN-13: 978-1934356371"])
        
        @ref5=Referencia.new(["Richard E"],"Silverman Git Pocket Guide",".","O’Reilly Media","1 edition","(August 2, 2013)",
        ["ISBN-10: 1449325866","ISBN-13: 978-1449325862"])
        
        @lista.push_var(@ref1,@ref2,@ref3,@ref4,@ref5)

        
    end
    
    it "Se pueden insertar elementos en la lista" do
       lista=List.new
       lista.push(5)
       lista.ini.value.should_not eql(nil) 
    end
    it "Se pueden insertar elementos en la lista" do
       lista=List.new
       lista.push(6)
       lista.push(7)
       lista.pop.should eq(6)
       lista.pop.should eq(7)
    end
    it "Existe un metodo que devuelve la cabeza de la lista" do
       lista=List.new
       lista.push(6)
       lista.push(7)
       lista.head.should eq(6) 
       lista.head.should eq(6)
    end
    
    it "Existe un metodo que permite introducir varios elementos" do
       lista=List.new
       lista.push_var(6,7,8)
       lista.pop.should eq(6) 
       lista.pop.should eq(7)
       lista.pop.should eq(8)
    end
    it "Extrayendo referencias" do
        @lista.pop.out_format.should eq("Dave Thomas,Andy Hunt,Chad Fowler\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide.\n(The Facets of Ruby).\nPragmatic Bookshelf; 4 edition, (July 7, 2013)\nISBN-13: 978-1937785499\nISBN-10: 1937785491")
        
        @lista.pop.out_format.should eq("Scott Chacon\nPro Git 2009th Edition.\n(Pro).\nApress; 2009 edition, (August 27, 2009)\nISBN-13: 9781430218333\nISBN-10: 1430218339")

    end
end
=end

=begin
describe Referencia do
    
    before :all do
       
       @ref=Referencia.new
       @ref.set_autores("pepe","juan")
       @ref.set_titulo("Programacion orientada a objetos")
       @ref.set_serie("Empezando desde cero")
       @ref.set_editorial("Santillana")
       @ref.set_edicion("Edicion 9")
       @ref.set_publicacion("28 de enero de 1994")
       @ref.set_isbn("ISBN-13: 978-1937785499", "ISBN-10: 1937785491")
        
    end
    
    it "La clase tiene uno o más autores" do
        @ref.autores.size.should be >= 1
    end

    
    it "Existe un metodo que nos devuelve el listado de autores" do
        @ref.get_autores.should eq(["pepe","juan"])
    end
    it "Debe existir un título" do
        @ref.titulo.size.should be>0
    end
    it "Existe un metodo que devuelve el título" do
       @ref.get_titulo.should eq("Programacion orientada a objetos") 
    end
    it "Puede existir o no una serie" do
        @ref.serie.size.should be>=0
    end
    it "Existe un método que devuelva la serie" do
       @ref.get_serie.should eq("Empezando desde cero") 
    end
    it "Debe existir una editorial" do
       @ref.editorial.size.should be>0
    end
    it "Existe un metodo que devuelve la editorial" do
        @ref.get_editorial.should eq("Santillana")
    end
    it "Debe existir un numero de edicion" do
       @ref.edicion.size.should be>0 
    end
    it "Debe existir un metodo que devuelva el numero de edicion" do
        @ref.get_edicion.should eq("Edicion 9")
    end
    
    it "Debe existir una fecha de publicacion" do
       @ref.publicacion.size.should be>0 
    end
    
    it "Debe existir un metodo que devuelva la fecha de publicacion" do
        @ref.get_publicacion.should eq("28 de enero de 1994")
    end
    
    it "Debe existir un numero de isbn" do
       @ref.isbn.size.should be>0 
    end
    
    it "Debe existir un metodo que devuelva el listado de numeros isbn" do
        @ref.get_isbn.should eq(["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    end
    
    it "Existe un metodo que devuelve la salida formateada" do
       @ref.out_format.should eq("pepe,juan\nProgramacion orientada a objetos\nEmpezando desde cero\nSantillana; Edicion 9, 28 de enero de 1994\nISBN-13: 978-1937785499\nISBN-10: 1937785491")
    end
end
=end



=begin
describe Mygem do
   it 'requires additional testing'
end
=end
=begin
describe Fractnum do
    before :each do
        
        @frac1= Fractnum.new(1,2)
        @frac2= Fractnum.new(2,3)
        
    end 
    
    it "Existe un numerador" do
        @frac1.num.should eq(1)
    end
    
    it "Existe un denominador" do
        @frac1.den.should eq(2)
    end
    
    it "Implementado el minimo comun multiplo" do
        @fract3=Fractnum.new(2,2)
        @fract3.mcm(2,3).should eq(6)
    end
    
    it "Suma de fracciones" do
        suma=@frac1+@frac2
        suma.should eq(Fractnum.new(7,6))
    end
    
    it "Resta de fracciones" do
        resta=@frac2-@frac1
        resta.should eq(Fractnum.new(1,6))
    end
    
    it "multiplicacion de fracciones" do
        multiplicacion=@frac1*@frac2
        multiplicacion.should eq(Fractnum.new(2,6))
    end
    
    it "division de fracciones" do
        division=@frac1/@frac2
        division.should eq(Fractnum.new(3,4))
    end
    
    it "implementado el to_S" do

        @frac1.to_s.should eq("1/2")
    end
    
    
end

=end