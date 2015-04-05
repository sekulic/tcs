class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text1
      t.text :text2
      t.text :text3
      t.text :text4
      t.text :embed1
      t.text :embed2
      t.text :embed3
      t.text :embed4
      t.string :p1desescription
      t.string :p2description
      t.string :p3description
      t.string :p4description

      t.timestamps
    end
  end
end
