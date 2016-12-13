class CreateDrinkers < ActiveRecord::Migration[5.0]
  def change
    create_table :drinkers do |t|

        t.string :name
        t.string :address
        t.string :address_2
        t.string :email
        t.integer :beer_id

      t.timestamps
    end
  end
end
