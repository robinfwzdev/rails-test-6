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

  def name
    first_name + ' ' + last_name
  end

  def say_something
    return 'Hello, I am your ' << self.class.name
  end

  def parents
    parents = Array.new
    parents.push(self.father) if self.father.present?
    parents.push(mother) if mother.present?
  end

  def children
    children = Array.new
    children.push(sons)
    children.push(daughters)
  end

  def the_same_father
    father.children.reject { |user| user.id != id }
  end

  protected

  def ensure_valid_age
    return errors[:dob] << 'Invalid.' if dob? && age < self.class::MIN_AGE
  end
end
