class AddStrengthtoDictionaries < ActiveRecord::Migration[6.0]
  def change
  	 add_column :dictionaries, :strength, :string
  end
end
