require 'rails_helper'

RSpec.describe "open_positions/new", :type => :view do
  before(:each) do
    assign(:open_position, OpenPosition.new(
      :number => 1,
      :summary => "MyText",
      :description => "MyText",
      :option => "MyText",
      :component => "MyString",
      :category => "MyString",
      :prio => "MyString",
      :responsible => "MyString",
      :state => "MyString",
      :costmodel => "MyString",
      :affects_version => "MyString",
      :issue_ticket => "MyString",
      :ticket_text => "MyText",
      :notes => "MyText",
      :in_sprint => "MyString"
    ))
  end

  it "renders new open_position form" do
    render

    assert_select "form[action=?][method=?]", open_positions_path, "post" do

      assert_select "input#open_position_number[name=?]", "open_position[number]"

      assert_select "textarea#open_position_summary[name=?]", "open_position[summary]"

      assert_select "textarea#open_position_description[name=?]", "open_position[description]"

      assert_select "textarea#open_position_option[name=?]", "open_position[option]"

      assert_select "input#open_position_component[name=?]", "open_position[component]"

      assert_select "input#open_position_category[name=?]", "open_position[category]"

      assert_select "input#open_position_prio[name=?]", "open_position[prio]"

      assert_select "input#open_position_responsible[name=?]", "open_position[responsible]"

      assert_select "input#open_position_state[name=?]", "open_position[state]"

      assert_select "input#open_position_costmodel[name=?]", "open_position[costmodel]"

      assert_select "input#open_position_affects_version[name=?]", "open_position[affects_version]"

      assert_select "input#open_position_issue_ticket[name=?]", "open_position[issue_ticket]"

      assert_select "textarea#open_position_ticket_text[name=?]", "open_position[ticket_text]"

      assert_select "textarea#open_position_notes[name=?]", "open_position[notes]"

      assert_select "input#open_position_in_sprint[name=?]", "open_position[in_sprint]"
    end
  end
end
