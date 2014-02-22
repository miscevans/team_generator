class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :student_id
      t.integer :is_leader

      t.timestamps
    end
  end
end
