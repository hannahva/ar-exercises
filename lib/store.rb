class Store < ActiveRecord::Base
   has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :has_apparel, on: :create
  before_destroy :check_for_employees?

  def has_apparel
    if (!mens_apparel.present? || mens_apparel == false) &&
       (!womens_apparel.present? || womens_apparel == false)
      errors.add(:apparel, "stores must carry some kind of apparel!")
    end
  end

  private
  def check_for_employees?
    if employees.any?
      errors.add(:deletion, "Cannot destroy a store that has employees")
      throw :abort
    end
  end
end
