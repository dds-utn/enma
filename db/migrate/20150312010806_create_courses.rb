class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :description
      t.string :teacher
      t.string :code_id
    end
    add_belongs_to :users, :course
  end
end
