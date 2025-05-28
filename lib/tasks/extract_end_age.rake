desc "Extract end age"
task :extract_end_age => :environment do
	Patient.where(clean_3: true).find_in_batches(batch_size: 10000).each_with_index do |g, index|
		puts index
		t = Time.now

		g.each do |p|
			# demo info
			# r = Record.where(enrolid: p.patient_id).limit(1).first
			# p.sex = r.sex
			# p.dobyr = r.dobyr 
			# p.region = r.region

			# # enroll age
			r1 = Record.where(enrolid: p.patient_id).order('yrmon desc').limit(1)
			p.end_age = r1.first.age if r1.present?
			p.save
		end
	end
end