def hello_world(name = "World")
  if name.empty?
    name = "World"
  end
  return "Hello, #{name}!"
end