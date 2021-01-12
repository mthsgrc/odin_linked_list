require "pry"

class LinkedList
  include Enumerable

  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data) #add to list end
    if @head.nil?
      @head = Node.new(data)
      @tail = @head
    else
      @tail.next_node = Node.new(data)
      @tail = @tail.next_node
    end
  end

  def prepend(data) #add to list start
    # binding.pry
    if @head.nil?
      @head = Node.new(data)
      @tail = @head
    else
      tmp = @head
      @head = Node.new(data)
      @head.next_node = tmp
    end
  end

  def size
    return "No Nodes in list" if @head.nil?
    node = @head
    count = 1
    until node.next_node.nil?
      node = node.next_node
      count += 1
    end
    "List has size #{count}"
  end

  def print_head
    return "No Nodes in List" if @head.nil?
    @head.value
  end

  def print_tail
    return "No Nodes in List" if @head.nil?
    @tail.value
  end

  def value_at(index)
    

    
  end

  def pop
    binding.pry


  end


end

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end



list = LinkedList.new
# binding.pry
# puts list.size


puts list.size
list.append(2)
list.prepend(1)

list.append(3)

list.prepend(0)

list.append(4)

puts list.values_at(2)

puts list.size
