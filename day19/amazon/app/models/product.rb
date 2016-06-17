class Product < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  belongs_to :category
  belongs_to :user
  validates :title, presence: true,
                    uniqueness: true
  validates :price, presence: true
  before_validation :sales_price_default
  validate :sales_price_less_equal_to_price


  def on_sale?
    if sales_price != price
      true
    else
      false
    end
  end

  private

  def sales_price_default
    self.sales_price ||= price
  end

  def sales_price_less_equal_to_price
    if sales_price >= price && sales_price == nil
      errors.add(:sales_price, "Invalid sales price")
    end
  end



end
