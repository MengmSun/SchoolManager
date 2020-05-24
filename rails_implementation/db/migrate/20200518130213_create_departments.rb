class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string :code
      t.string :name
      t.string :address
      t.references :teacher, null: true, foreign_key: {to_table: :people}
      t.references :campus, null: false, foreign_key: true

      t.timestamps
    end
    add_index :departments, :code, unique: true
  end
end
