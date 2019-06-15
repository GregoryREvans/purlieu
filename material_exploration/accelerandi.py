first_sequence = [20, 19, 18, 17, 16, 15, 13, 11, 9, 6, 3, 1]

faster_first_sequence = [_ * 0.1 for _ in first_sequence]
print(faster_first_sequence)

second_sequence = [20, 19, 18, 17, 16, 15, 13, 11, 9, 6, 3, 1]

faster_second_sequence = [_ * 0.06 for _ in second_sequence]
print(faster_second_sequence)

third_sequence = [20, 19, 18, 17, 16, 15, 13, 11, 9, 6, 3, 1]

faster_third_sequence = [_ * 0.01 for _ in third_sequence]
print(faster_third_sequence)
