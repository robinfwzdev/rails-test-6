class Father < User
  has_many :sons, :class_name => 'Son', :foreign_key => 'user_id'

  MIN_AGE = 20
end
