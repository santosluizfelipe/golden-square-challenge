class TodoList
  def initialize
    @tasks = []
  end

  def list  
    @tasks
  end

  def add(task)
    @tasks << task
  end

  def complete(task)
    fail "No such task" unless @tasks.include? task
    @tasks.delete(task)
    @tasks
  end
end