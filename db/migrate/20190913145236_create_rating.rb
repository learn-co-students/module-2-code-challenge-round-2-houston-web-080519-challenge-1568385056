class CreateRating < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :rating_number
      t.integer :guest_id
      t.integer :episode_id
    end
  end
end
