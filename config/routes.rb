Trestle::Engine.routes.draw do

  mount GoodJob::Engine => "/good_job/web" #, constraints: Trestle::Auth::Constraint.new
  # get "/good_job", to: redirect("login", status: 302)
end
