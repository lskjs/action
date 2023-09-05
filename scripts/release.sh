export COMMIT_MESSAGE="feat: new version"

git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git push --follow-tags && \
\
cd repos/aws && \
rsync -avz ../../aws/ . && \
git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git push --follow-tags && \
\
cd repos/pnpm && \
rsync -avz ../../aws/ . && \
git add . && \
git commit -m "$COMMIT_MESSAGE" && \
git push --follow-tags && \
\
echo ok
