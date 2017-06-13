Sequel.migration do
    change do
        add_column :parserlocks, :health_check_url, String, :null=>true
    end
end
