class AddBodyToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :body, :text, null: false
  end
end
