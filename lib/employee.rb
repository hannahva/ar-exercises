class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
  validates_associated :store
  after_create :create_password

  private
  def create_password
    new_password = (0...8).map{ ('A'..'Z').to_a[rand(26)] }.join

    self.password = new_password
  end

end
