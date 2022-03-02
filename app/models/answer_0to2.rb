class Answer0to2 < ActiveHash::Base
  self.data = [
    { id: 1, name: "0" }, 
    { id: 2, name: "1" },
    { id: 3, name: "2" }
  ]

  include ActiveHash::Associations
  has_many :hdsr_logs
end