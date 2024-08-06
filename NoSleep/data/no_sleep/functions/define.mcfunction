#> no_sleep:define
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

#define storage no_sleep:

### 

### TODO
## Done: ベッドで変更されたのか、コマンドで変更されたのか、それの記録もする
# 生き返ったときに、ベッドで記録されたスポーン地点であって、ベッドがないときは、
#   scheduleを使って1tick後になっちゃうけど、初期スポーン地点に飛ばす
## Done: ベッドを使った時に、ベッドが塞がれているかのチェック
##                   ⇧これは大変だから、リスポーン地点が変わったかどうかのチェックでいい？

## 死んだ瞬間にスペクテイターならアイテムは拾えないはず？

## リスポーンアンカーの可能性





## 復活できるかどうか(リスポーンできるかどうか) ≠ 使えるかどうか(リスポーン地点の設定)
## リスポーンできる環境でも、リスポーン地点として設定できない場合がある




## 前のスポーン地点の設定に戻すことは
## どうしてコマンドで完全な再現ができないのか

## ベッドの有無は、リスポーンする瞬間に判定される
## 一度ベッドを壊しても、リスポーンする瞬間にまたベッドがおいてあれば問題なくスポーンする

## バニラの挙動
## 生き返る瞬間にチェックして、ベッドがなければ初期スポにスポーン

## コマンドで挙動
## ベッドがなくても生き返った瞬間、ベッドがあった位置に居てしまう
## その瞬間にベッドがないことを検知して初期スポーン地点にテレポートさせることはできるけど
## その一瞬の間にアイテムを拾ったり、ポーション効果を受けたり、影響が考えられる


## 初期スポーン地点ってどこ？
## 普通は０，０
## setspawnpointつかうと変わってることもある
## ⇧これどうやって検知すればいいでしょうか？

## setspawnpointを使う時に、その場所を記録(更新)しておいてもらう
## ⇧ライブラリとしては不親切
## ライブラリの中のことは、外から気にしなくていいように作る！！
## インターフェースだけ公開して、中のことは知らないものなの

## setspawnpointによる初期スポーン地点の変化
## scheduleで検知するしかない
## scheduleで実行すると、実行対象がなし＆実行地点が初期スポーン地点で実行される
## 毎tick scheduleで調べるか、または

## ベッドがなかったら、scheduleで1tickあとに初期スポーン地点に飛ばす
## ⇧こっちの方がかるい
