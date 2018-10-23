class AddPremiumStatusToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :premium_status, :integer
  end
end
