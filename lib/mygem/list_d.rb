class List_d

  attr_accessor :ini,:fin
  def initialize
    @ini=nil
    @fin=nil
  end
  
  
  def lista_vacia
    @ini==nil && @fin==nil
  end
  
  
  def push_fin(*elemento)
    # Si la lista está vacía
    if lista_vacia 
      @ini=Node_d.new(nil,elemento[0],nil)
      @fin=@ini
      
      elemento.shift
      aux=@ini
      for x in elemento
        aux.next=Node_d.new(aux,x,nil)
        aux=aux.next
      end
      @fin=aux
      
    # Si en la lista solo existe un elemento
    elsif @fin==@ini
      nuevo=Node_d.new(@ini,elemento[0],nil)
      @fin=nuevo
      @ini.next=@fin
      elemento.shift
      aux=@fin
      for x in elemento
        aux.next=Node_d.new(aux,x,nil)
        aux=aux.next
      end
      @fin=aux
    #cuando hay más de un elemento en la lista
    else
      aux=@fin
      for x in elemento
        aux.next=Node_d.new(aux,x,nil)
        aux=aux.next
      end
      @fin=aux
    end
  end
  
  def push_ini(*elemento)
    if lista_vacia 
      @ini=Node_d.new(nil,elemento[0],nil)
      @fin=@ini
      
      elemento.shift
      aux=@ini
      for x in elemento
        aux.next=Node_d.new(aux,x,nil)
        aux=aux.next
      end
      @fin=aux
      
      
    else
    
      aux=@ini
      @ini=Node_d.new(nil,elemento[0],nil)
      elemento.shift

      aux2=@ini
      i=0
      while i<elemento.size-1 do
        
        aux2.next=Node_d.new(aux2,elemento[i],nil)
        aux2=aux2.next
        i+=1
      end
      aux2.next=Node_d.new(aux2,elemento[i],aux)
      
    end
  end
  
  def pop_ini
    
    valor=@ini.value
    @ini=@ini.next
    @ini.prev=nil
    
    valor
    
  end
  
  def pop_fin
    
    valor=@fin
    
    @fin=@fin.prev
    @fin.next=nil
    
    valor
    
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