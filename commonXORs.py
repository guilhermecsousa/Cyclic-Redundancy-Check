import collections
import itertools


a = [
[2, 4, 6, 7, 8, 9, 10, 11, 14],
[1, 3, 5, 6, 7, 8, 9, 10, 13],
[0, 2, 4, 5, 6, 7, 8, 9, 12],
[1, 2, 3, 5, 9, 10, 14],
[0, 1, 2, 4, 8, 9, 13],
[0, 1, 2, 3, 4, 6, 9, 10, 11, 12, 14, 15],
[0, 1, 3, 4, 5, 6, 7, 13, 15],
[0, 3, 5, 7, 8, 9, 10, 11, 12, 15]
]

counts = collections.defaultdict(int)
for collab in a:
    collab.sort()
    for pair in itertools.combinations(collab, 2):
        counts[pair] += 1

for pair, freq in counts.items():
    print(pair, freq)