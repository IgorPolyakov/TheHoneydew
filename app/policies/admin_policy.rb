class AdminPolicy <ApplicationPolicy

   def index?
   	  user.is_admin?
   end

end