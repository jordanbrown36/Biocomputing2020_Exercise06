#Returns top earner with years of experience and wage, bottom earner with years of experience and wage, and number of females in top 10 earners.
# usage bash wages2.sh
echo -n "top earner: " 
cat wages.csv | cut -d , -f 1,2,4 | sort -k 4 -r | head -n 1 
echo -n "bottom earner: " 
cat wages.csv | cut -d , -f 1,2,4 | sort -k 4 -r | tail -n 1
echo -n "number of females in top 10:"
cat wages.csv | cut -d , -f 1,2,4 | sort -k 4 -r | head -n 10 | grep female | wc -l 
