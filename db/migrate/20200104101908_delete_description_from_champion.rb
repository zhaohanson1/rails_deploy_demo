class DeleteDescriptionFromChampion < ActiveRecord::Migration
  def change
    remove_column :champions, :description, :string
  end
end
