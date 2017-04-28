class ChangeIdInspectorInChecksToInspector < ActiveRecord::Migration[5.0]
  def change
  	rename_column :checks, :inspector_id, :inspector
  end
end
