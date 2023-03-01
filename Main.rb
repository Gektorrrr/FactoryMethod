class Creator
  def factory_method
    raise NotImplementedError, "factory_method must be defined in subclass"
  end

  def some_operation
    product = factory_method
    result = "Creator: The same creator's code has just worked with #{product.operation}"
    result
  end
end

class ConcreteCreator1 < Creator
  def factory_method
    ConcreteProduct1.new
  end
end

class ConcreteCreator2 < Creator
  def factory_method
    ConcreteProduct2.new
  end
end

class Product
  def operation
    raise NotImplementedError, "operation must be defined in subclass"
  end
end

class ConcreteProduct1 < Product
  def operation
    "ConcreteProduct1"
  end
end

class ConcreteProduct2 < Product
  def operation
    "ConcreteProduct2"
  end
end
creator = ConcreteCreator1.new
puts creator.some_operation
creator = ConcreteCreator2.new
puts creator.some_operation



