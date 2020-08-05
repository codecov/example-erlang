# [Codecov](https://codecov.io) Erlang Example

## Guide

### Travis Setup

Add to your `.travis.yml` file.
```yml
language: erlang
install:
    pip install codecov
after_success:
  - codecov
```

## Caveats
### Private Repo
Repository tokens are required for (a) all private repos, (b) public repos not using Travis-CI, CircleCI or AppVeyor. Find your repository token at Codecov and provide via appending `-t <your upload token>` to you where you upload reports.

## Links
- [Community Boards](https://community.codecov.io)
- [Support](https://codecov.io/support)
- [Documentation](https://docs.codecov.io)
