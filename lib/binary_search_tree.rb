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
    while true

      if tree_node.value == value
        return tree_node
      elsif (tree_node.left.nil? && tree_node.right.nil?) ||
        (tree_node.left.nil? && tree_node.value > value) ||
        (tree_node.right.nil? && tree_node.value < value)
        return nil
      else

        if tree_node.value >= value
          tree_node = tree_node.left
        else
          tree_node = tree_node.right
        end

      end
    end
  end

  def delete(value)
    the_node = find(value)
    if the_node.value == @root.value
      @root = nil
    elsif the_node.right.nil? && the_node.left.nil?
      the_node.parent.left = nil if the_node.parent.left.value == the_node.value
      the_node.parent.right = nil if the_node.parent.right.value == the_node.value
    elsif the_node.left.nil?

      if the_node.parent.right.value == the_node.value
        the_node.parent.right = the_node.right
      else
        the_node.parent.left = the_node.right
      end
    elsif the_node.right.nil?

      if the_node.parent.right.value == the_node.value
        the_node.parent.right = the_node.right
      else
        the_node.parent.left = the_node.right
      end 

    end


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
     new_node.parent = current
     # current.child
  end
end
