require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  self.class.column_names.each do |prop, val|
    self.send("#{prop}=", val)
end
