class List_d

  attr_accessor :ini,:fin
  def initialize
    @ini=nil
    @fin=nil
  end
  
  def lista_vacia
    @ini==nil && @fin==nil
  end

  def to_s
    aux=@ini
    cadena=""
    while aux!=nil do
      
      cadena+="#{aux.value}"
      if aux.next != nil
        cadena+="->"
      end
      aux=aux.next
      
    end
    cadena
  end
end