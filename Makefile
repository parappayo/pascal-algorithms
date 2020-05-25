CC=fpc

BIN=sort
SRC=sort.pas

all: $(BIN)

clean:
	rm *.o

# one-shot build rule, will rebuild all for any change
$(BIN): $(SRC)
	$(CC) $(SRC)
