require "rails_helper"

RSpec.feature "Browse files:" do
  feature "Given a filesystem in S3" do
    # need to set up the S3 filesystem here
    feature "When I go to /files" do
      before do
        visit "/files"
      end

      scenario "Then I should see the filesystem" do
        expect(page).to have_link "marketing"
        expect(page).to have_link "technology"

        click_on "marketing"
        expect(page).to have_link "mission"

        click_on "technology"
        expect(page).to have_link "teams"
      end
    end
  end
end
