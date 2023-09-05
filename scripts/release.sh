export COMMIT_MESSAGE="feat: new version"

git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git push origin master && \
git push origin v1 && \
\
cd repos/aws && \
rsync -avz ../../aws/ . && \
git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git push origin master && \
git push origin v1 && \
\
cd repos/pnpm && \
rsync -avz ../../aws/ . && \
git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git push origin master && \
git push origin v1 && \
\
echo ok
