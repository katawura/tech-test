## Any instructions required to run your solution and tests in a Linux environment.

Install Ruby
Install Rails
Install homebrew
Install rbenv via homebrew
Navigate to the solution root using the command line
Run bundle install
Run the seed data using rake db:setup
Run rake db:migrate
Finally run rails s
Open the up in your broswer on the default port 3000 (http://localhost:3000)

## A covering note explaining the technology choices you have made.

My app is mainly built using Ruby on the Rails framework. Both the language and the framework encapsulated security, performance, readability, testability, scalability, simplicity. Also made it easier to implement my MVC logic.

Wrote client code that send pre-designed objects as a POST request

Jquery ensured we didn't refresh our page

Prepared an endpoint through the routes.rb to receive JSON from the client side

Rails served HTML to web browsers and JSON to API requests from the same controller action, making it possible to power my SPI web app.
