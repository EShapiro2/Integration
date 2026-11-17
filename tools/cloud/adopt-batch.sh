# Code #33, 2026-11-17: adopts the 66 contracts of a Calculus batch on the batch branch: copy calculus/contracts/<File>/ to calculus/<File>/ first (untracked), and a list NAME|File per line in /home/user/tmp/nf.txt; adopt.py --write each into its owner's directory, then adopt.py and --check each.  Commit programs/ only; the helpers print the records.
cd /home/user/wt/const && export GLP_DIR=$PWD; rm -f calculus/PATHS.txt
python3 calculus/tools/adopt.py --paths >/dev/null 2>&1
while IFS='|' read -r name file; do
  d=$(dirname "$(awk -v f="$file" '$1==f && $2 ~ /^programs/ {print $2}' calculus/PATHS.txt)")
  python3 calculus/tools/adopt.py --write "$name" "$d" 2>&1 | tail -2
done < /home/user/tmp/nf.txt
rm -f calculus/PATHS.txt
while IFS='|' read -r name file; do
  python3 calculus/tools/adopt.py "$name" 2>&1 | tail -2
  python3 calculus/tools/adopt.py --check "$name" >/dev/null 2>&1; echo "CHECK $file $?"
done < /home/user/tmp/nf.txt
rm -f calculus/PATHS.txt
echo ALLDONE
