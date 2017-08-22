require 'csv'
class Error < ActiveRecord::Base
  belongs_to :machine
  
    def self.assign_row(row)
            a, b, c, d = row
           @c = c.slice(1,4)
           Error.create(line: c, min: @c)
          end
    
    def self.import(file)
         CSV.foreach(file.path) do |row|
          machine = Error.assign_row(row)
           end
end
end