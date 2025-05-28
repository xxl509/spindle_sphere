desc "update exposure age to adhd"
task :update_exposure_age => :environment do
	batch_index = 1

	Patient.find_in_batches(batch_size: 1000).each do |group|
		puts batch_index
		batch_index += 1
		group.each do |p|
			# All patient id, enrollid
			# all ADHD med encounters for patient p
			records = Record.where(enrolid: p.patient_id).adhd			
			exposure_age = records.collect(&:visit_age).min
			# puts "#{p.patient_id}: #{exposure_age}"
			p.exposure_age = exposure_age
			
			p.save
		end
	end
end