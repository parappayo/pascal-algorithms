CC=fpc

BIN=sort
SRC=sort.pas

all: $(BIN)

clean:
	rm *.o

test: all
	cat test-input.txt | ./sort

# one-shot build rule, will rebuild all for any change
$(BIN): $(SRC)
	$(CC) $(SRC)
