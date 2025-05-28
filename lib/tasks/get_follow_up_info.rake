desc "Get the total months of follow up"
task :get_follow_up_info => :environment do
	Patient.where(clean_3: true).find_in_batches(batch_size: 10000) do |b|
		b.each do |p|
			p.set_total_months
		end
	end
end