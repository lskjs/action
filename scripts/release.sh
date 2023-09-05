export COMMIT_MESSAGE="feat: new version"

git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git tag -d v1 && \
git tag -a v1 -m "$COMMIT_MESSAGE" && \
git push origin master && \
\
cd repos/aws && \
rsync -avz ../../aws/ . && \
git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git tag -d v1 && \
git tag -a v1 -m "$COMMIT_MESSAGE" && \
git push origin master && \
\
cd repos/pnpm && \
rsync -avz ../../aws/ . && \
git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git tag -d v1 && \
git tag -a v1 -m "$COMMIT_MESSAGE" && \
git push origin master && \
\
echo ok
