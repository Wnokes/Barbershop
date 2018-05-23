class PagesController < ApplicationController
  def home
  	@contact = ContactInfo.first
  end
end
