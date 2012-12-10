class AddAvatarColumnsToAthletes < ActiveRecord::Migration
  def change
    add_attachment :athletes, :avatar
  end
end
