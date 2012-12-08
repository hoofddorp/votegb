class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :sport
      t.string :event
      t.date :dob
      t.integer :age
      t.string :sex
      t.integer :gold
      t.integer :silver
      t.integer :bronze
      t.integer :total_medals
      t.string :region
      t.float :average_rating

      t.timestamps
    end
  end
end
