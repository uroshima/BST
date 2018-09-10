# There are many ways to implement these methods, feel free to add arguments
# to methods as you see fit, or to create helper methods.
require_relative "bst_node"

class BinarySearchTree

  attr_accessor :root, :recursion_insert

  def initialize
    @root = nil
  end

  def insert(value)
    if @root == nil
      @root = BSTNode.new(value)
    else
      recursion_insert(value)
    end
  end

  def find(value, tree_node = @root)
    # if tree_node.value == value
    #   tree_node
    # else
    #   nil
    # end
  end

  def delete(value)
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
  end

  def depth(tree_node = @root)
  end

  def is_balanced?(tree_node = @root)
  end

  def in_order_traversal(tree_node = @root, arr = [])
  end


  private
  # optional helper methods go here:
  def recursion_insert(value)
    current = @root
    new_node = BSTNode.new(value)
    until (value > current.value && current.right.nil?) ||
      (value < current.value && current.left.nil?)
      if current.value < value
        current = current.right
      else
          current = current.left
      end
    end
     value > current.value ? current.right = new_node :
     current.left = new_node
  end
end
