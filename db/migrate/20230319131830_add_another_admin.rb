# frozen_string_literal: true

class AddAnotherAdmin < ActiveRecord::Migration[7.0]
  def change
    user = User.find_or_initialize_by(email: 'vasiliqa13@gmail.com')
    user.update(name: 'Vasilisa', admin: true)
  end
end
