require 'spec_helper'

describe "groups/new" do
  before(:each) do
    assign(:group, stub_model(Group).as_new_record)
  end

  it "renders new group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", groups_path, "post" do
    end
  end
end
