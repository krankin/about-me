require 'spec_helper'

describe "blogs/index" do
  before(:each) do
    assign(:blogs, [
      stub_model(Blog,
        :body => "MyText"
      ),
      stub_model(Blog,
        :body => "MyText"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
