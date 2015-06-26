class CreateStudentRegistrations < ActiveRecord::Migration
  def change
    create_table :student_registrations do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :email
      t.string :cell
      t.string :group
      t.string :education
      t.text :subject

      t.timestamps null: false
    end
  end
end
