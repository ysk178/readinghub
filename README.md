# README

## アプリケーション名
  Reading Hub

## アプリケーション概要
  自分が読んだ本の内容を投稿できる
  他のユーザーが投稿した本の内容を参照できる

## URL

## テスト用アカウント

## 利用方法
  新規投稿方法
    ログイン→トップページから投稿ボタンを押下→情報を入力してSENDボタンを押下

## 目指した課題解決
  本の情報を共有することで、自分の読書をより充実させたいという思いを抱える方の課題を解決したいと考えた

## 洗い出した要件
  新規投稿機能: ユーザーが新規投稿できる
  ユーザー管理機能: サインイン、ログイン、ログアウトができる
  投稿一覧表示機能: 投稿の一覧がトップページに表示される
  投稿詳細表示機能: 投稿の詳細を表示できる
  投稿編集機能: 投稿者は投稿内容を変更することができる
  投稿削除機能: 投稿者は投稿を削除することができる


## 実装した機能
  新規投稿機能
  ユーザー管理機能
  投稿一覧表示機能
  投稿詳細表示機能
  投稿編集機能
  投稿削除機能

## 実装予定の機能

## ローカルでの動作方法


## データベース設計
## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password |        |             |

### Association

has_many :books
has_many :comments

## books テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| author      | string     | null: false                    |
| text        | text       | null: false                    |
| genre_id    | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

belongs_to :user
has_many :comments


## comments テーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| book   | references | null: false, foreign_key: true |

### Association

belongs_to :user