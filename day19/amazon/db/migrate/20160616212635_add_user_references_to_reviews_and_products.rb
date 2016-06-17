class AddUserReferencesToReviewsAndProducts < ActiveRecord::Migration
  def change
    add_reference :reviews, :user, index: true, foreign_key: true
    add_reference :products, :user, index: true, foreign_key: true
  end
end
