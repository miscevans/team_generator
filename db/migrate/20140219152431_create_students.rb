class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :github_username
      t.integer :is_leader
      t.integer :team_id

      t.timestamps
    end
  end
end
