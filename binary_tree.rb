require 'pry'
class BinaryTree

  attr_reader :index, :data
  attr_accessor :left, :right

  def initialize(opts)
    @index = opts[:index]
    @data = opts[:data]
    @left = NilTree.new
    @right = NilTree.new
  end

  def add(opts)
    new_index = opts[:index]
    new_data = opts[:data]

    if new_index < index
      @left = left.add(opts)
    elsif index < new_index
      @right = right.add(opts)
    end

    self
  end

  def search(new_index)
    if new_index < index
      left.search(new_index)
    elsif index < new_index
      right.search(new_index)
    else
      data
    end
  end
end

class NilTree
  def add(opts)
    BinaryTree.new(opts)
  end

  def search(new_index)
    "DNE"
  end
end

class OperationCounter
  attr_accessor :counter
  def initialize
    @counter = 0
  end
end

bt = BinaryTree.new({index: 3, data: "yo"})
bt.add({index: 2, data: "dope"})
bt.add({index: 4, data: "d4"})
bt.add({index: 5, data: "d5"})
puts bt.search(5)
puts bt.search(2)
puts bt.search(6)
