export COMMIT_MESSAGE="feat: new version"
log() { echo ">>> $*" ; "$@" ; }

log git add . && \
log git commit -m "$COMMIT_MESSAGE" && \
log git tag -d v1 && \
log git tag -a v1 -m "$COMMIT_MESSAGE" && \
log git push origin master && git push --force --follow-tags --tags && \
\
log cd repos/action-aws && \
log rsync -avz ../../action-aws/ . && \
echo "# It's copy of https://github.com/lskjs/action\n\n" > README.md && \
date >> README.md && \
log git add . && \
log git commit -m "$COMMIT_MESSAGE" && \
log git tag -d v1 && \
log git tag -a v1 -m "$COMMIT_MESSAGE" && \
log git push origin master && git push --force --follow-tags --tags && \
log cd ../.. && \
\
log cd repos/action-pnpm && \
log rsync -avz ../../action-pnpm/ . && \
echo "# It's copy of https://github.com/lskjs/action\n\n" > README.md && \
date >> README.md && \
log git add . && \
log git commit -m "$COMMIT_MESSAGE" && \
log git tag -d v1 && \
log git tag -a v1 -m "$COMMIT_MESSAGE" && \
log git push origin master && git push --force --follow-tags --tags && \
\
log cd repos/action-secret-file && \
log rsync -avz ../../action-secret-file/ . && \
echo "# It's copy of https://github.com/lskjs/action\n\n" > README.md && \
date >> README.md && \
log git add . && \
log git commit -m "$COMMIT_MESSAGE" && \
log git tag -d v1 && \
log git tag -a v1 -m "$COMMIT_MESSAGE" && \
log git push origin master && git push --force --follow-tags --tags && \
\
echo ok