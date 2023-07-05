module trnsfrm2d

const zero_position = Position{
	x: 0
	y: 0
}

fn test_calculate_distance_between_2_positions() {
	second_position := Position{
		x: 1
		y: 0
	}

	assert calculate_distance_between_positions(trnsfrm2d.zero_position, second_position).eq_epsilon(1.0)
}

fn test_calculate_distance_between_2_positions_y_shift() {
	second_position := Position{
		x: 0
		y: 1
	}

	assert calculate_distance_between_positions(trnsfrm2d.zero_position, second_position).eq_epsilon(1.0)
}

fn test_calculate_distance_between_2_positions_x_y_shift() {
	second_position := Position{
		x: 1
		y: 1
	}

	assert calculate_distance_between_positions(trnsfrm2d.zero_position, second_position).eq_epsilon(1.4142135623730951)
}

fn test_calculate_distance_between_zero_and_negative_positions() {
	second_position := Position{
		x: -1
		y: -1
	}

	assert calculate_distance_between_positions(trnsfrm2d.zero_position, second_position).eq_epsilon(1.4142135623730951)
}

fn test_calculate_distance_between_zero_and_mixed_shift_position_x_negative() {
	second_position := Position{
		x: -1
		y: 1
	}

	assert calculate_distance_between_positions(trnsfrm2d.zero_position, second_position).eq_epsilon(1.4142135623730951)
}

fn test_calculate_distance_between_zero_and_mixed_shift_position_y_negative() {
	second_position := Position{
		x: 1
		y: -1
	}

	assert calculate_distance_between_positions(trnsfrm2d.zero_position, second_position).eq_epsilon(1.4142135623730951)
}
