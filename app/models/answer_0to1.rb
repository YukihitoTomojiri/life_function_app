class Answer0to1 < ActiveHash::Base
  self.data = [
    { id: 1, name: "0" }, 
    { id: 2, name: "1" }
  ]

  include ActiveHash::Associations
  has_many :hdsr_logs
end