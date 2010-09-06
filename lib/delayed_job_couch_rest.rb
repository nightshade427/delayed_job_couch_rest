require 'couchrest_extended_document'
require 'delayed_job'
require 'delayed/serialization/couch_rest'
require 'delayed/backend/couch_rest'

Delayed::Worker.backend = :couch_rest
