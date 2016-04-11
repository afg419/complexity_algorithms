require 'pry'
class BinaryTree

  attr_reader :index, :data
  attr_accessor :left, :right

  def initialize(opts) ##{index: 4, data: "hey"} {data: "hey", index: 4}
    @index = opts[:index]
    @data = opts[:data]
    @left = nil
    @right = nil
  end

  def add(opts) #opts = {index: 2, data: "dope"}
    new_index = opts[:index]
    new_data = opts[:data]

    if new_index < index
      add_to_left_side(opts)
    elsif index < new_index
      add_to_right_side(opts)
    end
  end

  def add_to_left_side(opts)
    if left.nil?
      @left = create_new_tree(opts)
    else
      left.add(opts)
    end
  end

  def add_to_right_side(opts)
    if right.nil?
      @right = create_new_tree(opts)
    else
      right.add(opts)
    end
  end

  def search(new_index)
    if new_index < index
      search_side(new_index, left)
    elsif index < new_index
      search_side(new_index, right)
    else
      data
    end
  end

  def search_side(new_index, direction)
    if direction.nil?
      "DNE"
    else
      direction.search(new_index)
    end
  end

  def create_new_tree(opts)
    BinaryTree.new(opts)
  end

end

bt = BinaryTree.new({index: 3, data: "yo"})
bt.add({index: 2, data: "dope"})
bt.add({index: 4, data: "d4"})
bt.add({index: 5, data: "d5"})
puts bt.search(5)
puts bt.search(2)
