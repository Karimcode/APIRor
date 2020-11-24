class AddUserIdToArticles < ActiveRecord::Migration[6.0]
  def change
    change_table :articles do |t|
    t.remove :name
    t.belongs_to :user, index: true
    end
  end
end
