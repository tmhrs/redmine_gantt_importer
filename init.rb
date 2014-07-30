require 'redmine'
require_dependency "redmine_ms_projects/hooks"

Redmine::Plugin.register :redmine_gantt_importer do
  name 'Redmine Gantt Importer plugin'
  author 'suer / y.yoshida'
  description 'Gantt chart import for Redmine'
  version '0.1.2'
  url 'https://github.com/yoshidayo/redmine_gantt_importer'
  author_url 'http://www.ibs.inte.co.jp/'

  project_module :msproject do
    #permission :msprojects, {:msprojects => [:index]}, :public => true
    permission :msprojects, :msprojects => :index
  end
  #menu :project_menu, :msprojects, { :controller => 'msprojects', :action => 'index' }, :caption => :msproject, :param => :project_id

end
