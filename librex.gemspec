Gem::Specification.new do |s|
	s.name = %q{librex}
	s.version = "0.0.3"
	s.has_rdoc = false
	s.required_ruby_version = ">= 1.8.7"
	s.platform = "ruby"
	s.require_paths = ["lib"]
	s.required_rubygems_version = ">= 0"
	s.authors = ["Metasploit Development Team", "Jacob Hammack"]
	s.email = ["hdm@metasploit.com", "jacob.hammack@hammackj.com"]
	s.extra_rdoc_files = ["README"]
	s.summary = %q{Ruby Exploitation library}
	s.homepage = %q{http://www.metasploit.com/}
	s.description = %q{Rex provides a variety of classes useful for security testing and exploit development. Based on svn revision 9625}
	s.files = Dir['[A-Z]*'] + Dir['lib/**/*']
end

