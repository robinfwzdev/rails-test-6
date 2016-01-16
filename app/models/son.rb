class Son < User
  belongs_to :father, :class_name => 'Father', :foreign_key => 'father_id'
  belongs_to :mother, :class_name => 'Mother', :foreign_key => 'mother_id'

  def parents
    parents = Array.new
    parents.push(father)
    parents.push(mother)
  end
end
