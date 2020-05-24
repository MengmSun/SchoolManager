class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.references :department, null: false, foreign_key: true
      t.string :assessment_type

      t.timestamps
    end
    add_index :courses, :code, unique: true
  end
end
