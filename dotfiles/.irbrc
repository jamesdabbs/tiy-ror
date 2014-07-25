# Registers a hook before exiting IRB to dump the entire session history
#   to a timestamped log file
Kernel.at_exit do
  path, i = "#{ENV['HOME']}/log/irb.#{Time.now.strftime('%F')}", 1
  i += 1 while File.exists?("#{path}.#{i}")

  File.open("#{path}.#{i}", "w") do |f|
    f.puts "#{Dir.pwd} =>"
    Readline::HISTORY.each { |line| f.puts line }
  end
end
