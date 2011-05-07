#!/usr/bin/env ruby
#
# $Id: peparsey.rb 12554 2011-05-06 18:47:10Z jduck $
#

module Rex
module PeParsey
	autoload :Pe,        'rex/peparsey/pe'
	autoload :PeMemDump, 'rex/peparsey/pe_memdump'
end
end
