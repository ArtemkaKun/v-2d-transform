module trnsfrm2d

fn test_move_returns_expected_position_when_only_x_moved() {
	move_position_and_check_if_expected(1, 0)
}

fn test_move_returns_expected_position_when_only_y_moved() {
	move_position_and_check_if_expected(0, 1)
}

fn test_move_returns_expected_position_when_both_coordinates_moved() {
	move_position_and_check_if_expected(1, 1)
}

fn test_move_returns_expected_position_when_move_vector_is_negative() {
	move_position_and_check_if_expected(-1, -1)
}

fn move_position_and_check_if_expected(expected_x f64, expected_y f64) {
	new_position := move_position(get_zero_position(), Vector{expected_x, expected_y})
	check_if_position_values_expected(new_position, expected_x, expected_y)
}

fn get_zero_position() Position {
	return Position{
		x: 0
		y: 0
	}
}

fn check_if_position_values_expected(result_position Position, expected_x f64, expected_y f64) {
	assert result_position == Position{
		x: expected_x
		y: expected_y
	}
}
