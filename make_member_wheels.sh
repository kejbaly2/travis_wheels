# Aggregate the exit status so build fails if a wheel is not created:
EXIT_STATUS=0
pip wheel --wheel-dir=./wheelhouse --no-deps requests || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps requests-kerberos || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps pyyaml || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps pytest || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps pytest-pep8 || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps instructions || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps PyGithub || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps pyrestful || EXIT_STATUS=$?

exit $EXIT_STATUS
