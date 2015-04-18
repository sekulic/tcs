class AddSliderToArticle < ActiveRecord::Migration
      def self.up
        add_column :articles, :slider, :boolean, :default => false
      end

      def self.down
        remove_column :articles, :slider
      end

end
