class CreateStatusChanges < ActiveRecord::Migration[6.0]
  def change
    create_table :status_changes do |t|
      t.string :code
      t.string :type
      t.date :happened_at
      t.string :new_clazz_code
      t.string :original_clazz_code
      t.references :student, null: false, foreign_key: {to_table: :people}

      # for department change
      t.string :youth_league_status
      # for grade change
      t.text :reason

      t.timestamps
    end
    add_index :status_changes, :code, unique: true
  end
end
