# Researchers

This is a web aplication to show information relate with https://www.datos.gov.co/api/views/vpq6-gyc3/rows.csv?accessType=DOWNLOAD through an interface administration and API

## Database Model Proposed

![Database model](https://raw.githubusercontent.com/developerfab/researchers/master/analisys/database_model.jpg)

## System Requeriments

* Find data thought an api
* Find and load data by and admin interface
* Add user permissions

## User requeriments

# Administrator

  * Load csv files
  * Watch the loaded file(how? by tables?)

# Specialist

  * Watch the loaded file(how? by tables?)

# Api

  * Find by model
  * Filter by model

## Requeriments

* For run in localhost you need install [rbenv](https://github.com/rbenv/rbenv) or [rvm](https://rvm.io)
* Postgres 9.4 or higher

## How to run this project?

1. Copy the `env.example` to `.env`

```bash
$ cp env.example .env
```

And please update the configuration in the new file

2. Install `bundler` gem

```bash
$ gem install bundler
```

3. Run the bundler installer

```bash
$ bundle install
```

4. Run the yarn installer

```bash
$ yarn install
```

5. Run the migrations

```bash
$ bin/rake db:create db:migrate
```

