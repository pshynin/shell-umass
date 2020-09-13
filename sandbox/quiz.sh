STREET="59 Lowes Way"
CITY="Lowell"
STATE="MA"
ADDRESS="$STREET
$CITY, $STATE"

# echo "$ADDRESS"

# echo '$ADDRESS'
# echo "$ADDRESS"
# echo $ADDRESS



TESTME="0123456789"
# shellcheck disable=SC2000
# echo "$TESTME" | wc -c
# shellcheck disable=SC2001
# echo "$TESTME" | sed -e 's/.*\(.\)$/\1/'

P1="Hello   world   I   am   here"
P1=`echo "$P1" | tr '\t' ' ' | sed -e 's/[ ]//g'`
echo "$P1"
