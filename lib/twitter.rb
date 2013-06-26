twitter_dir = File.expand_path("../twitter", __FILE__)
files = Dir["#{twitter_dir}/**/*.rb"]
files.each { |file| require file }
