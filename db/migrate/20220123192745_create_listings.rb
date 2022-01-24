class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.references :host, null: false, foreign_key: { to_table: :users }
      t.string :title
      t.text :about
      t.integer :max_guests, default: 1
      t.string :address_line1
      t.string :address_line2
      t.string :town
      t.string :county
      t.string :postcode
      t.string :country
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lng, precision: 10, scale: 6
      t.integer :status, default: 0 # draft = 0, published = 1 , etc

      t.timestamps
    end
  end
end
