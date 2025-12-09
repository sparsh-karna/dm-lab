# a
v1 <- seq(3, 6, length.out = 5)
v2 <- rep(c(2, -5.1, -33), times = 2)
ans <- 742 + 2

a <- c(v1, v2, ans)
print(a)

# b
b <- c(a[1], a[length(a)])
print(b)

# c
c_obj <- a[-c(1, length(a))]
print(c_obj)

# d
a_reconstructed <- c(b[1], c_obj, b[2])
print(a_reconstructed)

# e
a <- sort(a)
print(a)

# f
rev1 <- a[length(a):1]
rev2 <- sort(a, decreasing = TRUE)

print(identical(rev1, rev2))   # should return TRUE

# g
g <- c(
  rep(c_obj[3], 3),
  rep(c_obj[6], 4),
  c_obj[length(c_obj)]
)
print(g)

# h
h <- a        # copy of (e)

h[c(1, 5:7, length(h))] <- 99:95
print(h)
