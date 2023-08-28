class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new

  end


  def append(data)
    words = data.split(" ")
    words.each do |word|
      list.append(word)
    end

  end
  
  def next_node
    list.current_node.next_node
  end

  def count
    list.count
  end

  
end