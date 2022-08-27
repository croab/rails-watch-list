class AddCommentAndRatingToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :comment, :string
    add_column :reviews, :rating, :integer
  end
end
