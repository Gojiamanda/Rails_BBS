class Board < ApplicationRecord
  has_many :thres, dependent: :destroy

  validates :name, presence: true

  scope :latest, -> {joins(:thre).merge(Thre.latest)}
  scope :old, -> {joins(:thre).merge(Thre.old)}
  scope :many, -> {joins(:thre).merge(Thre.many)}
  scope :few, -> {joins(:thr).merge(Thre.few)}
end
