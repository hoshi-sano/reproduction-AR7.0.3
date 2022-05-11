class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles, id: :string, limit: 36
  end
end
