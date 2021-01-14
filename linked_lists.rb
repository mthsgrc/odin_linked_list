require "pry"

class LinkedList

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
    return "No Nodes in List" if @head.nil?
    node = @head
    count = 0
    until count == index
      node = node.next_node
      count += 1
    end
    "Value at index #{index} is #{node.value}"
  end

  def pop
    return "No Nodes in List" if @head.nil?
    @head = nil if !@head.next_node

    prev = @head
    node = @head.next_node
    while node.next_node
      node = node.next_node
      prev = prev.next_node
    end
    @tail = prev
    prev.next_node = nil
  end

  def contains?(data)
    node = @head
    while node 
      # binding.pry
      if node.value == data
        return true
      end
      node = node.next_node
    end
    false
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



list.append(2)
puts list.print_tail

list.prepend(1)
puts list.print_tail

list.append(3)
puts list.print_tail

list.prepend(0)
puts list.print_tail

list.append(4)


list.append(55)
puts list.print_tail
# puts list.size

puts list.contains?(0)
puts list.contains?(-1)
puts list.contains?(2)
puts list.contains?(3)
puts list.contains?(4)
puts list.contains?(55)



# puts list.value_at(0)
# puts list.value_at(1)
# puts list.value_at(2)
# puts list.value_at(3)

# puts list.value_at(5)

puts list.size
