class AddAdminUser < ActiveRecord::Migration[7.0]
  def change
    user = User.find_or_initialize_by(email: 'kimvova85@mail.ru', admin: true)
  end
end
