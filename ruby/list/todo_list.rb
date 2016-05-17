class TodoList
	attr_accessor :list

	def initialize(list)
		@list = list
	end

	def get_items
		@list
	end

	def add_item(new_item)
		@list.push(new_item)
	end

	def delete_item(complete_item)
		complete_item_idx = @list.index(complete_item)
		@list.delete_at(complete_item_idx)
	end

end
