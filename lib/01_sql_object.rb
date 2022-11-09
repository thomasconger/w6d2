require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    @columns ||= DBConnection.execute2(<<-SQL)
      SELECT *
      FROM #{self.table_name}
    SQL
    @columns = @columns[0]
    @columns
  end

  def self.finalize!
  end

  def self.table_name=(table_name)
    # ...
  end

  def self.table_name

    xyz = "#{self}"

    output = ""

    xyz.each_char.with_index do |ltr, idx|
      if ltr == ltr.upcase && idx == 0
        output << ltr.downcase
      elsif ltr == ltr.upcase
        output << ltr.downcase
        output << "_"
      else
        output << ltr
      end
    end

    output << "s"
    return output



  end

  def self.all
    # ...
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    # ...
  end

  def attributes
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
