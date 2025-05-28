desc "fill data tables"
task :fill_data_tables => :environment do
	# all_patient_count = Patient.adhd.count
	# a_count = Patient.where(initial_exposure: [1,3]).count
	# m_count = Patient.where(initial_exposure: [2,3]).count
	# a_percentage = a_count/all_patient_count.to_f
	# m_percentage = m_count/all_patient_count.to_f
	# puts "total patient number: #{all_patient_count}"
	# puts "a: #{a_count} #{a_percentage}"
	# puts "m: #{m_count} #{m_percentage}"

	# adhd_ages = Patient.all.collect(&:exposure_age).compact
	# a_ages = Patient.where(initial_exposure: [1,3]).collect(&:exposure_age).compact
	# m_ages = Patient.where(initial_exposure: [2,3]).collect(&:exposure_age).compact
	
	# puts "Total age: #{mean(adhd_ages)}; #{standard_deviation(adhd_ages)}; #{median(adhd_ages)}; #{range(adhd_ages)[0]}-#{range(adhd_ages)[1]}; #{iqr(adhd_ages)[0]}-#{iqr(adhd_ages)[1]}"
	# puts "A Age: #{mean(a_ages)}; #{standard_deviation(a_ages)}; #{median(a_ages)}; #{range(a_ages)[0]}-#{range(a_ages)[1]}; #{iqr(a_ages)[0]}-#{iqr(a_ages)[1]}"
	# puts "M Age: #{mean(m_ages)}; #{standard_deviation(m_ages)}; #{median(m_ages)}; #{range(m_ages)[0]}-#{range(m_ages)[1]}; #{iqr(m_ages)[0]}-#{iqr(m_ages)[1]}"

	# all_years = Patient.adhd.collect{|p| p.last_seen_age - p.exposure_age + 1}
	# a_years = Patient.where(initial_exposure: [1,3]).collect{|p| p.last_seen_age - p.exposure_age + 1}
	# m_years = Patient.where(initial_exposure: [2,3]).collect{|p| p.last_seen_age - p.exposure_age + 1}
	
	# puts "Total yrs: #{mean(all_years)}; #{standard_deviation(all_years)}; #{median(all_years)}; #{range(all_years)[0]}-#{range(all_years)[1]}; #{iqr(all_years)[0]}-#{iqr(all_years)[1]}"
	# puts "A yrs: #{mean(a_years)}; #{standard_deviation(a_years)}; #{median(a_years)}; #{range(a_years)[0]}-#{range(a_years)[1]}; #{iqr(a_years)[0]}-#{iqr(a_years)[1]}"
	# puts "M yrs: #{mean(m_years)}; #{standard_deviation(m_years)}; #{median(m_years)}; #{range(m_years)[0]}-#{range(m_years)[1]}; #{iqr(m_years)[0]}-#{iqr(m_years)[1]}"
	
	# all_count = Patient.adhd.where(exposure_age: [6,7,8,9,10,11,12]).count
	# a_count = Patient.adhd.where(initial_exposure: [1,3], exposure_age: [6,7,8,9,10,11,12]).count
	# m_count = Patient.adhd.where(initial_exposure: [2,3], exposure_age: [6,7,8,9,10,11,12]).count

	# puts "all a m: #{all_count}; #{a_count}; #{m_count}"

	# all_years = Patient.adhd.where(exposure_age: [6,7,8,9,10,11,12]).collect{|p| p.last_seen_age - p.exposure_age + 1}
	# a_years = Patient.adhd.where(initial_exposure: [1,3], exposure_age: [6,7,8,9,10,11,12]).collect{|p| p.last_seen_age - p.exposure_age + 1}
	# m_years = Patient.adhd.where(initial_exposure: [2,3], exposure_age: [6,7,8,9,10,11,12]).collect{|p| p.last_seen_age - p.exposure_age + 1}
	
	# puts "Total yrs: #{mean(all_years)}; #{standard_deviation(all_years)}; #{median(all_years)}; #{range(all_years)[0]}-#{range(all_years)[1]}; #{iqr(all_years)[0]}-#{iqr(all_years)[1]}"
	# puts "A yrs: #{mean(a_years)}; #{standard_deviation(a_years)}; #{median(a_years)}; #{range(a_years)[0]}-#{range(a_years)[1]}; #{iqr(a_years)[0]}-#{iqr(a_years)[1]}"
	# puts "M yrs: #{mean(m_years)}; #{standard_deviation(m_years)}; #{median(m_years)}; #{range(m_years)[0]}-#{range(m_years)[1]}; #{iqr(m_years)[0]}-#{iqr(m_years)[1]}"
	
	# all_count = Patient.adhd.where(exposure_age: [13,14,15,16,17,18,19,20]).count
	# a_count = Patient.adhd.where(initial_exposure: [1,3], exposure_age: [13,14,15,16,17,18,19,20]).count
	# m_count = Patient.adhd.where(initial_exposure: [2,3], exposure_age: [13,14,15,16,17,18,19,20]).count
	
	# puts "all a m: #{all_count}; #{a_count}; #{m_count}"

	# all_years = Patient.adhd.where(exposure_age: [13,14,15,16,17,18,19,20]).collect{|p| p.last_seen_age - p.exposure_age + 1}
	# a_years = Patient.adhd.where(initial_exposure: [1,3], exposure_age: [13,14,15,16,17,18,19,20]).collect{|p| p.last_seen_age - p.exposure_age + 1}
	# m_years = Patient.adhd.where(initial_exposure: [2,3], exposure_age: [13,14,15,16,17,18,19,20]).collect{|p| p.last_seen_age - p.exposure_age + 1}
	
	# puts "Total yrs: #{mean(all_years)}; #{standard_deviation(all_years)}; #{median(all_years)}; #{range(all_years)[0]}-#{range(all_years)[1]}; #{iqr(all_years)[0]}-#{iqr(all_years)[1]}"
	# puts "A yrs: #{mean(a_years)}; #{standard_deviation(a_years)}; #{median(a_years)}; #{range(a_years)[0]}-#{range(a_years)[1]}; #{iqr(a_years)[0]}-#{iqr(a_years)[1]}"
	# puts "M yrs: #{mean(m_years)}; #{standard_deviation(m_years)}; #{median(m_years)}; #{range(m_years)[0]}-#{range(m_years)[1]}; #{iqr(m_years)[0]}-#{iqr(m_years)[1]}"

	# SUD events

	# count = Patient.where(ccs_661: 0).count
	# n_count = Patient.where("ccs_661 > 0").count
	# a_count = Patient.where(ccs_661: 0).where(initial_exposure: [1,3]).count
	# n_a_count = Patient.where("ccs_661 >0").where(initial_exposure: [1,3]).count
	# m_count = Patient.where(ccs_661: 0).where(initial_exposure: [2,3]).count
	# n_m_count = Patient.where("ccs_661 >0").where(initial_exposure: [2,3]).count

	# puts "#{count}: #{n_count}"
	# puts "#{a_count}: #{n_a_count}"
	# puts "#{m_count}: #{n_m_count}"

	# all_years = Patient.adhd.collect{|p| p.last_adhd_age - p.exposure_age}
	# a_years = Patient.where(initial_exposure: [1,3]).collect{|p| p.last_adhd_age - p.exposure_age}
	# m_years = Patient.where(initial_exposure: [2,3]).collect{|p| p.last_adhd_age - p.exposure_age}
	
	# puts "Total yrs: #{mean(all_years)}; #{standard_deviation(all_years)}; #{median(all_years)}; #{range(all_years)[0]}-#{range(all_years)[1]}; #{iqr(all_years)[0]}-#{iqr(all_years)[1]}"
	# puts "A yrs: #{mean(a_years)}; #{standard_deviation(a_years)}; #{median(a_years)}; #{range(a_years)[0]}-#{range(a_years)[1]}; #{iqr(a_years)[0]}-#{iqr(a_years)[1]}"
	# puts "M yrs: #{mean(m_years)}; #{standard_deviation(m_years)}; #{median(m_years)}; #{range(m_years)[0]}-#{range(m_years)[1]}; #{iqr(m_years)[0]}-#{iqr(m_years)[1]}"

	# a_years = Patient.adhd.where(initial_exposure: [1,3],exposure_age: [6,7,8,9,10,11,12]).collect{|p| p.last_adhd_age - p.exposure_age}
	# m_years = Patient.adhd.where(initial_exposure: [2,3],exposure_age: [6,7,8,9,10,11,12]).collect{|p| p.last_adhd_age - p.exposure_age}
	
	# puts "A yrs: #{mean(a_years)}; #{standard_deviation(a_years)}; #{median(a_years)}; #{range(a_years)[0]}-#{range(a_years)[1]}; #{iqr(a_years)[0]}-#{iqr(a_years)[1]}"
	# puts "M yrs: #{mean(m_years)}; #{standard_deviation(m_years)}; #{median(m_years)}; #{range(m_years)[0]}-#{range(m_years)[1]}; #{iqr(m_years)[0]}-#{iqr(m_years)[1]}"
	
	# a_years = Patient.adhd.where(initial_exposure: [1,3],exposure_age: [13,14,15,16,17,18,19,20]).collect{|p| p.last_adhd_age - p.exposure_age}
	# m_years = Patient.adhd.where(initial_exposure: [2,3],exposure_age: [13,14,15,16,17,18,19,20]).collect{|p| p.last_adhd_age - p.exposure_age}
	
	# puts "A yrs: #{mean(a_years)}; #{standard_deviation(a_years)}; #{median(a_years)}; #{range(a_years)[0]}-#{range(a_years)[1]}; #{iqr(a_years)[0]}-#{iqr(a_years)[1]}"
	# puts "M yrs: #{mean(m_years)}; #{standard_deviation(m_years)}; #{median(m_years)}; #{range(m_years)[0]}-#{range(m_years)[1]}; #{iqr(m_years)[0]}-#{iqr(m_years)[1]}"

	# i need a rest after this

	# all_years = Patient.adhd.sud.collect{|p| p.first_sud_age - p.exposure_age}
	# puts all_years.size
	# a_years = Patient.adhd.sud.where(initial_exposure: [1,3]).collect{|p| p.first_sud_age - p.exposure_age}
	# puts a_years.size
	# m_years = Patient.adhd.sud.where(initial_exposure: [2,3]).collect{|p| p.first_sud_age - p.exposure_age}
	# puts m_years.size
	
	# puts "Total yrs: #{mean(all_years)}; #{standard_deviation(all_years)}; #{median(all_years)}; #{range(all_years)[0]}-#{range(all_years)[1]}; #{iqr(all_years)[0]}-#{iqr(all_years)[1]}"
	# puts "A yrs: #{mean(a_years)}; #{standard_deviation(a_years)}; #{median(a_years)}; #{range(a_years)[0]}-#{range(a_years)[1]}; #{iqr(a_years)[0]}-#{iqr(a_years)[1]}"
	# puts "M yrs: #{mean(m_years)}; #{standard_deviation(m_years)}; #{median(m_years)}; #{range(m_years)[0]}-#{range(m_years)[1]}; #{iqr(m_years)[0]}-#{iqr(m_years)[1]}"

	# only_1 = Patient.adhd.where(ccs_661: 1).count
	# more_than_1 = Patient.adhd.where('ccs_661 > 1').count

	# puts "#{only_1}; #{more_than_1}; #{only_1/(only_1+more_than_1).to_f}; #{more_than_1/(only_1+more_than_1).to_f}"

	# m_patients = Patient.where(sex: "M")
	# f_patients = Patient.where(sex: "F")
	# puts "#{m_patients.count}; #{f_patients.count}"
	# a_m_patients = m_patients.where(initial_exposure: [1,3])
	# m_m_patients = m_patients.where(initial_exposure: [2,3])
	# puts "#{a_m_patients.count}; #{m_m_patients.count}"

	# a_f_patients = f_patients.where(initial_exposure: [1,3])
	# m_f_patients = f_patients.where(initial_exposure: [2,3])
	# puts "#{a_f_patients.count}; #{m_f_patients.count}"
	
	# p = Patient.where("ccs_661>0")
	# puts "#{p.count}"
	# a = p.collect(&:exposure_age)
	# puts "mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"

	# p = Patient.where("ccs_661=1")
	# puts "#{p.count}"
	# a = p.collect(&:exposure_age)
	# puts "mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# p = Patient.adhd.where("ccs_661=0")
	# puts "#{p.count}"
	# a = p.collect(&:exposure_age)
	# puts "mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	
	# p = Patient.adhd.where("ccs_661>0")
	# p_1 = Patient.adhd.where("ccs_661=1")
	# p_more = Patient.adhd.where("ccs_661>1")
	# n = Patient.adhd.where("ccs_661=0")
	# p_years = p.collect{|p| p.last_seen_age - p.exposure_age + 1}
	# p_1_years = p_1.collect{|p| p.last_seen_age - p.exposure_age + 1}
	# p_more_years = p_more.collect{|p| p.last_seen_age - p.exposure_age + 1}
	# n_years = n.collect{|p| p.last_seen_age - p.exposure_age + 1}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# p = Patient.adhd.where("exposure_age>12 and exposure_age<21").where("ccs_661>0")
	# p_1 = Patient.adhd.where("exposure_age>12 and exposure_age<21").where("ccs_661=1")
	# p_more = Patient.adhd.where("exposure_age>12 and exposure_age<21").where("ccs_661>1")
	# n = Patient.adhd.where("exposure_age>12 and exposure_age<21").where("ccs_661=0")
	# p_years = p.collect{|p| p.last_seen_age - p.exposure_age + 1}
	# p_1_years = p_1.collect{|p| p.last_seen_age - p.exposure_age + 1}
	# p_more_years = p_more.collect{|p| p.last_seen_age - p.exposure_age + 1}
	# n_years = n.collect{|p| p.last_seen_age - p.exposure_age + 1}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# p = Patient.adhd.where("ccs_661>0")
	# p_1 = Patient.adhd.where("ccs_661=1")
	# p_more = Patient.adhd.where("ccs_661>1")
	# n = Patient.adhd.where("ccs_661=0")
	# p_years = p.collect{|p| p.last_adhd_age - p.exposure_age+1}
	# p_1_years = p_1.collect{|p| p.last_adhd_age - p.exposure_age+1}
	# p_more_years = p_more.collect{|p| p.last_adhd_age - p.exposure_age+1}
	# n_years = n.collect{|p| p.last_adhd_age - p.exposure_age+1}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

  # Length of time (cumulative3) on ADHD Drug A (yrs)
	# p = Patient.adhd.where("ccs_661>0")
	# p_1 = Patient.adhd.where("ccs_661=1")
	# p_more = Patient.adhd.where("ccs_661>1")
	# n = Patient.adhd.where("ccs_661=0")
	# p_years = p.collect{|p| p.drug_a}
	# p_1_years = p_1.collect{|p| p.drug_a}
	# p_more_years = p_more.collect{|p| p.drug_a}
	# n_years = n.collect{|p| p.drug_a}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# p = Patient.adhd.ch.where("ccs_661>0")
	# p_1 = Patient.adhd.ch.where("ccs_661=1")
	# p_more = Patient.adhd.ch.where("ccs_661>1")
	# n = Patient.adhd.ch.where("ccs_661=0")
	# p_years = p.collect{|p| p.drug_a}
	# p_1_years = p_1.collect{|p| p.drug_a}
	# p_more_years = p_more.collect{|p| p.drug_a}
	# n_years = n.collect{|p| p.drug_a}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# p = Patient.adhd.adol.where("ccs_661>0")
	# p_1 = Patient.adhd.adol.where("ccs_661=1")
	# p_more = Patient.adhd.adol.where("ccs_661>1")
	# n = Patient.adhd.adol.where("ccs_661=0")
	# p_years = p.collect{|p| p.drug_m}
	# p_1_years = p_1.collect{|p| p.drug_m}
	# p_more_years = p_more.collect{|p| p.drug_m}
	# n_years = n.collect{|p| p.drug_m}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# p = Patient.adhd.where("ccs_661>0")
	# p_1 = Patient.adhd.where("ccs_661=1")
	# p_more = Patient.adhd.where("ccs_661>1")
	# n = Patient.adhd.where("ccs_661=0")
	# p_years = p.collect{|p| p.drug_m}
	# p_1_years = p_1.collect{|p| p.drug_m}
	# p_more_years = p_more.collect{|p| p.drug_m}
	# n_years = n.collect{|p| p.drug_m}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# p = Patient.adhd.ch.where("ccs_661>0")
	# p_1 = Patient.adhd.ch.where("ccs_661=1")
	# p_more = Patient.adhd.ch.where("ccs_661>1")
	# n = Patient.adhd.ch.where("ccs_661=0")
	# p_years = p.collect{|p| p.drug_m}
	# p_1_years = p_1.collect{|p| p.drug_m}
	# p_more_years = p_more.collect{|p| p.drug_m}
	# n_years = n.collect{|p| p.drug_m}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

 #   p = Patient.adhd.adol.where("ccs_661>0")
	# p_1 = Patient.adhd.adol.where("ccs_661=1")
	# p_more = Patient.adhd.adol.where("ccs_661>1")
	# n = Patient.adhd.adol.where("ccs_661=0")
	# p_years = p.collect{|p| p.drug_m}
	# p_1_years = p_1.collect{|p| p.drug_m}
	# p_more_years = p_more.collect{|p| p.drug_m}
	# n_years = n.collect{|p| p.drug_m}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	
	# p = Patient.adhd
	# p_a = Patient.adhd.d_a
	# p_m = Patient.adhd.d_m
	# p_years = p.collect{|p| p.adhd_months/12.0}
	# p_a_years = p_a.collect{|p| p.adhd_months/12.0}
	# p_m_years = p_m.collect{|p| p.adhd_months/12.0}
	# [p_years, p_a_years, p_m_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# puts '====='
	# puts ''

	# p = Patient.adhd.where("ccs_661>0")
	# p_1 = Patient.adhd.where("ccs_661=1")
	# p_more = Patient.adhd.where("ccs_661>1")
	# n = Patient.adhd.where("ccs_661=0")
	# p_years = p.collect{|p| p.adhd_months/12.0}
	# p_1_years = p_1.collect{|p| p.adhd_months/12.0}
	# p_more_years = p_more.collect{|p| p.adhd_months/12.0}
	# n_years = n.collect{|p| p.adhd_months/12.0}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end
	
	# #number of breaks

	# p = Patient.adhd
	# p_a = Patient.adhd.d_a
	# p_m = Patient.adhd.d_m
	# p_years = p.collect{|p| p.breaks}
	# p_a_years = p_a.collect{|p| p.breaks}
	# p_m_years = p_m.collect{|p| p.breaks}
	# [p_years, p_a_years, p_m_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# puts '====='
	# puts ''

	# p = Patient.adhd.where("ccs_661>0")
	# p_1 = Patient.adhd.where("ccs_661=1")
	# p_more = Patient.adhd.where("ccs_661>1")
	# n = Patient.adhd.where("ccs_661=0")
	# p_years = p.collect{|p| p.breaks}
	# p_1_years = p_1.collect{|p| p.breaks}
	# p_more_years = p_more.collect{|p| p.breaks}
	# n_years = n.collect{|p| p.breaks}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end
	
	# #cumulative break time
	# p = Patient.adhd
	# p_a = Patient.adhd.d_a
	# p_m = Patient.adhd.d_m
	# p_years = p.collect{|p| p.break_months/12.0}
	# p_a_years = p_a.collect{|p| p.break_months/12.0}
	# p_m_years = p_m.collect{|p| p.break_months/12.0}
	# [p_years, p_a_years, p_m_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# puts '====='
	# puts ''

	# p = Patient.adhd.where("ccs_661>0")
	# p_1 = Patient.adhd.where("ccs_661=1")
	# p_more = Patient.adhd.where("ccs_661>1")
	# n = Patient.adhd.where("ccs_661=0")
	# p_years = p.collect{|p| p.break_months/12.0}
	# p_1_years = p_1.collect{|p| p.break_months/12.0}
	# p_more_years = p_more.collect{|p| p.break_months/12.0}
	# n_years = n.collect{|p| p.break_months/12.0}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# # Break months/adhd months

	# p = Patient.adhd
	# p_a = Patient.adhd.d_a
	# p_m = Patient.adhd.d_m
	# p_years = p.collect{|p| p.break_months/p.adhd_months.to_f}
	# p_a_years = p_a.collect{|p| p.break_months/p.adhd_months.to_f}
	# p_m_years = p_m.collect{|p| p.break_months/p.adhd_months.to_f}
	# [p_years, p_a_years, p_m_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# puts '====='
	# puts ''

	# p = Patient.adhd.where("ccs_661>0")
	# p_1 = Patient.adhd.where("ccs_661=1")
	# p_more = Patient.adhd.where("ccs_661>1")
	# n = Patient.adhd.where("ccs_661=0")
	# p_years = p.collect{|p| p.break_months/p.adhd_months.to_f}
	# p_1_years = p_1.collect{|p| p.break_months/p.adhd_months.to_f}
	# p_more_years = p_more.collect{|p| p.break_months/p.adhd_months.to_f}
	# n_years = n.collect{|p| p.break_months/p.adhd_months.to_f}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

		# Break months/adhd months

	# p = Patient.adhd
	# p_a = Patient.adhd.d_a
	# p_m = Patient.adhd.d_m
	# p_years = p.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# p_a_years = p_a.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# p_m_years = p_m.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# [p_years, p_a_years, p_m_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# puts '====='
	# puts ''

	# p = Patient.adhd.ch.where("ccs_661>0")
	# p_1 = Patient.adhd.ch.where("ccs_661=1")
	# p_more = Patient.adhd.ch.where("ccs_661>1")
	# n = Patient.adhd.ch.where("ccs_661=0")
	# p_years = p.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# p_1_years = p_1.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# p_more_years = p_more.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# n_years = n.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	# p = Patient.adhd.adol.where("ccs_661>0")
	# p_1 = Patient.adhd.adol.where("ccs_661=1")
	# p_more = Patient.adhd.adol.where("ccs_661>1")
	# n = Patient.adhd.adol.where("ccs_661=0")
	# p_years = p.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# p_1_years = p_1.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# p_more_years = p_more.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# n_years = n.collect{|p| p.breaks.to_f/12/(p.adhd_months+p.break_months)}
	# [p_years, p_1_years, p_more_years, n_years].each do |a|
	# 	puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	# end

	man_init_years = Patient.male.where("exposure_age> 12").collect(&:exposure_age).compact
	woman_init_years = Patient.female.where("exposure_age> 12").collect(&:exposure_age).compact
	[man_init_years, woman_init_years].each do |a|
		puts "size: #{a.size}; mean: #{mean(a)}; sd: #{standard_deviation(a)}; median: #{median(a)}; iqr: #{iqr(a)}; range: #{range(a)}"
	end


end

def mean(array)
	s = sum(array)
	m = s.to_f/array.size
	m
end

def sum(array)
	result = 0
	array.each do |i|
		result = result + i
	end
	result
end

def sample_variance(array)
  m = mean(array)
  s = 0
  array.each do |i|
  	s = s + (i-m)**2
  end

  result = s/(array.size - 1).to_f
	result
end

def standard_deviation(array)
  return Math.sqrt(sample_variance(array))
end

def median(array)
	array = array.sort_by{|a,b| a<=>b}
	result = nil
	if array.size % 2 == 1
		result = array[array.size/2]	
	else
		result = (array[array.size/2-1] + array[array.size/2]).to_f/2
	end
	result
end

def range(array)
	min = array.min
	max = array.max
	[min, max]
end

def iqr(array)
	array = array.collect(&:to_f)
	array = array.sort
	
	m_index = array.size / 2

	
	if array.size % 2 == 1
		left_half = array[0..(array.size/2-1)]
		right_half = array[(array.size/2+1)..(array.size-1)]
	else
		left_half = array[0..(array.size/2-1)]
		right_half = array[(array.size/2)..(array.size-1)]
	end

	l_median = median(left_half)
	r_median = median(right_half)

	[l_median, r_median]
end