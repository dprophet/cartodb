Sequel.migration do
  change do
    alter_table :organizations do
      set_column_default :geocoding_block_price, 0
      set_column_default :geocoding_quota, 2000000000
    end
  end
  down do
    alter_table :organizations do
      set_column_default :geocoding_block_price, nil
      set_column_default :geocoding_quota, nil
    end
  end
end
