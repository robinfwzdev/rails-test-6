class Son < User
  belongs_to :father, :class_name => 'Father', :foreign_key => 'father_id'
  belongs_to :mother, :class_name => 'Mother', :foreign_key => 'mother_id'
end
