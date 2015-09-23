# Aggregate the exit status so build fails if a wheel is not created:
EXIT_STATUS=0
pip wheel --wheel-dir=./wheelhouse --no-deps anyconfig || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps decorator || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps pytz || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps psycopg2 || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps simplejson || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps sqlalchemy || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps virtualenv || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse --no-deps python_dateutil || EXIT_STATUS=$?

exit $EXIT_STATUS
