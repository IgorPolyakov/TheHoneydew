class Scope <Scope
	def resolve
		if user.admin?
			scope.all
		else 
			scope.where(:full_name => user.inspectors.select(:full_name))
		end
	end
end