desc "Import clean period information"
task :import_clean => :environment do

	File.open("#{Rails.root}/lib/assets/output_clean_3.csv", 'r').each do |line|
	  patient_id = line.strip
	  patient = Patient.where(patient_id: patient_id).first
	  if patient.present?
	  	patient.clean_3 = true
	  	patient.save
	  else
	  	puts "====="
	  	puts "patient not exists"
	  	puts "#{patient_id}"
	  	puts "!=====!"
	  end
	end

	if false
	
	File.open("#{Rails.root}/lib/assets/output_clean_6.csv", 'r').each do |line|
	  patient_id = line.strip
	  patient = Patient.where(patient_id: patient_id).first
	  if patient.present?
	  	patient.clean_6 = true
	  	patient.save
	  else
	  	puts "====="
	  	puts "patient not exists"
	  	puts "#{patient_id}"
	  	puts "!=====!"
	  end
	end

	File.open("#{Rails.root}/lib/assets/output_clean_12.csv", 'r').each do |line|
	  patient_id = line.strip
	  patient = Patient.where(patient_id: patient_id).first
	  if patient.present?
	  	patient.clean_12 = true
	  	patient.save
	  else
	  	puts "====="
	  	puts "patient not exists"
	  	puts "#{patient_id}"
	  	puts "!=====!"
	  end
	end

	end

end