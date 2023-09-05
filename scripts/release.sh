export COMMIT_MESSAGE="feat: new version"
log() { echo ">>> $*" ; "$@" ; }

log git add . && \
log git commit -m "$COMMIT_MESSAGE" && \
log git tag -d v1 && \
log git tag -a v1 -m "$COMMIT_MESSAGE" && \
log git push origin master --force && \
\
log cd repos/action-aws && \
log rsync -avz ../../action-aws/ . && \
log git add . && \
log git commit -m "$COMMIT_MESSAGE" && \
log git tag -d v1 && \
log git tag -a v1 -m "$COMMIT_MESSAGE" && \
log git push origin master --force && \
log cd ../.. && \
\
log cd repos/action-pnpm && \
log rsync -avz ../../action-pnpm/ . && \
log git add . && \
log git commit -m "$COMMIT_MESSAGE" && \
log git tag -d v1 && \
log git tag -a v1 -m "$COMMIT_MESSAGE" && \
log git push origin master --force && \
\
echo ok
