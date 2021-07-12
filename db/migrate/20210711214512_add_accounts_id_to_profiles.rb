class AddAccountsIdToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_reference :profiles, :account, foreign_key: true
  end
end
