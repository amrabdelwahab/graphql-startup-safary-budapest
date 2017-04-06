class CreateProductImages < ActiveRecord::Migration[5.0]
  def change
    create_table :product_images do |t|
      t.string :name
      t.string :url
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
