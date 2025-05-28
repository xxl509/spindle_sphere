desc "Update the initialization status to indicate it is true or not"
task :update_initial_status => :environment do
	batch_index = 1
	Patient.find_in_batches(batch_size:10000) do |b|
		puts batch_index
		batch_index += 1
		b.each do |p|
			pid = p.patient_id
			r1 = Record.where(enrolid: pid).sort_by{|a| a.yrmon}.first
			r2 = Record.adhd.where(enrolid: pid).sort_by{|a| a.yrmon}.first
			if r1.present? and r2.present?
				if get_months(r1,r2) >= 3
					p.initial_status = true
					p.save
				end
			end

		end
	end
end

# def get_months(r1, r2)
# 	r1_year = r1.yrmon[0..3].to_i
# 	r1_month = r1.yrmon[4..5].to_i

# 	r2_year = r2.yrmon[0..3].to_i
# 	r2_month = r2.yrmon[4..5].to_i

# 	result = r2_year*12+r2_month - r1_year*12 - r1_month
# 	result
# end