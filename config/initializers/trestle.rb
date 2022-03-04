Trestle.configure do |config|
  config.hook("stylesheets") do
    stylesheet_link_tag("trestle/good_job")
  end

  config.hook("view.header") do
    render "trestle/good_job/header"
  end
end
