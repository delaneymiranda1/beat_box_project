class LinkedList
  attr_reader :head
  def initialize
    @head = nil

  end

  def append(data) #(node_data)
    node = Node.new('doop')
    data = 'doop'
    if @head = nil
      @head = node
    else 
      last_node = @head
      # until last_node.next_node = nil do
      #   last_node = last_node.next_node
      # end
      # last_node
    end
  end

  # def count
  #   current_node = @head
  #   count 0
  #   while current_node
  #     count += 1
  #     current_node = current_node.next_node
  #   end
  #   count
  # end
end