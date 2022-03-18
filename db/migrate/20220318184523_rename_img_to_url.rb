class RenameImgToUrl < ActiveRecord::Migration[7.0]
  def change
    rename_column :images, :img_url, :url
  end
end
