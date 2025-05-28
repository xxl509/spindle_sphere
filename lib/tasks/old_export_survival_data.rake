desc "Export data for survival analysis"
require 'csv'
task :old_export_sur_data => :environment do
	puts "here"
	# CSV.open("#{Rails.root}/lib/assets/sur_data.csv", "wb") do |csv_object|
	# 	puts "here"
	# 	# exposure age group
	# 	# 1 => [6,7]
	# 	# 2 => [8,9]
	# 	# 3 => [10,11]
	# 	# 4 => [12,13]
	# 	# 5 => [14,15]
	# 	# 6 => [16,17]
	# 	# 7 => [18,19]
	# 	exposure_age_group = {6=>1,7=>1,8=>2,9=>2,10=>3,11=>3,12=>4,13=>4,14=>5,15=>5,16=>6,17=>6,18=>7,19=>7}
	# 	# exposure drug group (70%)
	# 	# 1 => amphetamines
	# 	# 2 => methylphenidate
	# 	# 3 => other
	# 	csv_object << ["ID", "event", "date", "exposure_age_group"]
	# 	Patient.where('survival_date > 0').find_in_batches(batch_size: 1000).each do |g|
	# 		g.each do |p|
	# 			row = [p.patient_id]
	# 			if p.ccs_661 > 0
	# 				row << 1
	# 			else
	# 				row << 0
	# 			end
	# 			row << p.survival_date
	# 			if p.exposure_age.present?
	# 				row << exposure_age_group[p.exposure_age]
	# 			else
	# 				puts "no exposure age"
	# 			end
				
	# 			csv_object << row
	# 		end
	# 	end
	# end

	# CSV.open("#{Rails.root}/lib/assets/sur_data_a.csv", "wb") do |csv_object|
	# 	puts "here"
	# 	# exposure age group
	# 	# 1 => [6,7]
	# 	# 2 => [8,9]
	# 	# 3 => [10,11]
	# 	# 4 => [12,13]
	# 	# 5 => [14,15]
	# 	# 6 => [16,17]
	# 	# 7 => [18,19]
	# 	exposure_age_group = {6=>1,7=>1,8=>2,9=>2,10=>3,11=>3,12=>4,13=>4,14=>5,15=>5,16=>6,17=>6,18=>7,19=>7}
	# 	# exposure drug group (70%)
	# 	# 1 => amphetamines
	# 	# 2 => methylphenidate
	# 	# 3 => other
	# 	csv_object << ["ID", "event", "date", "exposure_age_group"]
	# 	Patient.where('survival_date > 0').find_in_batches(batch_size: 1000).each do |g|
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
	# 	puts "here"
	# 	# exposure age group
	# 	# 1 => [6,7]
	# 	# 2 => [8,9]
	# 	# 3 => [10,11]
	# 	# 4 => [12,13]
	# 	# 5 => [14,15]
	# 	# 6 => [16,17]
	# 	# 7 => [18,19]
	# 	exposure_age_group = {6=>1,7=>1,8=>2,9=>2,10=>3,11=>3,12=>4,13=>4,14=>5,15=>5,16=>6,17=>6,18=>7,19=>7}
	# 	# exposure drug group (70%)
	# 	# 1 => amphetamines
	# 	# 2 => methylphenidate
	# 	# 3 => other
	# 	csv_object << ["ID", "event", "date", "exposure_age_group"]
	# 	Patient.where('survival_date > 0').find_in_batches(batch_size: 1000).each do |g|
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

	[50,60,70,80,90].each do |percentage|

		CSV.open("#{Rails.root}/lib/assets/sur_data_both_#{percentage}.csv", "wb") do |csv_object|
			puts "here"
			# exposure age group
			# 1 => [6,7]
			# 2 => [8,9]
			# 3 => [10,11]
			# 4 => [12,13]
			# 5 => [14,15]
			# 6 => [16,17]
			# 7 => [18,19]
			exposure_age_group = {'6a'=>1,'7a'=>1,'8a'=>2,'9a'=>2,'10a'=>3,'11a'=>3,'12a'=>4,'13a'=>4,'14a'=>5,'15a'=>5,'16a'=>6,'17a'=>6,'18a'=>7,'19a'=>7,
														'6m'=>8,'7m'=>8,'8m'=>9,'9m'=>9,'10m'=>10,'11m'=>10,'12m'=>11,'13m'=>11,'14m'=>12,'15m'=>12,'16m'=>13,'17m'=>13,'18m'=>14,'19m'=>14}
			# exposure drug group (70%)
			# 1 => amphetamines
			# 2 => methylphenidate
			# 3 => other
			csv_object << ["ID", "event", "date", "exposure_age_group"]
			Patient.where('survival_date > 0').find_in_batches(batch_size: 1000).each do |g|
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