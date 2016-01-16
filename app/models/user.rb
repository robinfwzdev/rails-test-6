class User < ActiveRecord::Base
  extend Enumerize

  enumerize :gender, in: [:male, :female]

  validates :name, presence: true
  validates :dob,  presence: true
  validates :first_name,  presence: true
  validates :last_name,  presence: true
  validate  :ensure_valid_age

  MIN_AGE = 0

  def age
    ((Date.today - dob) / 365).floor
  end

  protected

  def ensure_valid_age
    return errors[:dob] << 'Invalid.' if dob? && age < self.class::MIN_AGE
  end
end
