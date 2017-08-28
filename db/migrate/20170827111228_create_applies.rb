class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.string :name
      t.string :kakaoid
      t.integer :age
      t.string :school
      t.string :locale
      t.boolean :group, default: false
      t.belongs_to :user, index: true, foreign_key: true 
      t.timestamps null: false
    end
  end
end
