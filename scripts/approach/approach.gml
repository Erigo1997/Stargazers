// Approach	(start, end, shift);
// Makes two numbers approach each other.
if (argument0 < argument1) {
	return min(argument0 + argument2, argument1);
} else {
	return max(argument0 - argument2, argument1);
}