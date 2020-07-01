.PHONY: man test clean self-linking

HELP2MAN := help2man

TARGET := git-wip

MAN_TARGET := $(addprefix man/man1/, $(addsuffix .1, $(TARGET)))
MAN_H2M_FLAGS := --no-info

MAN_SEE_ALSO_GIT := "[see also]\n.B git (1)"

all: man

man: $(MAN_TARGET)

man/man1/%.1: %
	@ mkdir -p "$(dir $@)"
	echo $(MAN_SEE_ALSO_GIT) | $(HELP2MAN) $(MAN_H2M_FLAGS) "$<" --output="$@" --include=/dev/stdin

clean:
	rm -rf build/
	rm -rf man/