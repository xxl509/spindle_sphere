desc "update last age of adhd exposure"
task :update_last_adhd => :environment do
	Patient.adhd.find_in_batches(batch_size: 1000).each do |g|
		g.each do |p|
			record = Record.adhd.where(enrolid: p.patient_id).order('yrmon desc').first
			p.last_adhd_age = record.visit_age
			p.save
		end
	end
end