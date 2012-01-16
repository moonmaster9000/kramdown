require 'kramdown'
d = Kramdown::Document.new(File.read("/Users/mparker/tmp/test.markdown"), :input => :markdown)
