desc "Add aggregated adhd status"
task :update_adhd_status => :environment do
	batch_index = 1
	# Patient.find_in_batches(batch_size: 1000).each do |group|
	# 	puts batch_index
	# 	batch_index += 1
	# 	group.each do |p|
	# 		# puts p.patient_id
	# 		records = Record.where(enrolid: p.patient_id).adhd
	# 		p.tcgpi_id_61100010 = records.select{|r| r.tcgpi_id_61100010}.size
	# 		p.tcgpi_id_61100020 = records.select{|r| r.tcgpi_id_61100020}.size
	# 		p.tcgpi_id_61100025 = records.select{|r| r.tcgpi_id_61100025}.size
	# 		p.tcgpi_id_61100030 = records.select{|r| r.tcgpi_id_61100030}.size
	# 		p.tcgpi_id_61109902 = records.select{|r| r.tcgpi_id_61109902}.size
	# 		p.tcgpi_id_61353020 = records.select{|r| r.tcgpi_id_61353020}.size
	# 		p.tcgpi_id_61353030 = records.select{|r| r.tcgpi_id_61353030}.size
	# 		p.tcgpi_id_61354015 = records.select{|r| r.tcgpi_id_61354015}.size
	# 		p.tcgpi_id_61400010 = records.select{|r| r.tcgpi_id_61400010}.size
	# 		p.tcgpi_id_61400016 = records.select{|r| r.tcgpi_id_61400016}.size
	# 		p.tcgpi_id_61400020 = records.select{|r| r.tcgpi_id_61400020}.size
	# 		p.tcgpi_id_61400024 = records.select{|r| r.tcgpi_id_61400024}.size
	# 		p.ccs_661 = Record.where(enrolid: p.patient_id).sud.size
	# 		p.save     
	# 	end
	# end

	Patient.where(patient_id: ["2024072403", "29759391203", "2703021002"]).each do |p|
		records = Record.where(enrolid: p.patient_id).adhd
		p.tcgpi_id_61100010 = records.select{|r| r.tcgpi_id_61100010}.size
		p.tcgpi_id_61100020 = records.select{|r| r.tcgpi_id_61100020}.size
		p.tcgpi_id_61100025 = records.select{|r| r.tcgpi_id_61100025}.size
		p.tcgpi_id_61100030 = records.select{|r| r.tcgpi_id_61100030}.size
		p.tcgpi_id_61109902 = records.select{|r| r.tcgpi_id_61109902}.size
		p.tcgpi_id_61353020 = records.select{|r| r.tcgpi_id_61353020}.size
		p.tcgpi_id_61353030 = records.select{|r| r.tcgpi_id_61353030}.size
		p.tcgpi_id_61354015 = records.select{|r| r.tcgpi_id_61354015}.size
		p.tcgpi_id_61400010 = records.select{|r| r.tcgpi_id_61400010}.size
		p.tcgpi_id_61400016 = records.select{|r| r.tcgpi_id_61400016}.size
		p.tcgpi_id_61400020 = records.select{|r| r.tcgpi_id_61400020}.size
		p.tcgpi_id_61400024 = records.select{|r| r.tcgpi_id_61400024}.size
		p.ccs_661 = Record.where(enrolid: p.patient_id).sud.size
		p.save     
	end
end