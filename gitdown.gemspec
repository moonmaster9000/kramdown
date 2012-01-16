Gem::Specification.new do |s|
  s.name = "gitdown"
  s.authors = ["Thomas Leitner", "Matt Parker"]
  s.summary = "A simple extension to the kramdown gem for supporting github flavored code blocks."
  s.description = "Use 'GithubMarkdown' as your input format to capture github-flavored markdown code blocks."
  s.homepage = "http://github.com/moonmaster9000/gitdown"
  s.email = "moonmaster9000@gmail.com"
  s.version = File.read "VERSION"
  s.files = 
    Dir['bin/*'] +
    Dir['benchmark/*'] +
    Dir['lib/**/*.rb'] +
    Dir['data/**/*'] +
    Dir['doc/**'] +
    ['Rakefile', 'setup.rb', 'COPYING', 'GPL', 'README', 'AUTHORS',
     'VERSION']
  s.test_files = Dir["test/**/*"]
end
