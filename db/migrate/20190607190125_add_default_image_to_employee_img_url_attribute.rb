class AddDefaultImageToEmployeeImgUrlAttribute < ActiveRecord::Migration[5.1]
  def down
    change_column :employees, :img_url, :string, default: "https://upload.wikimedia.org/wikipedia/en/8/84/Andy_Bernard_photoshot.jpg"
  end
end
