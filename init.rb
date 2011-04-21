require 'redmine'

Redmine::Plugin.register :chiliproject_require_time_entry_issue do
  name 'Require Time Entry'
  author 'Eric Davis of Little Stream Software'
  description 'Require Time Entry is a plugin that Require an issue when logging time'
  url 'https://projects.littlestreamsoftware.com/projects/redmine-misc'
  author_url 'http://www.littlestreamsoftware.com'

  version '0.1.0'
end
require 'dispatcher'
Dispatcher.to_prepare :chiliproject_require_time_entry_issue do

  require_dependency 'time_entry'
  TimeEntry.send(:include, ChiliprojectRequireTimeEntryIssue::Patches::TimeEntryPatch)
end