git filter-branch -f --env-filter "
SET OLD_EMAIL=meabhisingh25@gmail.com
SET CORRECT_NAME=Fake Name
SET CORRECT_EMAIL=fake.email@example.com

if \"%GIT_COMMITTER_EMAIL%\"==\"%OLD_EMAIL%\" (
    set GIT_COMMITTER_NAME=%CORRECT_NAME%
    set GIT_COMMITTER_EMAIL=%CORRECT_EMAIL%
)
if \"%GIT_AUTHOR_EMAIL%\"==\"%OLD_EMAIL%\" (
    set GIT_AUTHOR_NAME=%CORRECT_NAME%
    set GIT_AUTHOR_EMAIL=%CORRECT_EMAIL%
)
"

