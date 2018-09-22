class ChangesColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :tests, :level, to: 1
  end
end
