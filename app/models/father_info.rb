class FatherInfo < ActiveRecord::Base
  belongs_to :father

  validates :first_name,  presence: true
end