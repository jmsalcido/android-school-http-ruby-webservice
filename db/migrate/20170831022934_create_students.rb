class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.text :school
      t.text :twitter_handle
      t.text :email

      t.timestamps
    end
  end
end
