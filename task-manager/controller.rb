require_relative 'task'

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def add_task
    # 1. Ask user for the task
    # 2. Take user's input
    title = @view.ask_user_for_title

    # 3. Create instance of task from input
    task = Task.new(title)

    # 4. Give task to the repository
    @repository.add(task)
  end

  def list_tasks
    # 1. Ask repo for all tasks
    tasks = @repository.all
    # 2. Ask the view to print the task
    @view.list_tasks(tasks)
  end

  def mark_task_as_complete
    # 1. ask the user for the index of the completed task
    index = @view.ask_for_task_index
    # 2. Ask repo for task instance at index
    task = @repository.find(index)
    # 3. Mark task instance complete
    task.mark_as_complete
  end

  def remove
    # 1. Display list with indices
    @view.list_tasks(@repository.all)
    # 2. Ask the user for index
    index = @view.ask_for_task_index
    # 3. Remove from the repository
    @repository.destroy(index)
  end
end
