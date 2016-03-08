FactoryGirl.define do
  factory :message do
    title "lolo"
    description "polo"
    sender_id "1"
    receiver_id "2"
  end

  factory :message_first, class: Message do
    id "1"
    title "lolo"
    description "polo2"
    sender_id "1"
    receiver_id "2"
    parent_id nil
  end

  factory :message_child, class: Message do
    title "lolo"
    description "polo"
    sender_id "1"
    receiver_id "2"
    parent_id "1"
  end

end
