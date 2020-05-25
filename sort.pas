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
	ReadLines := index;
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

const
	maxInputLines = 1024;
var
	input :array [0..maxInputLines] of string;
	inputLength :uint32;
begin
	inputLength := ReadLines(input, maxInputLines);
	BubbleSort(input, inputLength);
	WriteLines(input, inputLength);
end.
