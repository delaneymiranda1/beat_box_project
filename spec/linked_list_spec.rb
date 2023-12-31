require './lib/linked_list'
require './lib/node'


RSpec.describe LinkedList do
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

  it 'prepends a new piece of data to the list' do
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')

    expect(list.to_string).to eq('dop plop suu')
  end

  it 'tells us how many things are in the list' do
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')
   

    expect(list.count).to eq(3)
  end

  it 'inserts woo into element 1 in the list' do
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')
    list.insert(1, 'woo')

    expect(list.to_string).to eq('dop woo plop suu')
  end

  it 'returns deep woo shi shu blop' do
    list = LinkedList.new
    list.append('shu')
    list.append('blop')
    list.prepend('deep')
    list.insert(1, 'woo')
    list.insert(2, 'shi')

    expect(list.to_string).to eq('deep woo shi shu blop')
  end

  it 'finds elements in the list' do
    list = LinkedList.new
    list.append('shu')
    list.append('blop')
    list.prepend('deep')
    list.insert(1, 'woo')
    list.insert(2, 'shi')

    expect(list.find(2, 1)).to eq('shi')
    expect(list.find(1, 3)).to eq('woo shi shu')
  end

  it 'tells you whether the list includes an element' do
    list = LinkedList.new
    list.append('shu')
    list.append('blop')
    list.prepend('deep')
    list.insert(1, 'woo')
    list.insert(2, 'shi')

    expect(list.includes?('deep')).to be true
    expect(list.includes?('dep')).to be false
  end

  it 'removes the last element from the list and returns it' do
    list = LinkedList.new
    list.append('shu')
    list.append('blop')
    list.prepend('deep')
    list.insert(1, 'woo')
    list.insert(2, 'shi')

    expect(list.pop).to eq('blop')
    expect(list.pop).to eq('shu')
  end

  it 'returns a new string after removing two elements' do
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    expect(list.pop).to eq('blop')
    expect(list.pop).to eq('shu')
    expect(list.to_string).to eq('deep woo shi')
  end

end