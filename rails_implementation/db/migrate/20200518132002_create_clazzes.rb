class CreateClazzes < ActiveRecord::Migration[6.0]
  def change
    create_table :clazzes do |t|
      t.string :code
      t.string :name
      t.references :teacher, null: true, foreign_key: {to_table: :people}
      t.integer :grade
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
    add_index :clazzes, :code, unique: true
  end
end
