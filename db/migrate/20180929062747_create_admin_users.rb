class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users do |t|
      
        t.string "name"
        t.string "email", default: ""
        t.string "password_digest", default: ""
        t.string "admin_token"
        t.string "profile_pic", default: ""  
        t.datetime "deleted_at"

      t.timestamps
    end
  end
end
