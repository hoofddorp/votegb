class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :athlete_id
      t.float :performance_rating
      t.string :review_summary
      t.text :review

      t.timestamps
    end
  end
end
