class AddCompletionToBusiness < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :completion, :integer, :default => 0
  end
end
