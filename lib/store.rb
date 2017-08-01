class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :has_apparel, on: :create
  has_many :employees

  def has_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:mens_apparel && :womens_apparel, "stores must carry some kind of apparel!")
    else

    end
  end
end
