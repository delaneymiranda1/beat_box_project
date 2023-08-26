
class LinkedList
  attr_reader :head
  def initialize
    @head = nil

  end

  def append(data) 
    if @head.nil?
      @head = Node.new('doop')
    else 
      last_node = @head
      while last_node.next_node.nil?
        last_node = last_node.next_node
      end
      last_node.next_node = Node.new('doop')
    end
  end

  def count
    current_node = @head
    count = 0
    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def to_string
    current_node = @head
    elements = []

    while current_node
      elements << current_node.data
      current_node = current_node.next_node
    end

    elements.join(" ") 
  end
end