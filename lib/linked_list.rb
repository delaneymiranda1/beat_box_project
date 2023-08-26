
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

  def count
    current_node = @head
    count = 0
    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  # def to_string
  #   current_node = @head 
  #   current_node.data.to_s
  # end

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

# Ask if this is okay? It is making an empty array and shoveling the data into it
# but join turns it back into a string


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

# def to_string
#   current_node = @head
#   elements = []
#   while current_node
#     elements << current_node.data
#     current_node = current_node.next_node
#   end

#   elements.to_s
# end