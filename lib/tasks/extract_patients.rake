desc "Extract patient information"
task :extract_patients => :environment do
	Patient.all.find_in_batches(batch_size: 10000).each_with_index do |g, index|
		puts index
		t = Time.now

		g.each do |p|
			# demo info
			# r = Record.where(enrolid: p.patient_id).limit(1).first
			# p.sex = r.sex
			# p.dobyr = r.dobyr 
			# p.region = r.region

			# # enroll age
			r1 = Record.where(enrolid: p.patient_id).order('yrmon asc').limit(1)
			p.enroll_age = r1.first.age if r1.present?
			# p.first_enroll = r1.first.yrmon if r1.present?
			# r2 = Record.adhd.where(enrolid: p.patient_id).order('yrmon asc').limit(1)
			# p.med_age = r2.age
			# p.first_med = r2.first.yrmon if r2.present?
			# r3 = Record.where(ccs_652: 1, enrolid: p.patient_id).order('yrmon asc').limit(1)
			# if r3.present?
			# 	p.adhd = 1
			# 	p.first_adhd = r3.first.yrmon 
			# end
			# r4 = Record.where(ccs_661: 1, enrolid: p.patient_id).order('yrmon asc').limit(1)
		 #  if r4.present?
		 #  	p.sud = 1
			# 	p.first_sud = r4.first.yrmon
			# end
			p.save

		end
		puts "#{Time.now - t} seconds"
		t  = Time.now
	end
end