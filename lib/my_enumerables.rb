module Enumerable
  # Your code goes here
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