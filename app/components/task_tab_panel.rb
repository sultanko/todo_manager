class TaskTabPanel < Netzke::Basepack::TabPanel

	component :incomplete_tasks do |c|
		c.klass = Tasks 
		c.title = "Incomplete"
		c.scope = { done:[nil, false] }
	end

	component :completed_tasks do |c|
		c.klass = Tasks
		c.title = "Completed"
		c.scope = { done:[true] }
	end

	component :all_tasks do |c|
		c.klass = Tasks
		c.title = "All"
		c.scope = nil
	end

	def configure(c)
		super
		c.items = [:incomplete_tasks, :completed_tasks, :all_tasks]
	end

end