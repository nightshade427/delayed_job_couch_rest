require 'rubygems'
require 'bundler/setup'
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'spec'
require 'spec/autorun'
require 'delayed_job_couch_rest'
require 'delayed/backend/shared_spec'

Spec::Runner.configure do |config|
  
end

DB = Delayed::Backend::CouchRest::Job.use_database(CouchRest::Server.new.database!('delayed_job_spec'))

class Story < CouchRest::ExtendedDocument
  use_database DB
  property :text
  
  def tell; text; end       
  def whatever(n, _); tell*n; end
  def self.count; end

  handle_asynchronously :whatever
end

