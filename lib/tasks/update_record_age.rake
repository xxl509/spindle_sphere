desc "update age at visit"
task :update_record_age => :environment do
	batch_index = 1
	Record.find_in_batches(batch_size: 1000) do |b|
		puts batch_index
		batch_index += 1
		b.each do |r|
			r.age = r.visit_age
			r.save
		end
	end
end