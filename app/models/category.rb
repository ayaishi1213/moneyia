class Category < ActiveHash::Base
  self.data = [
    { id: 1,  name: '--'},
    { id: 2,  name: '株式'}
    { id: 3,  name: '債券'}
    { id: 4,  name: '投資信託'}
    { id: 5,  name: 'FX'}
    { id: 6,  name: '保険'}
    { id: 7,  name: 'iDeCo'}
    { id: 8,  name: 'REIT'}
    { id: 9,  name: '積立NISA'}
    { id: 10, name: '外貨建て商品'}
    { id: 11, name: 'その他'}
  ]