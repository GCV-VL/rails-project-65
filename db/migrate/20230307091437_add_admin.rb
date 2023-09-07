# frozen_string_literal: true

class AddAdmin < ActiveRecord::Migration[7.0]
  def change
    user = User.find_or_initialize_by(email: 'GCV-VL@gmail.com')
    user.update(name: 'Developer', admin: true)
  end
end
