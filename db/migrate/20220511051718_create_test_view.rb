class CreateTestView < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        execute <<-SQL
          CREATE VIEW test_views AS
            SELECT
              a.id
            FROM
              articles a
          UNION
            SELECT
              c.id
            FROM
              comments c;
        SQL
      end

      dir.down do
        execute <<-SQL
          DROP VIEW IF EXISTS test_views;
        SQL
      end
    end
  end
end
