class RemoveEmbedFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :embed1, :string
    remove_column :articles, :embed2, :string
    remove_column :articles, :embed3, :string
    remove_column :articles, :embed4, :string        
  end
end
