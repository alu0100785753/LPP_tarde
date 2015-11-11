class List
  
  attr_accessor :ini
  def initialize
    @ini=Node.new(nil,nil)
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

end