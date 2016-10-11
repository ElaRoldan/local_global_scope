$global = "This global variable"
 
class DummyClass
  @@class_variable = "This is a class variable"
 
  def initialize
    @local_var = "this is my local var"
  end
 
  def return_my_local_var 
    p instance_var = "this is the new value of local var"
  end 
 
  def instance_var
    @instance_var
  end
 
# Este es un setter
  def instance_var=(value)
    @instance_var = value
  end
 
  def class_variable
    @@class_variable
  end
 
  def change_global
    $global = "This global two variable"
  end
 
end
 
class Three
  def change_global
    $global = "This global three variable"
  end
end
 
a = DummyClass.new
dummy_1 = DummyClass.new
dummy_2 = DummyClass.new
dummy_class = DummyClass.new
three = Three.new
 
 
dummy_1.class_variable 
dummy_2.class_variable
a.return_my_local_var
p dummy_class.instance_var = "Bar"
p dummy_class.change_global
p $global
puts "***"
p three.change_global
p $global