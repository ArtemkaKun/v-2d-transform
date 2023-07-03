module trnsfrm2d

const zero_vector = Vector{0, 0}

fn test_calculate_distance_between_2_vectors() {
	second_vector := Vector{1, 0}

	assert calculate_distance_between_vectors(trnsfrm2d.zero_vector, second_vector).eq_epsilon(1.0)
}

fn test_calculate_distance_between_2_vectors_y_shift() {
	second_vector := Vector{0, 1}

	assert calculate_distance_between_vectors(trnsfrm2d.zero_vector, second_vector).eq_epsilon(1.0)
}

fn test_calculate_distance_between_2_vectors_x_y_shift() {
	second_vector := Vector{1, 1}

	assert calculate_distance_between_vectors(trnsfrm2d.zero_vector, second_vector).eq_epsilon(1.4142135623730951)
}

fn test_calculate_distance_between_zero_and_negative_vectors() {
	second_vector := Vector{-1, -1}

	assert calculate_distance_between_vectors(trnsfrm2d.zero_vector, second_vector).eq_epsilon(1.4142135623730951)
}

fn test_calculate_distance_between_zero_and_mixed_shift_vector_x_negative() {
	second_vector := Vector{-1, 1}

	assert calculate_distance_between_vectors(trnsfrm2d.zero_vector, second_vector).eq_epsilon(1.4142135623730951)
}

fn test_calculate_distance_between_zero_and_mixed_shift_vector_y_negative() {
	second_vector := Vector{1, -1}

	assert calculate_distance_between_vectors(trnsfrm2d.zero_vector, second_vector).eq_epsilon(1.4142135623730951)
}
