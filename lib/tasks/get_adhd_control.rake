desc "get adhd control"
task :get_adhd_control => :environment do
	Patient.where("clean_3 =1 and control_id is null").find_in_batches(batch_size:10000).each do |g|
		s1 = Time.now
		g.each do |p|
			p.get_adhd_control
		end
		puts "#{Time.now - s1} seconds"
	end
end