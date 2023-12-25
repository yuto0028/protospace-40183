# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル

| Column             | Type   | Options          |
| ------------------ | ------ | ---------------- |
| email              | string | NOT NULL, UNIQUE |
| encrypted_password | string |     NOT NULL     |
| name               | string |     NOT NULL     |
| profile            |  text  |     NOT NULL     |
| occupation         |  text  |     NOT NULL     |
| position           |  text  |     NOT NULL     |

### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type       | Options              |
| ---------- | ---------- | -------------------- |
| title      |   string   |       NOT NULL       |
| catch_copy |    text    |       NOT NULL       |
| concept    |    text    |       NOT NULL       |
| user       | references | NOT NULL, user_email |

### Association

- belongs_to :users
- has_many :comments

## comments テーブル

| Column    | Type       | Options                  |
| --------- | ---------- | ------------------------ |
| content   |    text    |         NOT NULL         |
| prototype | references | NOT NULL, prototype_user |
| user      | references |   NOT NULL, user_email   |

### Association

- belongs_to :comments
- belongs_to :users