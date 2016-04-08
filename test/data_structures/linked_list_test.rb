require 'test_helper'

describe DataStructures::LinkedList do
  let(:data) { %w(move stand sleep rest run) }

  subject { DataStructures::LinkedList.new }

  describe '::new' do
    it 'can be instantianted with an initial data' do
      linked_list = DataStructures::LinkedList.new(data[0])
      assert_equal data[0], linked_list.peek
    end

    it 'can be instantianted without data' do
      assert subject
    end
  end

  describe 'with existing data' do
    before do
      data.each { |d| subject.push(d) }
    end

    describe '#pop' do
      it 'returns the latest data entered' do
        assert_equal data.last, subject.pop
      end

      it 'removes the latest node every time it\'s called' do
        data.reverse.each do |expected|
          assert_equal expected, subject.pop
        end
      end

      it 'entirely empty the linked list eventually' do
        99.times { subject.pop }
        assert_nil subject.pop
      end
    end

    describe '#peek' do
      it 'always return the latest data without removing it' do
        5.times { assert_equal data.last, subject.peek }
      end
    end
  end

  describe 'without existing data' do
    describe '#pop' do
      it 'returns nil' do
        assert_nil subject.pop
      end
    end

    describe '#peek' do
      it 'returns nil' do
        assert_nil subject.peek
      end
    end
  end


end
