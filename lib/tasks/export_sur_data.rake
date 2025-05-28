desc "Export data for survival analysis from age 12 to 19"
task :export_sur_data => :environment do
	require 'csv'
	CSV.open("#{Rails.root}/lib/assets/sur_data.csv", "wb") do |csv_object|

		# exposure age group
		# 1 => [12,13]
		# 2 => [14,15]
		# 3 => [16,17]
		# 4 => [18,19]

		exposure_age_group = {6=>0,7=>0,8=>0,9=>0,10=>0,11=>0,12=>1,13=>1,14=>2,15=>2,16=>3,17=>3}
		# exposure drug group (70%)
		# 1 => amphetamines
		# 2 => methylphenidate
		# 3 => other
		csv_object << ["ID", "event", "date", "exposure_age_group"]
		Patient.where('survival_date > 0 and _age in (?)', (6..17).to_a).find_in_batches(batch_size: 1000).each do |g|
			g.each do |p|
				row = [p.patient_id]
				if p.ccs_661 > 0
					row << 1
				else
					row << 0
				end
				row << p.survival_date
				if p.exposure_age.present?
					row << exposure_age_group[p.exposure_age]
				else
					puts "no exposure age"
				end
				
				csv_object << row
			end
		end
	end

	# CSV.open("#{Rails.root}/lib/assets/sur_data_a.csv", "wb") do |csv_object|
	# 	exposure_age_group = {6=>0,7=>0,8=>0,9=>0,10=>0,11=>0,12=>1,13=>1,14=>2,15=>2,16=>3,17=>3,18=>4,19=>4}
	# 	csv_object << ["ID", "event", "date", "exposure_age_group"]
	# 	Patient.where('survival_date > 0 and exposure_age in (?)', (6..19).to_a).find_in_batches(batch_size: 1000).each do |g|
	# 		g.each do |p|
	# 			if p.a_percentage >= 70
	# 				row = [p.patient_id]
	# 				if p.ccs_661 > 0
	# 					row << 1
	# 				else
	# 					row << 0
	# 				end
	# 				row << p.survival_date
	# 				if p.exposure_age.present?
	# 					row << exposure_age_group[p.exposure_age]
	# 				else
	# 					puts "no exposure age"
	# 				end
	# 				csv_object << row
	# 			end
	# 		end
	# 	end
	# end

	# CSV.open("#{Rails.root}/lib/assets/sur_data_m.csv", "wb") do |csv_object|

	# 	exposure_age_group = {12=>1,13=>1,14=>2,15=>2,16=>3,17=>3,18=>4,19=>4}
	# 	csv_object << ["ID", "event", "date", "exposure_age_group"]
	# 	Patient.where('survival_date > 0 and exposure_age in (?)', (12..19).to_a).find_in_batches(batch_size: 1000).each do |g|
	# 		g.each do |p|
	# 			if p.m_percentage >= 70
	# 				row = [p.patient_id]
	# 				if p.ccs_661 > 0
	# 					row << 1
	# 				else
	# 					row << 0
	# 				end
	# 				row << p.survival_date
	# 				if p.exposure_age.present?
	# 					row << exposure_age_group[p.exposure_age]
	# 				else
	# 					puts "no exposure age"
	# 				end
						
	# 				csv_object << row
	# 			end
	# 		end
	# 	end
	# end

	# [50,60,70,80,90].each do |percentage|
	if true
	[70].each do |percentage|
		CSV.open("#{Rails.root}/lib/assets/sur_data_both_#{percentage}.csv", "wb") do |csv_object|
			exposure_age_group = {'6a'=>0,'7a'=>0,'8a'=>0,'9a'=>0,'10a'=>0,'11a'=>0,'12a'=>1,'13a'=>1,'14a'=>2,'15a'=>2,'16a'=>3,'17a'=>3,
														'6m'=>5,'7m'=>5,'8m'=>5,'9m'=>5,'10m'=>5,'11m'=>5,'12m'=>6,'13m'=>6,'14m'=>7,'15m'=>7,'16m'=>8,'17m'=>8}
			# exposure drug group (70%)
			# 1 => amphetamines
			# 2 => methylphenidate
			# 3 => other
			csv_object << ["ID", "event", "date", "exposure_age_group"]
			Patient.initial.where('survival_date > 0 and exposure_age in (?)', (6..17).to_a).find_in_batches(batch_size: 1000).each do |g|
				g.each do |p|
					if p.m_percentage >= percentage
						row = [p.patient_id]
						if p.ccs_661 > 0
							row << 1
						else
							row << 0
						end
						row << p.survival_date
						if p.exposure_age.present?
							row << exposure_age_group["#{p.exposure_age}m"]
						else
							puts "no exposure age"
						end
							
						csv_object << row
					elsif p.a_percentage >=percentage
						row = [p.patient_id]
						if p.ccs_661 > 0
							row << 1
						else
							row << 0
						end
						row << p.survival_date
						if p.exposure_age.present?
							row << exposure_age_group["#{p.exposure_age}a"]
						else
							puts "no exposure age"
						end
							
						csv_object << row
					end
				end
			end
		end
	end
end
	# Gender
if true
	CSV.open("#{Rails.root}/lib/assets/sur_data_both_gender.csv", "wb") do |csv_object|
		exposure_age_group = {'6a'=>0,'7a'=>0,'8a'=>0,'9a'=>0,'10a'=>0,'11a'=>0,'12a'=>1,'13a'=>1,'14a'=>2,'15a'=>2,'16a'=>3,'17a'=>3,
													'6m'=>5,'7m'=>5,'8m'=>5,'9m'=>5,'10m'=>5,'11m'=>5,'12m'=>6,'13m'=>6,'14m'=>7,'15m'=>7,'16m'=>8,'17m'=>8,}
		# exposure drug group (70%)
		# 1 => amphetamines
		# 2 => methylphenidate
		# 3 => other
		csv_object << ["ID", "event", "date", "exposure_age_group"]
		Patient.initial.where('survival_date > 0 and exposure_age in (?)', (6..17).to_a).find_in_batches(batch_size: 1000).each do |g|
			g.each do |p|
				if p.sex == 'M'
					row = [p.patient_id]
					if p.ccs_661 > 0
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					if p.exposure_age.present?
						row << exposure_age_group["#{p.exposure_age}m"]
					else
						puts "no exposure age"
					end
						
					csv_object << row
				elsif p.sex == 'F'
					row = [p.patient_id]
					if p.ccs_661 > 0
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					if p.exposure_age.present?
						row << exposure_age_group["#{p.exposure_age}a"]
					else
						puts "no exposure age"
					end
						
					csv_object << row
				end
			end
		end
	end
end
end