## This is the absolute minimum program for running a background worker.

$stdout.sync = true # for foreman logging

require "backburner"
require_relative "jobs.rb"

Backburner.configure do |config|
  config.tube_namespace = "fakebook"
end
Backburner.work