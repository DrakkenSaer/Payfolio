require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :title => "MyString",
      :client => "MyString",
      :general_type => "MyString",
      :specific_type => "MyString",
      :contact_name => "MyString",
      :contact_email => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "input#project_client[name=?]", "project[client]"

      assert_select "input#project_general_type[name=?]", "project[general_type]"

      assert_select "input#project_specific_type[name=?]", "project[specific_type]"

      assert_select "input#project_contact_name[name=?]", "project[contact_name]"

      assert_select "input#project_contact_email[name=?]", "project[contact_email]"

      assert_select "textarea#project_description[name=?]", "project[description]"
    end
  end
end
