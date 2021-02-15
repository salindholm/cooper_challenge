# The Cooper Challenge

## Description
This is the API of the full stack application we have created to get and save the users cooper results.

## The code
- [Deployment app(Netlify)](https://whssl-cooper-challenge.netlify.app/)
- [Client](https://github.com/salindholm/cooper_challenge)
- [Github](https://github.com/salindholm/cooper_api)

## User Stories
```
As a user,
In order to check how fit I am,
I want to be able to check my cooper results.
```
```
As a user,
In order to track my previous results,
I want to be able to save them in a database.
```

## Dependencies
- Rails
- Pg
- Puma
- Rack-cors
- Devise_token_auth
- RSpec
- Shoulda-matchers
- Factory_bot_rails 
- Pry-rails
- Pry-byebug

## Acknowledgements
- Course material from [Craft Academy](https://www.craftacademy.se/english/)

## Improvement plans
- More user management functions
    - Register
    - Update account, etc
    - OAuth login (Facebook, Twitter)
- Functionality
    - Add functionality to calculate VO2-max
    - Add functionality to include a BMI calculator
    - Add local storage for better performance (no internet connection)

## License
MIT License