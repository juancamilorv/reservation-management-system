class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.timestamp :date
      t.integer :number_of_seats
      t.string :client_name
      t.text :note
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
