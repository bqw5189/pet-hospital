###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

page "/login.html", :layout => "login"

page "/index.html", :layout => "application"

page "/views/*list.html", :layout => "list"

page "/views/*modify.html", :layout => "form"
page "/views/*detail.html", :layout => "form"
page "/views/*form.html", :layout => "form"

page "/views/*popup.html", :layout => "popup"
page "/views/*.html", :layout => "page"

page "/test*.html", :layout => "test"

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# i18n
#activate :i18n, :mount_at_root => :en
activate :i18n, :mount_at_root => :zh

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

set :haml, format: :html5

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
