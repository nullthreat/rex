$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
 
task :build do
  system "gem build librex.gemspec"
end
 
task :release => :build do
  system "gem push librex-#{NessusDB::VERSION}.gem"
end

task :clean do
	system "rm *.gem"
end
