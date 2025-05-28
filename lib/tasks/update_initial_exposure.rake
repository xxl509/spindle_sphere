desc "Update patient with initial exposure adhdmedication"
task :update_initial_exposure => :environment do
	Patient.where("ccs_661 > ?", 0).find_in_batches(batch_size: 1000).each do |g|
		g.each do |p|
			record = Record.adhd.where(enrolid: p.patient_id).order('yrmon').limit(1).first
			if record.present?
				if (record.tcgpi_id_61100010 or record.tcgpi_id_61100020 or record.tcgpi_id_61100025 or record.tcgpi_id_61100030 or record.tcgpi_id_61109902) and (record.tcgpi_id_61400016 or record.tcgpi_id_61400020)
					p.initial_exposure = 3
				elsif (record.tcgpi_id_61100010 or record.tcgpi_id_61100020 or record.tcgpi_id_61100025 or record.tcgpi_id_61100030 or record.tcgpi_id_61109902)
					p.initial_exposure = 1
				elsif (record.tcgpi_id_61400016 or record.tcgpi_id_61400020)
					p.initial_exposure = 2
				end
				p.save
			end
		end
	end

	Patient.where("ccs_661 = ?", 0).find_in_batches(batch_size: 1000).each do |g|
		g.each do |p|
			# first encounter for p
			record = Record.adhd.where(enrolid: p.patient_id).order('yrmon').limit(1).first
			# record
			if record.present?
				# 
				if (record.tcgpi_id_61100010 or record.tcgpi_id_61100020 or record.tcgpi_id_61100025 or record.tcgpi_id_61100030 or record.tcgpi_id_61109902) and (record.tcgpi_id_61400016 or record.tcgpi_id_61400020)
					p.initial_exposure = 3
				elsif (record.tcgpi_id_61100010 or record.tcgpi_id_61100020 or record.tcgpi_id_61100025 or record.tcgpi_id_61100030 or record.tcgpi_id_61109902)
					p.initial_exposure = 1
				elsif (record.tcgpi_id_61400016 or record.tcgpi_id_61400020)
					p.initial_exposure = 2
				end
				p.save
			end
		end
	end
end

