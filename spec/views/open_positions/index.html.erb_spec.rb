require 'rails_helper'

RSpec.describe "open_positions/index", :type => :view do
  before(:each) do
    assign(:open_positions, [
      OpenPosition.create!(
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
      ),
      OpenPosition.create!(
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
      )
    ])
  end

  it "renders a list of open_positions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Component".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Prio".to_s, :count => 2
    assert_select "tr>td", :text => "Responsible".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Costmodel".to_s, :count => 2
    assert_select "tr>td", :text => "Affects Version".to_s, :count => 2
    assert_select "tr>td", :text => "Issue Ticket".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "In Sprint".to_s, :count => 2
  end
end
