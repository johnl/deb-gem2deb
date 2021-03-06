require 'test_helper'

class DhMakeRubyIntegrationTest < Gem2DebTestCase

  should 'run dh-make against directory with gemspec' do
    target_dir = File.join(tmpdir, 'withgemspec')
    FileUtils.cp_r(SIMPLE_GIT, target_dir)
    run_command("dh-make-ruby #{target_dir}")
  end

  should 'run dh-make against directory without gemspec' do
    target_dir = File.join(tmpdir, 'withoutgemspec')
    FileUtils.cp_r(SIMPLE_GIT, target_dir)
    FileUtils.rm(File.join(target_dir, 'simplegit.gemspec'))
    run_command("dh-make-ruby #{target_dir}")
  end

end

