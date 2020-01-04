class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string 'name'
      t.string 'rating'
      t.text 'description'
    end
  end
end
