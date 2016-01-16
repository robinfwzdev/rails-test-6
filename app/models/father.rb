class Father < User
  has_many :sons, :class_name => 'Son', :foreign_key => 'father_id'
  has_many :daughters, :class_name => 'Daughter', :foreign_key => 'father_id'

  MIN_AGE = 20
end
