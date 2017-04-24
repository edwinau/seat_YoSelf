class ChangeColumnUrltoPhoto < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :url, :url_for_photo
  end
end
