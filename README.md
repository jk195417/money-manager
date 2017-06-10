# 記帳Web App

## 版本資訊
- Ruby 2.4.0
- Rails 5.0.1
- Bootstrap 3
- Postgres 9.5.4

## 下載
    $ git clone https://github.com/jk195417/MoneyManager.git

## 安裝
使用`rvm`管理Ruby版本，如果你還沒安裝`rvm`，請參考 https://rvm.io/ 安裝`rvm`。  
如果你還沒安裝`Ruby 2.4.0`跟`Rails 5.0.1`
```
$ rvm install ruby-2.4.0
$ gem install rails --version=5.0.1
```
>關於Rails環境配置，可以參考 http://railsapps.github.io/installing-rails.html 內有很詳盡的流程。

環境準備就緒後
```
$ rails db:create
$ rails db:migrate
$ rails s
```
前往 http://localhost:3000 查看
## 部屬

## 待增加功能
- 會員登入
