Gem::Specification.new do |s|
	s.name = %q{librex}
	s.version = "0.0.7"
	s.has_rdoc = false
	s.required_ruby_version = ">= 1.8.7"
	s.platform = "ruby"
	s.require_paths = ["lib"]
	s.authors = ["Metasploit Development Team", "Jacob Hammack"]
	s.email = ["hdm@metasploit.com", "jacob.hammack@hammackj.com"]
	s.extra_rdoc_files = ["README.md"]
	s.summary = %q{Ruby Exploitation library}
	s.homepage = %q{http://www.metasploit.com/}
	s.description = %q{Rex provides a variety of classes useful for security testing and exploit development. Based on svn revision 11930}
	s.files = Dir['[A-Z]*'] + Dir['lib/**/*']
end

