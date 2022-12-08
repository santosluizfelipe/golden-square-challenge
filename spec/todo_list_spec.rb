require 'todo_list'

describe TodoList do 
  it "given no tasks should return an empty array" do 
    todo_list = TodoList.new
    expect(todo_list.list).to eq []
  end

  it "given 1 task should the return the given task" do 
    todo_list = TodoList.new
    todo_list.add("wash the car")
    expect(todo_list.list).to eq ["wash the car"]
  end

  it "given 2 tasks should the return the given tasks" do 
    todo_list = TodoList.new
    todo_list.add("wash the car")
    todo_list.add("walk the dog")
    expect(todo_list.list).to eq ["wash the car", "walk the dog"]
  end

  it "given a task to a complete method should delete the task from the array" do 
    todo_list = TodoList.new
    todo_list.add("wash the car")
    todo_list.add("walk the dog")
    expect(todo_list.complete("wash the car")).to eq ["walk the dog"]
  end

  it "should fail if we pass a non existing task to complete method" do 
    todo_list = TodoList.new
    todo_list.add("wash the car")
    todo_list.add("walk the dog")
    expect { todo_list.complete("cook dinner") }.to raise_error "No such task"
  end
end