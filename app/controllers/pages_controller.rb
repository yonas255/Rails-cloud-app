class PagesController < ApplicationController
  def home
  end

  def run_migrations
    ActiveRecord::MigrationContext.new("db/migrate", ActiveRecord::SchemaMigration).migrate
    ren der plain: "Migration completed successfully!"
  end
end
