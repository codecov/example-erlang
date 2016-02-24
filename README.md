Erlang Example
==============
| [https://codecov.io/][1] | [@codecov][2] | [hello@codecov.io][3] |
| ------------------------ | ------------- | --------------------- |

> Example of how to integrate with [Codecov.io][1] for your **awesome** Erlang project!

## See this repo's [Coverage Reports][4]

## Usage

```sh
pip install codecov
codecov --token=<repo token>
```

## Private repositories
Please provide your private repository token (found at Codecov) to upload reports.

```
export CODECOV_TOKEN=:token
codecov
# or
codecov -t :token
```

# Some example CI providers

### [![travis-org](https://avatars2.githubusercontent.com/u/639823?v=2&s=50)](https://travis-ci.org) Travis CI
> Append to your `.travis.yml`

```yml
install:
    pip install codecov
after_success:
    codecov
```

> Note: No need to include a repository token for **public** repos on Travis


### [![circleci](https://avatars0.githubusercontent.com/u/1231870?v=2&s=50)](https://circleci.com/) [Circle CI](https://circleci.com/).
> Append to your `circle.yml` file

```yml
test:
    post:
        - pip install codecov && codecov
```
> Note: No need to include a repository token for **public** repos on CircleCI


## How to generate coverage reports

#### Default

```py
pip install coverage
coverage run tests.py
```

[1]: https://codecov.io/
[2]: https://twitter.com/codecov
[3]: mailto:hello@codecov.io
[4]: https://codecov.io/github/codecov/example-erlang
