module Enumerable
  # Your code goes here

  def my_each_with_index
    if block_given?
      0.upto(self.length - 1) do |index|
        yield(self[index], index)
      end
    end
    self
  end

  def my_select
    return_arr = []
    if block_given?
      0.upto(self.length - 1) do |index|
        if yield(self[index])
          return_arr.push(self[index])
        end
      end
    end
    return return_arr
  end

  def my_all?
    0.upto(self.length - 1) do |index|
      unless yield(self[index])
        return false
      end
    end
    return true
  end

  def my_any?
    0.upto(self.length - 1) do |index|
      if yield(self[index])
        return true
      end
    end
    return false
  end

  def my_none?
    0.upto(self.length - 1) do |index|
      if yield(self[index])
        return false
      end
    end
    return true
  end

  def my_count
    running_total = 0
    if block_given?
      0.upto(self.length - 1) do |index|
        if yield(self[index])
          running_total += 1
        end
      end
    else
      running_total = self.length
    end
    return running_total
  end

  def my_map
    return_arr = []
    0.upto(self.length - 1) do |index|
      return_arr.push(yield(self[index]))
    end
    return return_arr
  end

  def my_inject(start = self[0])
    0.upto(self.length - 1) do |index|
      start = yield(start, self[index])
    end
    return start
  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here

  def my_each
    if block_given?
      0.upto(self.length - 1) do |index|
        yield(self[index])
      end
    end
    self
  end

end