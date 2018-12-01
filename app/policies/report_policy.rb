class ReportPolicy <ApplicationPolicy

   def destroy?
   	  user.is_admin?
   end

   def edit?
	  user.is_admin?
   end

end