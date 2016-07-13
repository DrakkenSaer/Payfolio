require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :title => "Title",
      :client => "Client",
      :general_type => "General Type",
      :specific_type => "Specific Type",
      :contact_name => "Contact Name",
      :contact_email => "Contact Email",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Client/)
    expect(rendered).to match(/General Type/)
    expect(rendered).to match(/Specific Type/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/MyText/)
  end
end
