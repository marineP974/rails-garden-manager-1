class UpdateColumnsDoses < ActiveRecord::Migration[6.0]
  def change
    remove_column :doses, :dose_id
    add_reference :doses, :ingredient, foreign_key: true
  end
end
