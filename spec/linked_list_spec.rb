require './lib/linked_list'
require './lib/node'


RSpec.describe do
  it 'exists' do
    list = LinkedList.new
    
    expect(list).to be_instance_of(LinkedList)
  end

  it 'has no head yet' do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it "appends a new piece of data" do
    list = LinkedList.new
    list.append('doop')
    node = Node.new('doop')

    expect(list.head.data).to eq('doop')
    expect(list.head.next_node).to eq(nil)
    expect(list.head).to be_instance_of(Node)
  end

  it 'tells us how many things are in the list' do
    list = LinkedList.new
    list.append('doop')
    node = Node.new('doop')

    expect(list.count).to eq(1)
  end

  it 'generates a string of all the elements in the list, seperated by spaces' do
    list = LinkedList.new
    list.append('doop')

    expect(list.to_string).to eq('doop')
  end


end