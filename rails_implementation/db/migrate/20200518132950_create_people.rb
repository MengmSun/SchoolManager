class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :id_number
      t.string :id_type
      t.string :name
      t.string :gender
      t.date :birthday
      t.string :nationality
      t.string :home_address
      t.string :home_postcode
      t.string :phone_number
      t.string :email
      t.string :type

      # for student
      t.string :student_id
      t.references :clazz, null: true, foreign_key: true
      # for teacher
      t.string :work_id
      t.string :title
      t.references :department, null: true, foreign_key: true

      t.timestamps
    end
    add_index :people, :id_number, unique: true
    add_index :people, :student_id, unique: true
    add_index :people, :work_id, unique: true
  end
end
