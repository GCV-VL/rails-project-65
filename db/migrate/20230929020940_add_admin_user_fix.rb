class AddAdminUserFix < ActiveRecord::Migration[7.0]
  def change
    user = User.find_or_initialize_by(email: 'kimvova85@mail.ru')
    user.update(name: 'Developer', admin: true)
  end
end
