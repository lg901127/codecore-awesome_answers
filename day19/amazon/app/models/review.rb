class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  validate :star_range

  private

  def star_range
    if star > 5 || star < 1
      errors.add(:star, "Please enter a number between 1 and 5")
    end
  end

end
