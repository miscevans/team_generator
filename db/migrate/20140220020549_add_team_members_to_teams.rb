class AddTeamMembersToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :team_members, :string
  end
end
