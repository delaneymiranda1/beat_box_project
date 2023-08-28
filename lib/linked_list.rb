
class LinkedList
  attr_reader :head
  def initialize
    @head = nil

  end

  def append(data) 
    if @head.nil?
      @head = Node.new(data)
    else 
      current_node = @head
      while !current_node.next_node.nil? 
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    data
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
    data
  end
  
  def insert(position, data)
    if position <= 0
      prepend(data)
    else
      new_node = Node.new(data)
      current_node = @head
    (position - 1).times do
      break if current_node.nil? or current_node.next_node.nil?
      current_node = current_node.next_node 
    end
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
    end

  end

  def node_position(position)
    current_node = @head
    position.times { current_node = current_node.next_node}
    current_node
  end

  def find(position, return_count)
    return if position < 0 or position >= count or return_count <= 0
    found = []
    current_node = node_position(position)

    return_count.times do 
      break if current_node.nil?
      found << current_node.data
      current_node = current_node.next_node
    end
    found.join(" ") 
  end

  def includes?(data)
    current_node = @head 
    while current_node
      return true if current_node.data == data
      current_node = current_node.next_node
    end
    false
  end

  def pop
    
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

  # def includes?(data)
  #   current_node = @head 
  #   elements = 
  #   while current_node
  #     return true if current_node.data == data
        # current_node = current_node.next_node

  # end


# Ask if this is okay? It is making an empty array and shoveling the data into it
# but join turns it back into a string



# def to_string
  #   current_node = @head 
  #   current_node.data.to_s
  # end

# def append(data)
#   new_node = Node.new(data) 
#   if head.nil?
#     @head = new_node
#   else
#     new_node.next_node = @head
#     @head = new_node
#   end
#   data
# end

# def prepend(data)
#   new_node = Node.new(data)
#   new_node.next_node = @head
#   @head = new_node
#   data
# end
  