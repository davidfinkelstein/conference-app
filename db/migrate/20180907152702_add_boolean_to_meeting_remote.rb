class AddBooleanToMeetingRemote < ActiveRecord::Migration[5.2]
  def change
    change_column :meetings, :remote, :boolean, default: false
  end
end
