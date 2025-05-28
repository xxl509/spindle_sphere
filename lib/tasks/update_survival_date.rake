task :update_survival_date => :environment do
	# sud patients
	Patient.adhd.sud.find_in_batches(batch_size: 1000).each do |g|
		g.each do |p|
			# first adhd month
			record_1 = Record.adhd.where(enrolid: p.patient_id).order('yrmon asc').limit(1).first
			# first sud month
			record_2 = Record.sud.where(enrolid: p.patient_id).order('yrmon asc').limit(1).first
			# duration = # of months from record 1 to record 2
	
			duration = get_months(record_1, record_2)
			p.survival_date = duration
			p.save
		end
	end

	# non-sud patients
	Patient.adhd.where("sud is null and survival_date is null").find_in_batches(batch_size: 1000).each do |g|
		g.each do |p|
			# first adhd month
			record_1 = Record.where(enrolid: p.patient_id).order('yrmon asc').limit(1).first
			# first sud month
			record_2 = Record.where(enrolid: p.patient_id).order('yrmon desc').limit(1).last
			# duration = # of months from record 1 to record 2
			duration = get_months(record_1, record_2)
			p.survival_date = duration
			p.save
		end
	end

	
	# no adhd med, but sud
	Patient.non_adhd_med.sud.where("survival_date is null").find_in_batches(batch_size: 1000).each do |g|
		g.each do |p|
			# first enroll month
			record_1 = Record.where(enrolid: p.patient_id).order('yrmon asc').limit(1).first
			# first sud month
			record_2 = Record.sud.where(enrolid: p.patient_id).order('yrmon asc').limit(1).first
			# duration = # of months from record 1 to record 2
	
			duration = get_months(record_1, record_2)
			p.survival_date = duration
			p.save
		end
	end

	# no adhd and non-sud
	Patient.non_adhd_med.where("sud is null and survival_date is null").find_in_batches(batch_size: 1000).each do |g|
		g.each do |p|
			# first enroll month
			record_1 = Record.where(enrolid: p.patient_id).order('yrmon asc').limit(1).first
			# last enroll month
			record_2 = Record.where(enrolid: p.patient_id).order('yrmon desc').limit(1).last
			# duration = # of months from record 1 to record 2
			duration = get_months(record_1, record_2)
			p.survival_date = duration
			p.save
		end
	end


end

# def get_months(r1, r2)
# 	r1_year = r1.yrmon[0..3].to_i
# 	r1_month = r1.yrmon[4..5].to_i

# 	r2_year = r2.yrmon[0..3].to_i
# 	r2_month = r2.yrmon[4..5].to_i

# 	result = r2_year*12+r2_month - r1_year*12 - r1_month + 1
# 	result
# end