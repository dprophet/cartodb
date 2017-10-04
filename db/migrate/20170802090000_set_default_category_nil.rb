Sequel.migration do
  up do
    alter_table :visualizations do
      set_column_default :category, nil
    end
  end
  down do
    alter_table :visualizations do
      set_column_default :category, -1
    end
  end
end
