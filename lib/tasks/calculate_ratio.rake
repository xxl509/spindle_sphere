desc "calcualte sparseness in data"
task :calculate_sparseness => :environment do
	size_of_one = 0
	Patient.find_in_batches(batch_size: 10000).each do |g|
		g.each do |p|
			size_of_one += p.tcgpi_id_61100010
			size_of_one += p.tcgpi_id_61100020
			size_of_one += p.tcgpi_id_61100025
			size_of_one += p.tcgpi_id_61100030
			size_of_one += p.tcgpi_id_61109902
			size_of_one += p.tcgpi_id_61353020
			size_of_one += p.tcgpi_id_61353030
			size_of_one += p.tcgpi_id_61354015
			size_of_one += p.tcgpi_id_61400010
			size_of_one += p.tcgpi_id_61400016
			size_of_one += p.tcgpi_id_61400020
			size_of_one += p.tcgpi_id_61400024
		end
	end
	puts size_of_one
end



