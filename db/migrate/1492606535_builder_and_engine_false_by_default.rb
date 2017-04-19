require 'carto/db/migration_helper'

include Carto::Db::MigrationHelper

migration(
  Proc.new do
    set_column_default :organizations, :builder_enabled, false
    set_column_default :users, :builder_enabled, false
    set_column_default :organizations, :engine_enabled, false
    set_column_default :users, :engine_enabled, false
  end,
  Proc.new do
    set_column_default :organizations, :builder_enabled, true
    set_column_default :users, :builder_enabled, true
    set_column_default :organizations, :engine_enabled, true
    set_column_default :users, :engine_enabled, true
  end
)

