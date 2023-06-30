module trnsfrm2d

fn test_normalize_vector_with_zero_x() {
	check_if_vector_values_expected(normalize_vector_helper(0, 1), 0, 1)
}

fn test_normalize_vector_with_zero_y() {
	check_if_vector_values_expected(normalize_vector_helper(1, 0), 1, 0)
}

fn test_normalize_vector_with_zero_x_and_y() {
	check_if_vector_values_expected(normalize_vector_helper(0, 0), 0, 0)
}

fn test_normalize_vector_with_positive_x_and_y() {
	check_if_vector_values_expected(normalize_vector_helper(1, 1), 0.7071067811865475,
		0.7071067811865475)
}

fn test_normalize_vector_with_negative_x_and_y() {
	check_if_vector_values_expected(normalize_vector_helper(-1, -1), -0.7071067811865475,
		-0.7071067811865475)
}

fn test_normalize_vector_with_positive_x_and_negative_y() {
	check_if_vector_values_expected(normalize_vector_helper(1, -1), 0.7071067811865475,
		-0.7071067811865475)
}

fn test_normalize_vector_with_negative_x_and_positive_y() {
	check_if_vector_values_expected(normalize_vector_helper(-1, 1), -0.7071067811865475,
		0.7071067811865475)
}

fn test_normalize_vector_with_positive_x_and_y_greater_than_one() {
	check_if_vector_values_expected(normalize_vector_helper(2, 2), 0.7071067811865475,
		0.7071067811865475)
}

fn test_normalize_vector_with_one_x_and_ten_y() {
	check_if_vector_values_expected(normalize_vector_helper(1, 10), 0.09950371902099892,
		0.9950371902099892)
}

fn normalize_vector_helper(x f64, y f64) Vector {
	return normalize_vector(Vector{x, y})
}

fn check_if_vector_values_expected(result_vector Vector, expected_x f64, expected_y f64) {
	assert result_vector == Vector{expected_x, expected_y}
}
