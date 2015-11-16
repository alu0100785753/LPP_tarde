class List_d

  attr_accessor :ini,:fin
  def initialize
    @ini=nil
    @fin=nil
  end

  def push(elemento)
    if @ini.value == nil
      @ini.value= elemento
    else
      aux=@ini
      while aux.next != nil do
        aux=aux.next
      end
      aux.next= Node.new(elemento,nil)
    end
  end

  def push_var(*elementos)
    if @ini.value == nil
      @ini.value= elementos[0]
      elementos.shift
      aux=@ini
      for x in elementos
        aux.next= Node.new(x,nil)
        aux=aux.next
      end
    else
      aux=@ini
      while aux.next != nil do
        aux=aux.next
      end
      for x in elementos
        aux.next= Node.new(x,nil)
        aux=aux.next
      end
    end
  end

  def pop
    aux=@ini
    if aux.next==nil
      @ini=Node.new(nil,nil)
    else
      @ini=aux.next
    end
    return aux.value
  end
  
  def head
    return @ini.value
  end

end