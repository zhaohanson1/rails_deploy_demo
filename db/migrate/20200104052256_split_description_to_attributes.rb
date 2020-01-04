class SplitDescriptionToAttributes < ActiveRecord::Migration
  def up
    add_column :champions, :corigin, :string
    add_column :champions, :cclass, :string
    Champion.reset_column_information
    Champion.find_each do |c|
      new_corigin, new_cclass = c.description.split
      c.update_attributes(
        :corigin => new_corigin,
        :cclass => new_cclass
        )
      c.save!
    end
  end
  
  def down
    remove_column :champions, :corigin, :string
    remove_column :champions, :cclass, :string
  end
end
