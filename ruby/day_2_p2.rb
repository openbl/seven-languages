class Tree
  attr_accessor :children, :node_name

  def initialize(family)
    @node_name = family.keys.first
    @children = []
    if !family.values.first.empty?
      @children = family.values.map { |child| Tree.new(child) }
    end
  end

  def visit_all(&block)
    visit(&block)
    children.each { |c| c.visit_all(&block) }
  end

  def visit(&block)
    block.call(self)
  end

  def to_s
    "#<Tree:#{node_name} @children=#{children.inspect}>"
  end
end
