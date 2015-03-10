require 'rails_helper'

RSpec.describe ApplicationController, :type => :controller do
  describe "CSRF protection" do
    # before(:each) do
    #   board.make_move([3, 4], [2, 3])
    # end

    it "protects from forgery" do
      expect(ApplicationController.new.forgery_protection_strategy).not_to be_nil
    end
  end
end
