class AddRemoteToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :remote, :string
  end

  def change
    change_column :meetings, :remote, :boolean, default: false
  end
end
