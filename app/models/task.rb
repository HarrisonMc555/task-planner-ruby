class Task < ApplicationRecord
  has_many :plans
  validates :title, presence: true
end
