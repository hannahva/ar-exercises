class Employee < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
  validates_associated :store
  belongs_to :store
end
