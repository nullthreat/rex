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
	
	puts "[*] Checking out Metasploit trunk"
	results = `svn co https://www.metasploit.com/svn/framework3/trunk/ /tmp/msftmp`
	rev = results.match(/^Checked out revision (.*)\.$/)
	
	puts "[*] Checkout Revision: #{rev[1]}"
	
	puts "[*] Copying new files"
	system "mv /tmp/msftmp/lib/rex.rb lib/"
	system "mv /tmp/msftmp/lib/rex.rb.ts.rb lib/"
	system "mv /tmp/msftmp/lib/rex/ lib/"
	system "find . -iname '.svn' -exec rm -rf {} \\;"
	system "git add lib/"
	system "git commit -m \"Updated for Revision #{rev[1]}\""
	
	puts "[*] Cleaning up tmp files"	
	system "rm -rf /tmp/msftmp"
end
