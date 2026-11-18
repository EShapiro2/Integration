# Code, 2026-11-18: the record of a contract adopt.py cannot expand (its first line instantiates with no binding), from the Calculus's printed files, checked by programs/gsc's check/2.
set -u
cd /home/user/wt/schemas; G=$PWD
row=$1; F=$2; D=$3; C=calculus/contracts/$F; R=cascade/$F; W=$(mktemp -d)
CT=$(tr '\n' ' ' < $C/term.glp.txt | sed -e 's/[. ]*$//')
printf '%s\n:limit 1000000000\ncheck(%s, V).\n:quit\n' "$G/programs/gsc/" "$CT" > $W/v.in
(cd glp_runtime && bin/glpc < $W/v.in 2>&1) | sed -e 's/^\(GLP> \)*//' > $W/v.out
VT=$(grep -E '^V = ' $W/v.out | head -1 | sed -e 's/^V = //')
[ -n "$VT" ] || { echo "$F: no verdict"; grep -i error $W/v.out | head -3; exit 1; }
rm -rf $R; mkdir -p $R
cp $D/$F.txt $R/; cp $C/term.glp.txt $R/$F.glp
for f in schemas.txt full-contract.txt full-pragmas.txt full-schemas.txt flat.txt relations.txt; do cp $C/$f $R/; done
echo "$VT" > $R/verdict.txt
{ echo "# cascade/$F: the contract checked, nothing compiled"; echo ""
  echo "$F.glp and the printed files are the Calculus's, calculus/contracts/$F/ at GLP $(git rev-parse --short=8 HEAD): calculus/tools/adopt.py does not expand its first line, which instantiates with no binding, so the full contract shows its own text alone."
  echo "The verdict, by programs/gsc's check/2 on that term: \`$VT\`.  No VMAT form, platform or run: the contract is not compiled."; } > $R/manifest.md
echo "$F: $VT"; rm -rf $W
