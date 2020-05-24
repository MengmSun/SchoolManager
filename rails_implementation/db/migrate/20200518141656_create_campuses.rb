class CreateCampuses < ActiveRecord::Migration[6.0]
  def change
    create_table :campuses do |t|
      t.string :code
      t.string :name
      t.string :address

      t.timestamps
    end
    add_index :campuses, :code, unique: true
  end
end
