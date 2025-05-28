desc "Add primary med to patient table"
task :primary_med => :environment do
	Patient.find_in_batches(batch_size: 1000).each do |group|
		puts "=="
		group.each do |p|
			p.drug_a_percentage = p.a_percentage
			p.drug_m_percentage = p.m_percentage
			p.save
		end
	end
end