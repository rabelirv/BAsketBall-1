class AddAvatarToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar, :string, :default => "https://usathss.files.wordpress.com/2017/04/thumb_14_0008-e1404743080378-pagespeed-ce-dkthb9hnuq.jpg?w=1000&h=600&crop=1"
  end
end
