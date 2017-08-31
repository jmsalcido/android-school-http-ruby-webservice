class CreateMentors < ActiveRecord::Migration[5.1]
  def change
    create_table :mentors do |t|
      t.string :name
      t.text :position
      t.text :email
      t.text :location

      t.timestamps
    end
  end
end
