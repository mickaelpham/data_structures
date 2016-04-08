require 'data_structures/linked_list_node'

module DataStructures
  class LinkedList
    attr_reader :root

    def initialize(data = nil)
      @root = DataStructures::LinkedListNode.new(data) unless data.nil?
    end

    def push(data)
      if root?
        current = root

        until current.next.nil? do
          current = current.next
        end

        current.next = DataStructures::LinkedListNode.new(data)
      else
        @root = DataStructures::LinkedListNode.new(data)
      end
    end

    def pop
      return unless root?

      current  = root
      previous = nil

      # Find the last node
      until current.next.nil? do
        previous = current
        current  = current.next
      end

      # Remove it from the linked list
      if previous.nil?
        @root = nil
      else
        previous.next = nil
      end

      current.data
    end

    def peek
      return unless root?

      current = root

      until current.next.nil? do
        current = current.next
      end

      current.data
    end

    private

    def root?
      !root.nil?
    end
  end
end
