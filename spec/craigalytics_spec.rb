require 'spec_helper'

module Craigalytics
  describe Post do
    describe "#new" do
      it "should create a new post from a Feedzirra entry"
    end
  end

  describe PostCollection do
    describe "#new" do
      it "should use the category slug to create a new PostCollection with the proper url"
    end

    describe "#update" do
      it "should create posts if none exist"
      it "should only add a post if it doesn't already exist"
    end

    describe "#count" do
      it "should return an accurate count of posts that contain a given string"
    end
  end
end
