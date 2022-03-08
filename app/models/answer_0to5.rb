class Answer0to5 < ActiveHash::Base
  self.data = [
    { id: 1, name: '0' },
    { id: 2, name: '1' },
    { id: 3, name: '2' },
    { id: 4, name: '3' },
    { id: 5, name: '4' },
    { id: 6, name: '5' }
  ]

  include ActiveHash::Associations
  has_many :hdsr_logs
end
