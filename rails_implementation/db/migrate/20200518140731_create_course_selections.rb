class CreateCourseSelections < ActiveRecord::Migration[6.0]
  def change
    create_table :course_selections do |t|
      t.references :open_course, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: {to_table: :people}
      t.string :score
      t.string :term

      t.timestamps
    end
  end
end
