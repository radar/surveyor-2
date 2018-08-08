# Surveyor - Culture Amp Junior Engineering Coding Test

Hi! Thanks for applying for the Junior Engineering Program at Culture Amp.

What you'll find in this little directory is some code that was generated using the `bundle gem` command from the Bundler gem. This code is the code for an (imaginary) gem called "surveyor", which helps represent survey data within Ruby.

The two main sub-directories we would like to highlight are `lib` and `spec`. The code to make your gem work should go in `lib`, but the code that tests that should go in `spec`.

## Setup

For this coding test, you will first need to have Ruby 2.5 installed on your machine.

You will also need Bundler installed:

```
gem install bundler
```

Once you have Ruby + Bundler installed, you can install the gem dependencies for this test with this command:

```
bundle install
```

This will install the dependencies

You can verify that your code matches the Ruby Style Guide and what's configured in `.rubocop.yml` by running:

```
bundle exec rubocop
```

## Coding Challenge

Your task is to continue building out this gem by adding additional features.

### Make the tests pass

We have written a few tests to get you started. Your job is to make these tests pass. These tests are written using [the RSpec testing framework](https://relishapp.com/rspec).

In `.rspec` (the RSpec configuration file), there is an option called `--fail-fast` that will make it so that only one test at a time fails for you. We have also ordered the tests with `0x` prefixes for their filenames and the `--order name` option in the `.rspec` file too.

To get started here, you can run the tests and see what is failing by running `bundle exec rspec`.

Your first task is to make this first test (`01_survey_spec.rb`) pass in whatever way you can. There is more than one reason why this particular test is failing.

### Questions classes

Your next task is to make the tests pass for the `RatingQuestion` and `FreeTextQuestion` classes.

Questions are included on a survey to give the people doing a survey something to answer. There is a top-level class called `Question` which acts as a superclass to all other question classes. There are two other question classes: `RatingQuestion` and `FreeTextQuestion`. These both inherit from the `Question` class.

All question instances should have a `title` attribute. You should be able to add questions to a survey. You should be able to ask a survey what its questions are.

There are tests for these already in `02_question_spec.rb` for the things in this section. Your job now is to make those tests pass.

### Adding different types of questions

As you saw in the last section, there are two types of questions in this application: `RatingQuestion` and `FreeTextQuestion`. Rating questions are those questions that could have answers between 1 and 5. Free text questions have answers that are text-based. Think of these "free text" questions like comments.

There are more tests, this time in `03_free_text_question_spec.rb` and `04_rating_question_spec.rb`, which determine what these classes should do. Your task here is to make these tests pass.

Add a method to each of `FreeTextQuestion` and `RatingQuestion` classes that determines if a given answer would be valid. This method should return `true` or `false`, depending on the validity of the answer. For text questions, the answer is valid if it is any string -- even an empty string is OK. For rating questions, valid answers are any of the numbers between 1 and 5. That is: 1, 2, 3, 4 or 5 are all valid answers. -1 is invalid, as is 6.

### Adding responses and answers

And now we get to a harder part of the coding test where there are no pre-written tests to guide you. It is up to you now to write tests and the code that goes along with them in order to continue.

*From this point on, it is assumed that you will be writing tests and code for each part as you go.*

Your task is to now add responses to this application. Responses are included on a survey as a way of tracking a particular person's response to a survey. A response will include a particular person's answers to the survey's questions. To represent that data, you should add a `Response` class which will be used to represent a survey's responses.

Add a `Response` class to the application. Responses should have an `email` attribute that tracks the email address of the user who has submitted the response.

You should be able to add responses to a survey, and also ask a survey what its responses are.

### Adding answers

Now that this application has responses, the next task is to add answers. Answers are included on a response to track what a particular person's answers were to questions on a survey.

Add an `Answer` class to the application. Answers should have a `question` attribute. You should be able to ask an answer what its question is. It should not be possible to create an answer without specifying a question.

An answer should have a `value` attribute that represents the answer for the question.

It is not necessary to link an answer to a survey. Instead, answers should be added to responses. You should be able to ask a response what its answers are.

### Finding a particular user's response

Add a new method that lets you find a survey's response by the user's email address. If the response is not found, then this method should return `nil`.

### Finding negative / neutral / positive answers

Surveys should be able to tell us how many positive, neutral or negative answers there are for a particular rating question. The different ratings are:

* Negative: 1 or 2
* Neutral: 3
* Positive: 4 or 5

Make it so that you can ask a survey to count the negative, neutral and positive answers for a given question on a survey. It should be possible to query a survey for negative, neutral and positive scores independently of each other. e.g. You should be able to ask for _only_ the count of negative scores for a question, without also calculating the neutral and positive scores for that same question.

### Answer breakdown

Surveys should be able to give us a breakdown of the answers for a particular rating question. This breakdown should tell us the number of each answer there was for that rating question in a format like:

```
1: 10
2: 41
3: 4
4: 13
5: 17
```

In this example, there would be 10 answers for the rating question that had the value "1", 41 with the value "2" and so on.

## Assessment

You will be assessed on the code you write here. What we're looking for in particular is:

* Strong adherence to the [ruby-style-guide](https://github.com/bbatsov/ruby-style-guide)
* Clean & simple Ruby code in `lib`
* Tests in the `spec` directory to cover what your gem does

It is possible to complete this coding challenge without adding any additional gems. You should aim to do as much as possible without adding additional gems to the `surveyor.gemspec` or `Gemfile` files.

You can run `bundle exec rubocop` to check to see if your code complies with the `.rubocop.yml` file within this project. The output of this command should ideally contain the words "no offenses detected". This will be used to gauge how clean your Ruby code is.

## Submitting the coding test

If you think you've finished with the coding test, then please do submit it back to us by following the instructions in the email. We'll evalulate it and get back to you.

Good luck!

