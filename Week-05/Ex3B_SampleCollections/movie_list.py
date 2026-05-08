a = "The Last Unicorn"
b = "Final Destination"
c = "Nightmare Before Christmas"
d = "Jack and the Cuckoo Clock Heart"
e = "Coraline"
f = "Corpse Bride"
g = "The Hunchback of Notre Dame"

movie_list = [a, b, c, d, e, f, g]
length = print(len(movie_list))


movie_list = str(7)
print("The list, movie_name, includes my top " + (movie_list) + " favorite movies.")

movie_list = [a, b, c, d, e, f, g]
print(movie_list)


print(sorted(movie_list))
print(movie_list)

movie_list.sort()
print(movie_list)

# Both of these sort queries result in the movie list being sorted in alphabetical order.
# The non-sorted queries produce the normal movie_list output, being listed in the order that their original variables are in.

movie_list.append("Death Becomes Her")
print(movie_list)

movie_list = str(8)
print("The list, movie_name, includes my top " + (movie_list) + " favorite movies.")