class Son < User
  belongs_to :father, :class_name => 'Father', :foreign_key => 'user_id'
end
