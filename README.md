App for adding quotes and comment on them. As per the specification, no user authentication has been added.

Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ bundle exec rspec
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
