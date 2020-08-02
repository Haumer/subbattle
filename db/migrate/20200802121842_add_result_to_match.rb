class AddResultToMatch < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :result, :integer, array: true, default: [0, 0]
  end
end
