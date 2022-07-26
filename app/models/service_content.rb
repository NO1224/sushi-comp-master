class ServiceContent < ActiveHash::Base
  #条件達成時のサービス用ハッシュデータ(配列)
  self.data = [
    { id: 1, condition: 'カウント数100皿達成', service: 'お好きな寿司ネタを一皿無料', category: 1},
    { id: 2, condition: 'カウント数300皿達成', service: 'お好きなソフトドリンクを一つ無料', category: 1},
    { id: 3, condition: 'カウント数500皿達成', service: 'アルコール含むお好きなドリンクを一つ無料', category: 1},
    { id: 4, condition: 'カウント数1000皿達成', service: '会計500円引き', category: 1},
    { id: 5, condition: '10種類コンプリート達成', service: '豪華景品Cコース抽選券', category: 2},
    { id: 6, condition: '50種類コンプリート達成', service: '豪華景品Bコース抽選券', category: 2},
    { id: 7, condition: '100種類コンプリート達成', service: '豪華景品Aコース抽選券', category: 2}
  ]
end