class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.integer :code, null: false
    end

    add_column :users, :country_id, :integer, null: false
  end
end
