# [Codecov][1] Erlang Example
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
### Private Repos
```
export CODECOV_TOKEN=:token
codecov
# or
codecov -t :token
# ^ not just codecov
```

## Support

### Contact
- Intercom (in-app messanger)
- Email: support@codecov.io
- Slack: slack.codecov.io
- [gh/codecov/support](https://github.com/codecov/support)

1. More documentation at https://docs.codecov.io
2. Configure codecov through the `codecov.yml`  https://docs.codecov.io/docs/codecov-yaml



[1]: https://codecov.io/
[2]: https://github.com/codecov/example-php/blob/master/.travis.yml#L15
[3]: https://github.com/codecov/example-php/blob/master/.travis.yml#L18
[4]: https://github.com/codecov/codecov-python
