class CreateMyinteriors < ActiveRecord::Migration[6.0]
  def change
    create_table :myinteriors do |t|
      t.string :title,  null: false
      t.text :concept,  null: false
      t.integer :category_id,   null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
