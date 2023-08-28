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

  it 'appends a head to the list' do
    list = LinkedList.new
    bb = BeatBox.new
    node = Node.new('plop')
    bb.append('deep')
    bb.append('doo')
    bb.append('ditt')

    expect(bb.list.head.data).to eq('deep')
  end
  
end