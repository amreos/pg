require 'csv'
namespace :import do
   task users: :environment do
       filename = File.join Rails.root, "users.csv"
       CSV.foreach(filename) do |row|
       machine = Machine.assign_row(row)
       end
   end
end