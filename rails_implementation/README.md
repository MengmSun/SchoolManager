# README

部署在https://intense-refuge-72826.herokuapp.com/

- Ruby version

  2.7

- System dependencies

ruby, gem, bundler, sqlite3

- Configuration

bundle install --without production

- Database creation

rails db:migrate

# RESTful API

## CRUD

每一个资源（resource）都有四种操作，查改增删（CRUD）还有索引对应 HTTP 的请求，以学生为例：

- GET /students 对应索引学生，支持搜索和分页，详见 Search 小节
- GET /students/:id :id 可以替换为任意存在的 id
- POST /students 对应创建学生对象
- PATCH/PUT /students/:id 对应修改相应的学生对象
- DELETE /students/:id 对应删除相应的学生对象

在 config/routes.rb 中，还有嵌套的 resource，这个可以支持嵌套的 URL，例如，想要在班级 1 中创建一个学生（注意注释）

POST /clazzes/1/students

```json
{
  "student": {
    "student_id": "PB17111001",
    //"clazz_id": 1, 可以不需要传clazz_id，因为在URL中可以获取到
    "id_number": "1111111",
    "id_type": "ID",
    "gender": "Male",
    "name": "Seinfeld",
    "email": "seinfeld@example.com"
  }
}
```

类似的，GET clazzes/1/students 可以索引班级 1 中的学生

创建、修改都需要传入对应的对象，创建

POST /students

```json
{
  "student": {
    "student_id": "PB17111001",
    "clazz_id": 1,
    "id_number": "1111111",
    "id_type": "ID",
    "gender": "Male",
    "name": "Seinfeld",
    "email": "seinfeld@example.com"
  }
}
```

如果想要修改
PUT/PATCH /students/:id

```json
{
  "student": {
    "email": "seinfeld@mail.com",
    "nationality": "US"
  }
}
```

## Search

索引操作同时用作查询，参数以 query string 的方式传递。查选的参数结构为，以学生为例，发送 GET /students 请求：

```json
{
  "q": {
    "name_matches": "张%",
    "clazz_grade_eq": 1
  },
  "page": 1, // 从1开始计数
  "limit": 20 // 每页的最大数量
}
```

来查询名字满足 LIKE "张%"的，且班级年级是 1 的学生，更多的谓词可以参考[Ransack Passing Arguments](https://github.com/activerecord-hackery/ransack/wiki/Using-Ransackers#6-passing-arguments-to-a-ransacker)和[Ransacker Search Matchers](https://github.com/activerecord-hackery/ransack#search-matchers)
