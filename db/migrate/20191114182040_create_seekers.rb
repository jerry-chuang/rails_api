class CreateSeekers < ActiveRecord::Migration[6.0]
  def change
    create_table :seekers do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :image
      t.string :type
      t.string :price_range
      t.string :address
      t.timestamps
    end
  end
end
