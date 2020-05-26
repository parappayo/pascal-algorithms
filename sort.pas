program Sort;

function ReadLines(
var
	input :array of string;
	length :uint32
) :uint32;
var
	index :uint32;
	inputLine :string;
begin
	index := 0;
	while (not Eof()) and (index < length) do
	begin
		Readln(inputLine);
		input[index] := inputLine;
		index := index + 1;
	end;
	ReadLines := index-1;
end;

procedure WriteLines(
var
	input :array of string;
	length :uint32
);
var
	index :uint32;
begin
	index := 0;
	while index < length do
	begin
		WriteLn(input[index]);
		index := index + 1;
	end;
end;

function FindSmallest(
	input :array of string;
	startIndex :uint32;
	stopIndex :uint32
) :uint32;
var
	i, retval :uint32;
	smallest :string;
begin
	retval := startIndex;
	smallest := input[startIndex];

	for i := startIndex+1 to stopIndex do
	begin
		if input[i] < smallest then
		begin
			smallest := input[i];
			retval := i;
		end;
	end;
	FindSmallest := retval;
end;

procedure BubbleSort(
var
	input :array of string;
	length :uint32
);
var
	i, j :uint32;
	item :string;
begin
	for i := 2 to length do
	begin
		for j := length downto i do
		begin
			if input[j-1] > input[j] then
			begin
				item := input[j-1];
				input[j-1] := input[j];
				input[j] := item;
			end
		end
	end
end;

procedure ShakerSort(
var
	input :array of string;
	length :uint32
);
var
	lastSwap, j, left, right :uint32;
	item :string;
begin
	left := 2;
	right := length;
	lastSwap := length;
	repeat
	begin
		for j := right downto left do
		begin
			if input[j-1] > input[j] then
			begin
				item := input[j-1];
				input[j-1] := input[j];
				input[j] := item;
				lastSwap := j;
			end;
		end;

		left := lastSwap + 1;

		for j := left to right do
		begin
			if input[j-1] > input[j] then
			begin
				item := input[j-1];
				input[j-1] := input[j];
				input[j] := item;
				lastSwap := j;
			end;
		end;

		right := lastSwap - 1;

	end until left > right;
end;

procedure SelectionSort(
var
	input :array of string;
	length :uint32
);
var
	i, smallestIndex :uint32;
	smallestValue :string;
begin
	for i := 1 to length-1 do
	begin
		smallestIndex := FindSmallest(input, i, length);
		smallestValue := input[smallestIndex];

		input[smallestIndex] := input[i];
		input[i] := smallestValue;
	end;
end;

procedure InsertionSort(
var
	input :array of string;
	length :uint32
);
var
	i, j :uint32;
	nextValue :string;
begin
	for i := 2 to length do
	begin
		nextValue := input[i];
		j := i - 1;

		while (j > 0) and (nextValue < input[j]) do
		begin
			input[j+1] := input[j];
			j := j - 1;
		end;

		input[j+1] := nextValue;
	end;
end;

const
	maxInputLines = 1024;
var
	input :array [0..maxInputLines] of string;
	inputLength :uint32;
begin
	inputLength := ReadLines(input, maxInputLines);
	InsertionSort(input, inputLength);
	WriteLines(input, inputLength);
end.
