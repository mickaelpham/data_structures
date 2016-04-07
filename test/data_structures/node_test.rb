require 'test_helper'

describe DataStructures::Node do
  describe 'empty node' do
    subject { DataStructures::Node.new }

    it 'can be created with no arguments' do
      assert_nil subject.data
    end
  end

  describe 'node with data' do
    let(:data) { 'some data to store' }

    subject { DataStructures::Node.new(data) }

    it 'stores the data' do
      assert_equal data, subject.data
    end
  end
end
