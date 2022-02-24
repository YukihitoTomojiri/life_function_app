class CareCertified < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' }, { id: 2, name: '自立' }, { id: 3, name: '申請中' },
    { id: 4, name: '要支援1' }, { id: 5, name: '要支援2' }, { id: 6, name: '要介護1' },
    { id: 7, name: '要介護2' }, { id: 8, name: '要介護3' }, { id: 9, name: '要介護4' },
    { id: 10, name: '要介護5' }
  ]

  include ActiveHash::Associations
  has_many :patient
end
