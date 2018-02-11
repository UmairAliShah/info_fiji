class AddCompletionToResidential < ActiveRecord::Migration[5.1]
  def change
    add_column :residentials, :completion, :integer, :default => 0
  end
end
