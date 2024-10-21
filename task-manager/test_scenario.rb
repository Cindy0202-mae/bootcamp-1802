require_relative 'task'
require_relative 'repository'
require_relative 'controller'
require_relative 'view'
require_relative 'router'

repository = Repository.new
view = View.new
controller = Controller.new(view, repository)
router = Router.new(controller)

router.run

# 1. Create Task class (MODEL)
# 2. Store 'title' and 'complete' inside
# 3. Create Repository - holds instances of Task model
# 4. Identify user actions (add, list etc)
# 5. Implemented Controller for these actions
# 6. Create View to do puts and gets
# 7. Create Router to send user to where they wanna go

# MVC
# MODEL - data
# VIEW - Interactions
# CONTROLLER - Control the model and view
