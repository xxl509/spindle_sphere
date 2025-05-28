desc "Export data for survival analysis from age 12 to 19"
task :export_sex_data => :environment do
	require 'csv'

	CSV.open("#{Rails.root}/lib/assets/sur_sex_6_11.csv", "wb") do |csv_object|
		exposure_age_group = {'6m'=>0,'7m'=>0,'8m'=>0,'9m'=>0,'10m'=>0,'11m'=>0,
													'6f'=>1,'7f'=>1,'8f'=>1,'9f'=>1,'10f'=>1,'11f'=>1#,
													# '6mc'=>2,'7mc'=>2,'8mc'=>2,'9mc'=>2,'10mc'=>2,'11mc'=>2,
													# '6fc'=>3,'7fc'=>3,'8fc'=>3,'9fc'=>3,'10fc'=>3,'11fc'=>3
												}
		csv_object << ["ID", "event", "date", "exposure_age_group"]
		Patient.where('survival_date >0  and med_age is not null and med_age in (?)', (6..11).to_a).find_in_batches(batch_size: 1000).each do |g|
			g.each do |p|
				if p.sex == 1
					row = [p.patient_id]
					if p.sud ==1
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					row << exposure_age_group["#{p.med_age}m"]
						
					csv_object << row

					c_row = [p.control_id] 
					control_patient = ControlPatient.where(patient_id: p.control_id).first
					if control_patient.sud == 1
						c_row << 1
					else
						c_row << 0
					end
					c_row << control_patient.survival_date
					c_row << exposure_age_group["#{p.med_age}mc"]
					csv_object << row
				elsif p.sex == 2
					row = [p.patient_id]
					if p.sud ==1 
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					if p.med_age.present?
						row << exposure_age_group["#{p.med_age}f"]
					else
						puts "no exposure age"
					end
						
					csv_object << row

					c_row = [p.control_id] 
					puts p.control_id
					control_patient = ControlPatient.where(patient_id: p.control_id).first
					if control_patient.sud == 1
						c_row << 1
					else
						c_row << 0
					end
					c_row << control_patient.survival_date
					c_row << exposure_age_group["#{p.med_age}fc"]
					csv_object << row
				end
			end
		end
	end
	# 12-13
	CSV.open("#{Rails.root}/lib/assets/sur_sex_12_13.csv", "wb") do |csv_object|
		exposure_age_group = {'m'=>0,'f'=>1}
		csv_object << ["ID", "event", "date", "exposure_age_group"]
		Patient.where('survival_date >0 and med_age is not null and med_age in (?)', (12..13).to_a).find_in_batches(batch_size: 1000).each do |g|
			g.each do |p|
				if p.sex == 1
					row = [p.patient_id]
					if p.sud ==1
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					row << exposure_age_group["m"]
						
					csv_object << row
				elsif p.sex == 2
					row = [p.patient_id]
					if p.sud ==1
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					row << exposure_age_group["f"]
						
					csv_object << row
				end
			end
		end
	end
	# 14-15
	CSV.open("#{Rails.root}/lib/assets/sur_sex_14_15.csv", "wb") do |csv_object|
		exposure_age_group = {'14m'=>0,'15m'=>0,
														'14f'=>1,'15f'=>1}
		csv_object << ["ID", "event", "date", "exposure_age_group"]
		Patient.where('survival_date >0 and med_age is not null and med_age in (?)', (14..15).to_a).find_in_batches(batch_size: 1000).each do |g|
			g.each do |p|
				if p.sex == 1
					row = [p.patient_id]
					if p.sud ==1
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					row << exposure_age_group["#{p.med_age}m"]
						
					csv_object << row
				elsif p.sex == 2
					row = [p.patient_id]
					if p.sud ==1
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					row << exposure_age_group["#{p.med_age}f"]
						
					csv_object << row
				end
			end
		end
	end

	# 16-17
	CSV.open("#{Rails.root}/lib/assets/sur_sex_16_17.csv", "wb") do |csv_object|
		exposure_age_group = {'16m'=>0,'17m'=>0,
														'16f'=>1,'17f'=>1}
		csv_object << ["ID", "event", "date", "exposure_age_group"]
		Patient.where('survival_date >0 and med_age is not null and med_age in (?)', (16..17).to_a).find_in_batches(batch_size: 1000).each do |g|
			g.each do |p|
				if p.sex == 1
					row = [p.patient_id]
					if p.sud ==1
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					row << exposure_age_group["#{p.med_age}m"]
						
					csv_object << row
				elsif p.sex == 2
					row = [p.patient_id]
					if p.sud ==1
						row << 1
					else
						row << 0
					end
					row << p.survival_date
					row << exposure_age_group["#{p.med_age}f"]
						
					csv_object << row
				end
			end
		end
	end

end