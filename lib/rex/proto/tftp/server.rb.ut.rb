#!/usr/bin/env ruby
#
# $Revision: 9333 $
#
# $Id: server.rb.ut.rb 9333 2010-05-21 00:03:04Z jduck $
#

require 'rex/compat'
require 'rex/proto/tftp'

content = nil

fn = ARGV.shift
if (fn and fn.length > 0)
	File.open(fn, "rb") do |fd|
		content = fd.read(fd.stat.size)
	end
end

content ||= "A" * (1024*1024)


tftp = Rex::Proto::TFTP::Server.new
tftp.register_file("poo", content)
tftp.start

#loop { break if not tftp.thread.alive? }
tftp.thread.join
