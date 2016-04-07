require 'test_helper'

describe DataStructures::LinkedListNode do
  let(:next_node) { DataStructures::LinkedListNode.new }

  subject { DataStructures::LinkedListNode.new }

  it 'can set the next node' do
    subject.next = next_node
    assert_equal next_node, subject.next
  end
end
