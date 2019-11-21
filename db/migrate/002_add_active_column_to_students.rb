class AddActiveColumnToStudents < ActiveRecord::Migration
  # add new active column to the students table 
  # active column will be a boolean with default as false
  # what does it mean to have default: false?
  add_column :students, :active, :boolean, default: false
end