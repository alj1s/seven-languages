module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    include Enumerable

    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    def each
      @csv_contents.each do |row|
        yield CsvRow.new(row, headers)
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

  end
end

class CsvRow

  attr_accessor :row, :headers

  def initialize(row, headers)
    @row = row
    @headers = headers
  end

  def method_missing name, *args
    row[headers.index(name.to_s)]
  end

end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
#puts m.headers.inspect
#puts m.csv_contents.inspe

m.each { |row| puts row.two }
