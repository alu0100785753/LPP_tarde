require 'spec_helper'
require 'mygem'


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
    end
    
    it "Se pueden insertar elementos en la lista" do
       @lista.push(5)
       @lista.ini.value.should_not eql(nil) 
    end
    
end



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