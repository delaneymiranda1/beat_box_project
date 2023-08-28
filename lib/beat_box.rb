class BeatBox
  def initialize
    @list = LinkedList.new

  end

  def list
    @list
  end

  def append(data)
    list.append(data)
  end
  
end