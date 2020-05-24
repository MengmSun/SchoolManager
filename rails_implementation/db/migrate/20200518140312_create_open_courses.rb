class CreateOpenCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :open_courses do |t|
      t.references :course, null: false, foreign_key: true
      t.references :teacher, null: true, foreign_key: {to_table: :people}
      t.string :term
      t.string :schedule

      t.timestamps
    end
  end
end
