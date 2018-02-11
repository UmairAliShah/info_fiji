class AddCompletionToProfessional < ActiveRecord::Migration[5.1]
  def change
    add_column :professionals, :completion, :integer, :default => 0
  end
end
