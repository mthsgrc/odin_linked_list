class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data) 
    if @head.nil?
      @head = Node.new(data)
      @tail = @head
    else
      @tail.next_node = Node.new(data)
      @tail = @tail.next_node
    end
  end

  def prepend(data) 
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

  def find(data)
    node = @head
    count = 0

    while node
      if node.value == data
        return "Value #{data} found at index #{count}."
      end
      node = node.next_node
      count += 1
    end
    "The value #{data} didn't found."
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
      if node.value == data
        return true
      end
      node = node.next_node
    end
    false
  end

  def to_s
    node = @head
    while node
      print "(#{node.value}) -> "
      node = node.next_node
    end
    print "nil\n"
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
list.prepend(1)
list.append(3)
list.prepend(0)
list.append(4)
list.append(55)

list.to_s

puts list.find(55)
puts list.find(-1)

puts list.contains?(0)
puts list.contains?(-1)
puts list.contains?(55)

puts list.value_at(0)

puts list.value_at(3)

puts list.size
