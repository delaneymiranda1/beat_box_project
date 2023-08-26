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

  it "appends a new piece of data" do
    list = LinkedList.new
    list.append('doop')
    expect(list.head.data).to eq('doop')
    expect(list.head.next_node).to eq(nil)

    list.append('deep')
    expect(list.head.next_node.data).to eq('deep')
    expect(list.head.next_node.next_node).to eq(nil)
  end
  it 'tells us how many things are in the list' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')
   

    expect(list.count).to eq(2)
  end

  it 'generates a string of all the elements in the list, seperated by spaces' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')

    expect(list.to_string).to eq('doop deep')
  end

  it 'adds new pieces of data and converts to string' do
    list = LinkedList.new
    list.append('plop')
  
    expect(list.to_string).to eq('plop')
    list.append('suu')

    expect(list.to_string).to eq('plop suu')
  end

  xit 'prepends a new piece of data to the list' do
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')

    expect(list.to_string).to eq('dop plop suu')
  end

  xit 'tells us how many things are in the list' do
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')
   

    expect(list.count).to eq(3)
  end

  xit 'inserts woo into element 1 in the list' do
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')
    list.insert(1, 'woo')

    expect(list.to_string).to eq('dop woo plop suu')
  end
end