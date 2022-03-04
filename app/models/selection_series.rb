class SelectionSeries < ActiveHash::Base
  self.data = [
    { id: 1, name: "1:a)桜 b)猫 c)電車" }, 
    { id: 2, name: "2:a)梅 b)犬 c)自動車" }
  ]

  include ActiveHash::Associations
  has_many :hdsr_logs
end