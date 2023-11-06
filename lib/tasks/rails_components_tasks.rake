namespace :rails_components do
  desc 'Copy asset files from engine to main app'
  task :copy_assets => :environment do
    source_dir = File.expand_path('../../app/assets/javascript', __dir__)
    dest_dir = File.expand_path(Rails.root.to_s + '/app/javascript/rails_components', __dir__)

    FileUtils.mkdir_p(dest_dir) unless Dir.exist?(dest_dir)
    FileUtils.cp_r("#{source_dir}/.", dest_dir)

    css_dir = File.expand_path('../../app/assets/stylesheets', __dir__)
    dest_css_dir = File.expand_path(Rails.root.to_s + '/app/assets/stylesheets/', __dir__)

    FileUtils.mkdir_p(dest_css_dir) unless Dir.exist?(dest_css_dir)
    FileUtils.cp_r("#{css_dir}/.", dest_css_dir)
  end
end
