FactoryGirl.define do
  factory :post do
    title "MyString"
    description "MyText"
    board_id "1"
  end
  factory :post_title, class: Post do
    description "MyText"
    board_id "1"
  end
  factory :post_description, class: Post do
    title "MyString"
    board_id "1"
  end
  factory :post_board, class: Post do
    title "MyString"
    description "MyText"
  end

end
