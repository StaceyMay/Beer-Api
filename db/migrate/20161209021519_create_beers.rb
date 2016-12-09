class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|

      t.string :name
      t.string :alcohol_content
      t.string :style
      t.string :malt
      t.string :hop

      t.timestamps
    end
  end
end
