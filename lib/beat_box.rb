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


  def play
    beats = list.to_string
    beats = beats.split
    beats.find_all do |beat|
      `say -r 200 -v Boing #{beat}`
    end
    beats.join(" ")
  end

end