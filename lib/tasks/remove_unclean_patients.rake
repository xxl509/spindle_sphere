desc "Remove unclean patients"
task :remove_unclean_patients => :environment do
	# 10 threads

	count = 0
	size = Patient.count
	mutex = Mutex.new
	(1..10).each do |i|
		t = Thread.new do
			Patient.where('(med_age - enroll_age = 1) and id > ? and id<= ?', (i-1)/10*size, i/10*size).find_in_batches(batch_size: 10000).each_with_index do |g, index|
				puts index
				g.each do |p|
					puts p.patient_id
					enrol_ym = p.first_enroll
					med_ym = p.first_med
					months = get_clean_months(med_ym,enrol_ym)
					if months < 12
						mutex.synchronize do 
							count += 1
						end
						p.records.destroy_all
						p.destroy
					end
				end
			end
		end
		t.join
		puts "#{i} finished"
	end
	puts "total: #{count}"
	
end

# def get_clean_months(ym1, ym2)
# 	y1 = ym1[0..3].to_i
# 	m1 = ym1[4..5].to_i

# 	y2 = ym2[0..3].to_i
# 	m2 = ym2[4..5].to_i

# 	months = y1*12+m1 - y2*12 - m2
# 	months
# end