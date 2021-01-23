/// @description Build tooltip
if (tooltipInc < string_length(tooltipFull)) {
	tooltipInc += 3;
	tooltipCurrent = string_copy(tooltipFull, 1, tooltipInc);
}