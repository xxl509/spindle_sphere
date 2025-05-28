desc "update the sub types of adhd in patients"
task :update_adhd_subtypes => :environment do
	size = Patient.count
	t1 = Thread.new do
		Patient.where('id > ? and id<= ?', 0, size/5).find_in_batches(batch_size: 10000).each_with_index do |g, index|
			puts "1"
			g.each do |p|
				r1 = p.records.where(adhd_pi: 1)
				r2 = p.records.where(adhd_ph: 1)
				r3 = p.records.where(adhd_ct: 1)
				r4 = p.records.where(adhd_ut: 1)
				r5 = p.records.where(adhd_ot: 1)
				r6 = p.records.where(ccs_6521: 1)
				p.adhd_pi = 1 if r1.present?
				p.adhd_ph = 1 if r2.present?
				p.adhd_ct = 1 if r3.present?
				p.adhd_ut = 1 if r4.present?
				p.adhd_ot = 1 if r5.present?
				p.con_dis = 1 if r6.present?
				p.save
			end
		end
	end

	t2 = Thread.new do
		Patient.where('id > ? and id<= ?', size/5, size*2/5).find_in_batches(batch_size: 10000).each_with_index do |g, index|
			puts "2"
			g.each do |p|
				r21 = p.records.where(adhd_pi: 1)
				r22 = p.records.where(adhd_ph: 1)
				r23 = p.records.where(adhd_ct: 1)
				r24 = p.records.where(adhd_ut: 1)
				r25 = p.records.where(adhd_ot: 1)
				r26 = p.records.where(ccs_6521: 1)
				p.adhd_pi = 1 if r21.present?
				p.adhd_ph = 1 if r22.present?
				p.adhd_ct = 1 if r23.present?
				p.adhd_ut = 1 if r24.present?
				p.adhd_ot = 1 if r25.present?
				p.con_dis = 1 if r26.present?
				p.save
			end
		end
	end

	t3 = Thread.new do
		Patient.where('id > ? and id<= ?', size*2/5, size*3/5).find_in_batches(batch_size: 10000).each_with_index do |g, index|
			puts "3"
			g.each do |p|
				r31 = p.records.where(adhd_pi: 1)
				r32 = p.records.where(adhd_ph: 1)
				r33 = p.records.where(adhd_ct: 1)
				r34 = p.records.where(adhd_ut: 1)
				r35 = p.records.where(adhd_ot: 1)
				r36 = p.records.where(ccs_6521: 1)
				p.adhd_pi = 1 if r31.present?
				p.adhd_ph = 1 if r32.present?
				p.adhd_ct = 1 if r33.present?
				p.adhd_ut = 1 if r34.present?
				p.adhd_ot = 1 if r35.present?
				p.con_dis = 1 if r36.present?
				p.save
			end
		end
	end

	t4 = Thread.new do
		Patient.where('id > ? and id<= ?', size*3/5, size*4/5).find_in_batches(batch_size: 10000).each_with_index do |g, index|
			puts "4"
			g.each do |p|
				r41 = p.records.where(adhd_pi: 1)
				r42 = p.records.where(adhd_ph: 1)
				r43 = p.records.where(adhd_ct: 1)
				r44 = p.records.where(adhd_ut: 1)
				r45 = p.records.where(adhd_ot: 1)
				r46 = p.records.where(ccs_6521: 1)
				p.adhd_pi = 1 if r41.present?
				p.adhd_ph = 1 if r42.present?
				p.adhd_ct = 1 if r43.present?
				p.adhd_ut = 1 if r44.present?
				p.adhd_ot = 1 if r45.present?
				p.con_dis = 1 if r46.present?
				p.save
			end
		end
	end

	t5 = Thread.new do
		Patient.where('id > ? and id<= ?', size*4/5, size).find_in_batches(batch_size: 10000).each_with_index do |g, index|
			puts "5"
			g.each do |p|
				r51 = p.records.where(adhd_pi: 1)
				r52 = p.records.where(adhd_ph: 1)
				r53 = p.records.where(adhd_ct: 1)
				r54 = p.records.where(adhd_ut: 1)
				r55 = p.records.where(adhd_ot: 1)
				r56 = p.records.where(ccs_6521: 1)
				p.adhd_pi = 1 if r51.present?
				p.adhd_ph = 1 if r52.present?
				p.adhd_ct = 1 if r53.present?
				p.adhd_ut = 1 if r54.present?
				p.adhd_ot = 1 if r55.present?
				p.con_dis = 1 if r56.present?
				p.save
			end
		end
	end

	t1.join
	t2.join
	t3.join
	t4.join
	t5.join
end