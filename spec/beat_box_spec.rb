require './lib/linked_list'
require './lib/node'
require './lib/beat_box'


RSpec.describe BeatBox do
  it 'exists' do
    list = LinkedList.new
    bb = BeatBox.new
    node = Node.new('plop')

   expect(bb).to be_instance_of(BeatBox)
   expect(bb.list).to be_instance_of(LinkedList)
  end

  it 'has an empty head' do
    list = LinkedList.new
    bb = BeatBox.new
    node = Node.new('plop')

    expect(bb.list.head).to eq(nil)
  end

  it 'appends new data to the list' do
    list = LinkedList.new
    bb = BeatBox.new
    node = Node.new('plop')
    bb.append('deep doo ditt')

    expect(bb.list.head.data).to eq('deep')
    expect(bb.list.head.next_node.data).to eq('doo')
  end


  it 'appends new data to the list and counts it' do
    list = LinkedList.new
    bb = BeatBox.new
    node = Node.new('plop')
    bb.append('deep doo ditt')
    bb.append('woo hoo shu')

    expect(bb.count).to eq(6)
    expect(bb.list.count).to eq(6)
  end
  
  it 'plays the data as sounds' do
    list = LinkedList.new
    bb = BeatBox.new
    node = Node.new('plop')
    bb.append('deep doo ditt')
    bb.append('woo hoo shu')

    expect(bb.play).to eq(`say -r 200 -v Boing #{beats}`)
  end

end