class AddColumnToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :active, :boolean
  end
end
