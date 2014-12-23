# Aggregate the exit status so build fails if a wheel is not created:
EXIT_STATUS=0
pip wheel --wheel-dir=./wheelhouse numpy==$NUMPY_VERSION_2 || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse matplotlib || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse pandas==$PANDAS_VERSION_1 || EXIT_STATUS=$?
pip wheel --wheel-dir=./wheelhouse pandas || EXIT_STATUS=$?

exit $EXIT_STATUS
