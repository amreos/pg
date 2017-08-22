require 'csv'
class Machine < ActiveRecord::Base
 validates_uniqueness_of  :mid
    def self.assign_row(row)
            a, b, c, d = row
           @c = c.slice(1,4)
           Machine.create(name: c, mid: @c)
          end
    
    def self.import(file)
         CSV.foreach(file.path) do |row|
          machine = Machine.assign_row(row)
           end
end
end
