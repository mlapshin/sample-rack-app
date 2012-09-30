# -*- coding: utf-8 -*-
require 'rack'

unless "".respond_to?(:each)
  String.class_eval do
    def each &block
      self.lines &block
    end
  end
end

class App
  def call(env)
    [200, {"Content-Type" => "text/html"}, "Hello Rack!"]
  end
end
