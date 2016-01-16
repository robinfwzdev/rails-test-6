class Mother < User
  has_many :sons, :class_name => 'Son', :foreign_key => 'user_id'
  has_many :daughters, :class_name => 'Daughter', :foreign_key => 'user_id'
  
  MIN_AGE = 18
end
