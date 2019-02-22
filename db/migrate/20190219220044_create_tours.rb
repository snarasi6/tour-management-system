class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.integer :photo
      t.date :deadline
      t.integer :price
      t.date :duration_from
      t.date :duration_to
      t.string :start_loc
      t.integer :itenerary_id
      t.string :contact
      t.string :bookmark_user_id
      t.integer :total_seats
      t.integer :available_seats
      t.string :status

      t.timestamps
    end
  end
end
