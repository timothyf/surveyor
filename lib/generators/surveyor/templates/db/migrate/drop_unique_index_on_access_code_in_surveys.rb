# encoding: UTF-8
class DropUniqueIndexOnAccessCodeInSurveys < ActiveRecord::Migration[6.0]
  def self.up
    remove_index( :surveys, :name => 'surveys_ac_idx' )
  end

  def self.down
    add_index(:surveys, :access_code, :name => 'surveys_ac_idx')
  end
end
