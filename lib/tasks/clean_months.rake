desc "set clean months for all patients"
task :cal_clean_months => :environment do
	# 10 threads

	count = 0
	size = Patient.count
	mutex = Mutex.new
	index = []
	(1..10).each do |i|
		t = Thread.new do

			Patient.where('id > ? and id<= ?', (i-1)/10*size, i/10*size).find_in_batches(batch_size: 1000).each_with_index do |g, index|
				puts 
				g.each do |p|
					puts i
					# puts p.patient_id
					# enrol_ym = p.first_enroll
					# med_ym = p.first_med
					# if med_ym.present?
					# 	months = get_clean_months(med_ym,enrol_ym)
					# 	p.clean_months = months
					# 	p.save
					# end
				end
			end
		end
		t.join
		puts "#{i} finished"
	end
	puts "total: #{count}"
	
end

def get_clean_months(ym1, ym2)
	y1 = ym1[0..3].to_i
	m1 = ym1[4..5].to_i

	y2 = ym2[0..3].to_i
	m2 = ym2[4..5].to_i

	months = y1*12+m1 - y2*12 - m2
	months
end
