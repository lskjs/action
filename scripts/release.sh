export COMMIT_MESSAGE="feat: new version"

git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git push origin master && \
git push origin v1 && \
\
cp -R aws-auth