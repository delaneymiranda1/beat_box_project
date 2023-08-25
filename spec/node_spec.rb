require './lib/node'
require 'pry'

RSpec.describe Node do 
  
 it 'exists' do
   node = Node.new('plop')

   expect(node).to be_instance_of(Node)
  end

  it 'has data' do
    node = Node.new('plop') # creating instance of Node

    expect(node.data).to eq('plop')
  end

  it 'starts with no next node' do
    node = Node.new('plop')

    expect(node.next_node).to eq(nil)
  end
end