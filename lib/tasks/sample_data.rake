namespace :db do
	desc "Fill database with sample data"

	task populate: :environment do

		30.times do |n|
			File.open("/Users/user/Desktop/EnglishWords/eng"+"#{n+1}.json","r") do |file|
               while line  = file.gets
               		lines = JSON.parse line.gsub('\\n','')
               		lines.each do |l|
               			Word.create!(chinese: l[:chinese],eng: l[:eng])
               		end
               end
             end

		end
	end
end
