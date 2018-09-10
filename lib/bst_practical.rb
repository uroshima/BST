
def kth_largest(tree_node, k)
  result = in_order_traversal(tree_node, arr = [])
  result[result.length - k]
end

def in_order_traversal(tree_node, arr = [])
  return arr if tree_node.nil?
  return in_order_traversal(tree_node.left, arr) + [tree_node] + in_order_traversal(tree_node.right, arr)
end
