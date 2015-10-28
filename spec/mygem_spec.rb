require 'spec_helper'
require 'mygem'
=begin
describe Mygem do
   it 'requires additional testing'
end
=end

describe Fractnum do
    before :all do
        
        @frac1= Fractnum.new(1,2)
        @frac2= Fractnum.new(2,3)
        
    end 
    
    it "Existe un numerador" do
        @frac1.num.should eq(1)
    end
    
    it "Existe un denominador" do
        @frac1.den.should eq(2)
    end
    
end
