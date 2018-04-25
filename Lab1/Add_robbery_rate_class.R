
nt = nrow(r)/3
nt_b = length(unique(r$town_number))

# so for 230 towns, we need to create 50 matches

# Let's try a for loop.

for(a in 1:nrow(r)){
    mat = match(robberies$assault[a],crimes$assaults) 
    r[a,]$x = crimes[mat,]$town
    r[a,]$y = crimes[mat,]$population
}

