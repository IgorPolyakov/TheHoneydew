class InspectorPolicy <ApplicationPolicy

   def destroy?
   	  user.admin?
	  #record.user == user
   end

   def edit?
	  user.admin?
   end

end