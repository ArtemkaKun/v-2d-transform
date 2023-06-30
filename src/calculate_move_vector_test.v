module trnsfrm2d

import tests_helpers

fn test_calculate_move_vector_with_0_speed_returns_an_error() {
	test_function := get_test_function_with_normalized_direction(0, 1)
	tests_helpers.expect_error_from_test_function(test_function, speed_is_zero_error)
}

fn test_calculate_move_vector_with_negative_speed_returns_an_error() {
	test_function := get_test_function_with_normalized_direction(-1, 1)
	tests_helpers.expect_error_from_test_function(test_function, negative_speed_error)
}

fn test_calculate_move_vector_with_0_delta_time_returns_an_error() {
	test_function := get_test_function_with_normalized_direction(1, 0)
	tests_helpers.expect_error_from_test_function(test_function, delta_time_smaller_than_zero_error)
}

fn test_calculate_move_vector_with_negative_delta_time_returns_an_error() {
	test_function := get_test_function_with_normalized_direction(1, -1)
	tests_helpers.expect_error_from_test_function(test_function, delta_time_smaller_than_zero_error)
}

fn test_calculate_move_vector_with_unnormalized_direction_returns_an_error() {
	test_function := get_test_function(Vector{5, 10}, 1, 1)
	tests_helpers.expect_error_from_test_function(test_function, direction_not_normalized)
}

fn test_calculate_move_vector_returns_expected_vector_when_speed_set() {
	assert Vector{0, 2} == get_test_function_with_normalized_direction(2, 1)()!
}

fn test_calculate_move_vector_returns_expected_vector_when_delta_time_set() {
	assert Vector{0, 2} == get_test_function_with_normalized_direction(1, 2)()!
}

fn get_test_function_with_normalized_direction(speed f64, delta_time f64) fn () !Vector {
	return get_test_function(get_normalized_vector(), speed, delta_time)
}

fn get_test_function(direction Vector, speed f64, delta_time f64) fn () !Vector {
	return fn [direction, speed, delta_time] () !Vector {
		return calculate_move_vector(direction, speed, delta_time)
	}
}

fn get_normalized_vector() Vector {
	return Vector{0, 1}
}
