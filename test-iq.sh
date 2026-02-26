
#!/bin/bash
for i in {30..1}; do
    D=$(date -v-"$i"d +%Y-%m-%d)
    GIT_COMMITTER_DATE="$D 12:00:00" git commit --date="$D 12:00:00" -m "Commit $D" --allow-empty
done
