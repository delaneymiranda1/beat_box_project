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
  
  def next_node
    list.current_node.next_node
  end

  def count
    list.count
  end
end