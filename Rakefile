# encoding: utf-8
 
task :build => :update do
	Rake::Task['clean'].execute
  system "gem build librex.gemspec"
end
 
task :release => :build do
  system "gem push librex-*.gem"
	Rake::Task['clean'].execute
end

task :clean do
	system "rm *.gem"
end

task :update do
	puts "[*] Removing old rex code"
	system "git rm lib/rex.rb"
	system "git rm lib/rex.rb.ts.rb"
	system "git rm -rf lib/"
	system "rm -rf lib/"  #So there is a cvs file in the msf stuff that breaks things
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

	puts "[*] Cleaning up tmp files"	
	system "rm -rf /tmp/msftmp"
	
	puts "[*] Updating librex.gemspec with new Version and Revision Number"
	File.open("librex.gemspec.1", "w+") do |output|
		File.open("librex.gemspec", "r") do |input|
			while (line = input.gets)
				
				if line =~ /^VERSION = (.*)$/
					version = $1.chop.gsub("\"",'').split(".")
					version[2] = version[2].to_i + 1
					version = version.join(".")
					
					puts "#{version}"
						
					line = "VERSION = \"#{version}\"\n"
				elsif line =~ /^REVISION = (.*)$/
					line = "REVISION = \"#{rev[1]}\"\n"
				else
					line = line
				end
			
				output.write line
			end
		end
	end
	
	system "mv librex.gemspec.1 librex.gemspec"
	
	puts "[*] Updating README.markdown with new Revision Number"
	File.open("README.markdown.1", "w+") do |output|
		File.open("README.markdown", "r") do |input|
			while (line = input.gets)						
				if line =~ /^SVN Revision: (.*)$/
					line = "SVN Revision: #{rev[1]}\n"
				else
					line = line
				end
			
				output.write line
			end
		end
	end
	
	system "mv README.markdown.1 README.markdown"
	
	system "git commit -a -m \"Updated for Revision #{rev[1]}\""
	puts "Commiting and Pushing Updates for Revision #{rev[1]}"
	system "git push"
end
