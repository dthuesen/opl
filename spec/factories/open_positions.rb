FactoryGirl.define do
  factory :open_position do
    number 1
    summary "MyText"
    description "MyText"
    option "MyText"
    component "MyString"
    category "MyString"
    prio "MyString"
    responsible "MyString"
    state "MyString"
    costmodel "MyString"
    affects_version "MyString"
    issue_ticket "MyString"
    ticket_text "MyText"
    notes "MyText"
    in_sprint "MyString"
  end
end
