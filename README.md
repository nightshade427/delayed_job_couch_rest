# delayed_job CouchRest backend

## Installation

Add the gems to your Gemfile:

    gem 'delayed_job', '2.1.0.pre2'
    gem 'delayed_job_couch_rest', '1.0.0.rc'
  
Add this in an initializer:

    # config/initializers/delayed_job.rb
    Delayed::Worker.backend.auto_upgrade!

That's it. Use [delayed_job as normal](http://github.com/collectiveidea/delayed_job).
