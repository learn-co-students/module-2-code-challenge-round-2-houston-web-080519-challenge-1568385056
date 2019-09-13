class CreateAppearance < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :guest_id
      t.integer :rating
      t.integer :episode_id
    end
  end
end
