desc "Calculate medication lag"
task :cal_med => :environment do

	############################################################
	#	For patients: with ADHD medication
	#	Calculate: lag time from adhd dx to first adhd med
	# Output: calculation time of each group in 1000
	############################################################
	if false
		Patient.five_year.adhd.find_in_batches(batch_size: 1000).each_with_index do |g, index|
			s = Time.now
			puts index
			g.each do |p|
				adhd_m = p.first_adhd
				med_m = p.first_med
				med_lag = get_clean_months(med_m, adhd_m)
				p.med_lag = med_lag
				p.save
			end
			puts "#{Time.now - s} seconds"
		end
	end

	############################################################
	# Observation Period Sensitive
	#	Calculate: medicated months for different types of adhd medications
	# Output: calculation time of each group in 1000
	############################################################

	# five_year
	Patient.five_year.find_in_batches(batch_size: 1000).each_with_index do |g, index|
		s = Time.now
		puts index
		g.each do |p|
			med_months = p.records.adhd.no_later_than(p.after_five_year).size
			a_months = p.records.amphetamines.no_later_than(p.after_five_year).size
			m_months = p.records.methylphenidate.no_later_than(p.after_five_year).size
			b_months = p.records.amphetamines.methylphenidate.no_later_than(p.after_five_year).size
			o_months = p.records.other_drug.no_later_than(p.after_five_year).size
			p.med_months = med_months
			p.a_months = a_months
			p.m_months = m_months
			p.o_months = o_months
			p.save
		end
		puts "#{Time.now - s} seconds"
	end
	############################################################
	# Calculate primary medication
	#
	#
	############################################################
	Patient.five_year.where("med_age is not null").find_in_batches(batch_size: 1000).each_with_index do |g, index|
		s = Time.now
		puts index
		g.each do |p|
			records = p.records.adhd.no_later_than(p.after_five_year).order('yrmon asc').limit(2)
			if records.present?
				r1 = records.first
				r2 = records.last if records.size == 2
				a = false
				m = false
				o = false
				a2 = false
				m2 = false
				o2 = false

				if r1.tcgpi_id_61100010==1 or r1.tcgpi_id_61100020==1 or r1.tcgpi_id_61100025==1 or r1.tcgpi_id_61100030==1 or r1.tcgpi_id_61109902==1
					a = true
				end

				if r1.tcgpi_id_61400016==1 or r1.tcgpi_id_61400020==1
					m = true
				end
				if r1.tcgpi_id_61353020 ==1 or r1.tcgpi_id_61353030 ==1 or r1.tcgpi_id_61354015 ==1 or r1.tcgpi_id_61400010 ==1 or r1.tcgpi_id_61400024 == 1
					o = true
				end

				if a and !m and !o
					p.initial_med = 1
				elsif m and !a and !o
					p.initial_med = 2
				elsif o and !a and !m
					p.initial_med = 3
				else
					if r2.present?
						if r2.tcgpi_id_61100010==1 or r2.tcgpi_id_61100020==1 or r2.tcgpi_id_61100025==1 or r2.tcgpi_id_61100030==1 or r2.tcgpi_id_61109902==1
							a2 = true
						end

						if r2.tcgpi_id_61400016==1 or r2.tcgpi_id_61400020==1
							m2 = true
						end
						if r2.tcgpi_id_61353020 ==1 or r2.tcgpi_id_61353030 ==1 or r2.tcgpi_id_61354015 ==1 or r2.tcgpi_id_61400010 ==1 or r2.tcgpi_id_61400024 == 1
							o2 = true
						end

						if a2 and !m2 and !o2
							p.initial_med = 1
						elsif m2 and !a2 and !o2
							p.initial_med = 2
						elsif o2 and !a2 and !m2
							p.initial_med = 3
						end
					end
				end
			end

			p.save
		end
		puts "#{Time.now - s} seconds"
	end

	Patient.five_year.where("med_age is not null").find_in_batches(batch_size: 1000).each_with_index do |g, index|
		s = Time.now
		puts index
		g.each do |p|
			months = {"1" => p.a_months.to_i, "2" => p.m_months.to_i, "3" => p.o_months.to_i}
			max = months.values.max
			max_key = months.key(max)
			if (max.to_f / p.med_months) > 0.5
				p.primary_med = max_key.to_i
				p.save
			end
		end
		puts "#{Time.now - s} seconds"
	end

	Patient.five_year.where("med_age is not null").find_in_batches(batch_size: 1000).each_with_index do |g, index|
		s = Time.now
		puts index
		g.each do |p|
			m1 = p.first_med
			r = p.records.non_adhd.no_later_than(p.after_five_year).where("yrmon > ?", m1).order('yrmon asc').limit(1)
			if r.present?
				m2 = r.first.yrmon
				months = get_clean_months(m2, m1)
				p.first_med_break = months
				p.save
			end
		end
		puts "#{Time.now - s} seconds"
	end

	Patient.five_year.where("med_age is not null").find_in_batches(batch_size: 1000).each_with_index do |g, index|
		s = Time.now
		puts index
		g.each do |p|
			m1 = p.first_med
			r1 = p.records.adhd.no_later_than(p.after_five_year).order('yrmon asc').limit(1).first
			r2 = p.records.adhd.no_later_than(p.after_five_year).order('yrmon asc').select{|r| r.different(r1)}.first
			if r2.present?
				m2 = r2.yrmon
				months = get_clean_months(m2, m1)
				p.first_med_switch = months
				p.save
			end
		end
		puts "#{Time.now - s} seconds"
	end


	Patient.five_year.find_in_batches(batch_size: 1000).each_with_index do |g, index|
		s = Time.now
		g.each do |p|
			p.update_breaks_alternations
			p.update_sud
		end
		puts "#{Time.now - s} seconds"
	end



	############################################################
	#	For patients: with ADHD medication
	#	Calculate: 1 year 3 year and 5 year medication length
	# Output: calculation time of each group in 1000
	############################################################

	# Patient.where("first_med is not null").find_in_batches(batch_size: 1000).each_with_index do |g, index|
	# 	s = Time.now
	# 	g.each do |p|
	# 		m1 = p.first_med
	# 		r = p.records.order('yrmon desc').limit(1).first
	# 		m2 = r.yrmon
	# 		months = get_clean_months(m2, m1)
	# 		if months >= 59
	# 			p.five_year = 1
	# 		end

	# 		if months >= 35
	# 			p.five_year = 1
	# 		end

	# 		if months >= 11
	# 			p.five_year = 1
	# 		end

	# 		p.save

	# 	end
	# 	puts "#{Time.now - s} seconds"
	# end
	

end

# s1 and s2 are in format 'yyyymm'
def gap(s1, s2)
	y1 = s1[0..3]
	m1 = s1[4..5]
	y2 = s2[0..3]
	m2 = s2[4..5]
	
	result = (y2.to_i - y1.to_i)*12 + m2.to_i - m1.to_i
	result
end