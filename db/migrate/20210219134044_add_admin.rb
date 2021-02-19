class AddAdmin < ActiveRecord::Migration[6.1]
  def change
    Buser.create! do |u|
      u.email     = 'admin@blog.com'
      u.password  = 'password'
      u.admin= true
  end
  end
end
