class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :students, :school_email, uniqueness: true
  validates :major, presence: true
  validates :minor, presence: true
end

def make emails_work

end

