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