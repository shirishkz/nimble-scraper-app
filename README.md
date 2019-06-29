# Nimble Scraper App 🛰

A web scraper app using Nokogiri that extracts relevant data from Google Search.

## Prerequisites
 
- Ruby version: 2.6.3

- Rails version: 5.2.3

- Database: PostgresSQL 11.4

- Frontend UI: Bootstrap 3 w/ Sass

- Linter: RuboCop

- Test Framework: RSpec w/ SimpleCov

- App URL: [Nimble Scraper App](https://nimble-scraper-app.herokuapp.com/)

## Dataset Example

CSV layout to feed data into the app

```
id,query
1,lazada
2,11street
3,samsung
4,apple
5,dtac
6,ais
7,truemove
```

## Setup

### Clone the repository

```she
git clone git@github.com:shirishkz/nimble-scraper-app.git
cd project
```

### Install dependencies

```sh
bundle install
```

### Set environment variables

Use [Figaro](https://github.com/laserlemon/figaro) or setup API and Secret keys on a ```.env``` file 

## Usage

### Initialize database

```sh
rails db:setup
```

### Serve app

```sh
rails server
```

### Run tests

```sh
rspec
```

## Author

👤 **Shirish Kayastha**

* Twitter: [@iamshirishkz](https://twitter.com/iamshirishkz)
* Github: [@shirishkz](https://github.com/shirishkz)

## Contributing

Contributions, issues and feature requests are welcome!<br/>
Feel free to check [issues page](https://github.com/shirishkz/nimble-scraper-app/issues).

## License

Copyright © 2019 [Shirish Kayastha](https://github.com/shirishkz).<br/>
This project is [MIT](https://opensource.org/licenses/MIT) licensed.

## Acknowledgments

* [Nokogiri](http://www.nokogiri.org/)
* [Railscasts](http://railscasts.com/)
* [GoRails](https://gorails.com/)

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
