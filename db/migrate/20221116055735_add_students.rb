class AddStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.timestamps
    end
    create_table :courses do |t|
      t.string :title
      t.timestamps
    end
    create_table :enrollments do |t|
      t.references :student
      t.references :course
      t.string :status
      t.timestamps
    end
    create_table :grades do |t|
      t.references :enrollment
      t.integer :score
      t.timestamps
    end
  end
end
