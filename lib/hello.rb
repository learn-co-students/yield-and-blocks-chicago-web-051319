v = ["Tim" , "Tom" , "Jim"]

def hello_t(x)
  if block_given?
  index = 0
  while index < x.length
    yield x[index]
   index += 1
  end
  return x
  
  else
    puts "Hey! No block was given!"
  end
end


# call your method here!
hello_t(v) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end