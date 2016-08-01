###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

page "/*filter.html", layout: false
page "/*pagination.html", layout: false

page "/login.html", :layout => "login"

page "/index.html", :layout => "application"

# 一列布局
page "/views/*list.html", :layout => "list"

# 两列布局
page "/views/*cols2.html", :layout => "column2"

# 默认布局
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

helpers do
    def bind(key, fieldName)
        if fieldName == 'error'
            return "<span class='label label-danger'>Danger</span>"
        else
            return "{{" << key << "." << fieldName << "}}"
        end
    end

    def inputName(key, fieldName)
        return fieldName
    end

    def inputModel(key, fieldName)
        if fieldName == 'error'
            return fieldName
        else
            return "" << key << "." << fieldName
        end
    end

    def modal(name, id)
        puts "Method: " << name << ": " << id
        @modal_id = id
        @modal_name = name
    end

    def inputHelper(key, fieldName)
        if fieldName == 'error'
            return 'true'
        else
            return "" << @modal_id << "form." << fieldName << ".$invalid && " << @modal_id << "form.submitted"
        end
    end
end

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
