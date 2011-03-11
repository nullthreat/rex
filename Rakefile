$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
 
task :build do
  system "gem build librex.gemspec"
end
 
task :release => :build do
  system "gem push librex-*.gem"
end

task :clean do
	system "rm *.gem"
end

task :update_rex do
	puts "[*] Removing old rex code"
	system "git rm lib/rex.rb"
	system "git rm lib/rex.rb.ts.rb"
	system "git rm -rf lib/rex/"
	system "git commit -a -m \"Removed old code.\""
	system "mkdir lib"
	
#	results = `svn co https://www.metasploit.com/svn/framework3/trunk/ /tmp/msftmp`
#	rev = results.match(/^Checked out revision (.*)\.$/)
	
#	puts rev[1]
	
	
	
	
#	system "rm -rf /tmp/msftmp"
end
