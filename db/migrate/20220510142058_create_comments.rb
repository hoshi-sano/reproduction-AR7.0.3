class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments, id: :string, limit: 36
  end
end
