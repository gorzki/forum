FactoryGirl.define do
  factory :message do
    title "lolo"
    description "polo"
    sender_id "1"
    receiver_id "2"
  end
  factory :messages, class: Message do
    title "lolo"
    description "polo"
    sender_id "1"
    receiver_id "2"
    parent_id "1"
  end
  factory :message_title, class: Message do
    description "polo"
    sender_id "1"
    receiver_id "2"
  end
  factory :message_description, class: Message do
    title "lolo"
    sender_id "1"
    receiver_id "2"
  end
  factory :message_sender, class: Message do
    title "lolo"
    description "polo"
    receiver_id "2"
  end
  factory :message_receiver, class: Message do
    title "lolo"
    description "polo"
    sender_id "1"
  end

end
