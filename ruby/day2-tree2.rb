class Tree
  attr_accessor :children, :node_name

  def initialize(treeHash)

    if(treeHash.length > 0)
      @node_name = treeHash.keys[0]
      @children = treeHash[node_name]
    end
  end

  def visit_all(&block)
    visit &block
    children.each do |key, value|
      subtree = Hash.new
      subtree.store(key, value)
      Tree.new(subtree).visit_all &block
    end
  end

  def visit(&block)
    block.call self
  end
end


ruby_tree = Tree.new({'grandpa' => {'dad' => {'child 1' => {}, 'child2' => {}}, 'uncle' => {'child 3' => {}, 'child 4' => {}}}})

puts 'Visiting a node'
ruby_tree.visit {|node| puts node.node_name }

puts 'Visiting entire tree'
ruby_tree.visit_all { |node| puts node.node_name }
