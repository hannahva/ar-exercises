class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :has_apparel, on: :create
  has_many :employees

  def has_apparel
    if (!mens_apparel.present? || mens_apparel == false) &&
       (!womens_apparel.present? || womens_apparel == false)
      errors.add(:apparel, "stores must carry some kind of apparel!")
    end
  end
end
