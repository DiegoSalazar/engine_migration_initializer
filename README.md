# EngineMigrationInitializer

Allows a Rails engine's migrations to be loaded by the host app rather than having to copy them over with `rake your_engine:install:migrations`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'engine_migration_initializer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install engine_migration_initializer

## Usage

In your engine's `engine.rb`:

```ruby
module YourEngine
  class Engine < ::Rails::Engine
    extend EngineMigrationInitializer
  end
end
```

And that's it. Now, just run `rake db:migrate` as normal from your host app and it will pick up any migrations in your engine.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/engine_migration_initializer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
