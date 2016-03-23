require 'rails_helper'

RSpec.describe "open_positions/show", :type => :view do
  before(:each) do
    @open_position = assign(:open_position, OpenPosition.create!(
      :number => 1,
      :summary => "MyText",
      :description => "MyText",
      :option => "MyText",
      :component => "Component",
      :category => "Category",
      :prio => "Prio",
      :responsible => "Responsible",
      :state => "State",
      :costmodel => "Costmodel",
      :affects_version => "Affects Version",
      :issue_ticket => "Issue Ticket",
      :ticket_text => "MyText",
      :notes => "MyText",
      :in_sprint => "In Sprint"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Component/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Prio/)
    expect(rendered).to match(/Responsible/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Costmodel/)
    expect(rendered).to match(/Affects Version/)
    expect(rendered).to match(/Issue Ticket/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/In Sprint/)
  end
end
