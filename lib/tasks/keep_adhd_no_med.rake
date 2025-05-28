desc "Keep only adhd but no med patients in database"
task :keep_adhd_no_med => :environment do
	# no_med_patients = Patient.adhd.where("med_age is null")
	# puts no_med_patients.size
	med_patients = Patient.where("med_age is not null")
	med_patients.each do |p|
		p.records.destroy_all
	end
	med_patients.destroy_all
end