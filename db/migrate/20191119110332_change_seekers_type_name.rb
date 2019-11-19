class ChangeSeekersTypeName < ActiveRecord::Migration[6.0]
  def change
    rename_column :seekers, :type, :work_type
  end
end
