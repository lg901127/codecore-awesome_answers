require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validation" do
    # before do
    #   p = Product.new
    #   p.valid?
    def invalid_product
      p = Product.new
      p.valid?
      p
    end
    it "requires a title" do
      # p = Product.new
      # p.valid?
      expect(invalid_product.errors).to have_key(:title)
    end
    it "requires a price" do
      p = Product.new
      p.valid?
      expect(p.errors).to have_key(:price)
    end
    it "requires a unique title" do
      Product.create(title: "abc", price: 10)
      p = Product.create(title: "abc", price: 10)
      p.valid?
      expect(p.errors).to have_key(:title)
    end
    it "requires a sales_price" do
      p = Product.create(title: "abc", price: 10)
      p.valid?
      expect(p.sales_price).to eq(10)
    end
    it "requires a sales_price <= price" do
      p = Product.create(title: "abc", price: 10, sales_price: 15)
      p.valid?
      expect(p.errors).to have_key(:sales_price)
    end
    it "returns true if on sale" do
      p = Product.create(title: "abc", price: 10, sales_price: 5)
      expect(p.on_sale?).to eq(true)
    end
  end
end
