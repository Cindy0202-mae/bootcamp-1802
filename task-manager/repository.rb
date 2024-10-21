class Repository
  def initialize
    @tasks = []
  end

  # behavior is the CRUD
  # ADD METHOD
  def add(task)
    @tasks << task
  end

  # method that return all the task
  def all
    @tasks
  end

  # This method will find the index ask from the user
  def find(index)
    @tasks[index]
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end
