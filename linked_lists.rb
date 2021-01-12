require "pry"
# require "enumerator"


class LinkedList
  include Enumerable

  attr_accessor :name

  # @@full_list = []

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
      @head = Node.new(data)
      @head.next_node = @head
    end
  end

  def pop
  	
  end

  def print_head
  	return "No Nodes in List" if @head.nil?
    @head.value
  end

  def print_tail
  	return "No Nodes in List" if @head.nil?
    @tail.value
  end

  def size
  	until @tail.next_node == nil
 	  		  		
  	end
  end
end



class Node
  attr_accessor :value, :next_node
  def initialize(value)
    @value = value
    @next_node = nil
  end
end

list = LinkedList.new
list.append("name")
list.append("name2")
list.append("name3")
list.prepend("other")
list.prepend("initial")

# puts 



list.pop
puts list.print_tail
puts list.print_head




# def put_top_queue(value)
#   if @head.nil?
#     @head = value
#     @tail = value
#   else
#     value.next = @head
#     @head = value
#   end
# end

# def put_bottom_queue(value)
#   if @head.nil?
#     @head = value
#     @tail = value
#   else
#     @tail.next = value
#     @tail = value
#   end
# end

# def remove_bottom

# end
