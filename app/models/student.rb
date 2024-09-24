class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :school_email, presence: true
  validates :major, presence: true
  validates :minor, presence: true
end
