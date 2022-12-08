TARGET	= pa3
CFLAGS  = -g
#CFLAGS += -D_USE_DEFAULT

all: pa3

pa3: pa3.c
	gcc $(CFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -rf *.o pa3

TARGET	= pa3
CFLAGS  = -g
#CFLAGS += -D_USE_DEFAULT

all: pa3

pa3: pa3.c
	gcc $(CFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -rf *.o pa3

.PHONY: test-lw-0
test-lw-0: pa3 testcases/lw-0
	./$< testcases/lw-0

.PHONY: test-lw-1
test-lw-1: pa3 testcases/lw-1
	./$< testcases/lw-1

.PHONY: mixed-8x2x1
mixed-8x2x1: pa3 testcases/mixed-8x2x1
	./$< testcases/mixed-8x2x1

.PHONY: mixed-8x8x1
mixed-8x8x1: pa3 testcases/mixed-8x8x1
	./$< testcases/mixed-8x8x1

.PHONY: mixed-hidden
mixed-hidden: pa3 testcases/mixed-hidden
	./$< testcases/mixed-hidden

.PHONY: mixed-wb
mixed-wb: pa3 testcases/mixed-wb
	./$< testcases/mixed-wb

.PHONY: sw
sw: pa3 testcases/sw
	./$< testcases/sw

.PHONY: test-all
test-all: test-lw-0 test-lw-1 mixed-8x2x1 mixed-8x8x1 mixed-hidden mixed-wb sw