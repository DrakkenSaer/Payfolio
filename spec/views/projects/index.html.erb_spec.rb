require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :title => "Title",
        :client => "Client",
        :general_type => "General Type",
        :specific_type => "Specific Type",
        :contact_name => "Contact Name",
        :contact_email => "Contact Email",
        :description => "MyText"
      ),
      Project.create!(
        :title => "Title",
        :client => "Client",
        :general_type => "General Type",
        :specific_type => "Specific Type",
        :contact_name => "Contact Name",
        :contact_email => "Contact Email",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "General Type".to_s, :count => 2
    assert_select "tr>td", :text => "Specific Type".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
