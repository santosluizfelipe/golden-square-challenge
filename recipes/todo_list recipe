Todo list exercise

##1. describe the problem
  As a user
  So that I can keep track of my tasks
  I want a program that I can add todo tasks to and see a list of them.

  As a user
  So that I can focus on tasks to complete
  I want to mark tasks as complete and have them disappear from the list.

##2. Design the method signature

  class TodoList 
    def initializer
    end 

    def add(task) # a task is a string representing a instruction  
      #return nothing
    end

    def list  
      # Returns a list of the tasks added as strings
      #except the complete ones
    end

    def complete(task) # task is a string representing a task to mark complete
      # Returns nothing
      # Fails if the task doesn't exist
    end
  end

  ##3. create examples as tests

    # 1 
    todo_list = TodoList.new
    todo_list.lst # => []

    # 2
    todo_list = TodoList.new 
    todo_list.add("wash the car")
    todo_list.list # => ["wash the car"]

    # 3 
    todo_list = TodoList.new 
    todo_list.add("wash the car")
    todo_list.add("walk the dog")
    todo_list.list # => ["wash the car", "walk the dog"]

    # 4 
    todo_list = TodoList.new 
    todo_list.add("wash the car")
    todo_list.add("walk the dog")
    todo_list.complete("wash the car")
    todo_list.list # => ["walk the dog"]

    # 5 
    todo_list = TodoList.new 
    todo_list.add("wash the car")
    todo_list.add("walk the dog")
    todo_list.complete("cook dinner")
    todo_list.list # => fails "No such task"