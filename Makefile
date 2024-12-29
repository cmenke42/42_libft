NAME			:= libft.a
CC				:= cc
RM				:= rm -rf
# -r: Replace or add files in archive
# -s: Add/update object-file index (symbol table) -> faster linking
AR				:= ar -rs

SRC_DIR			:= src
INCLUDES_DIR	:= includes
OBJ_DIR			:= obj
DEPENDENCY_DIR	:= dependencies

INCLUDES		:= -I ${INCLUDES_DIR}

SRCS := ft_atoi.c ft_bzero.c ft_calloc.c \
		ft_isalnum.c ft_isalpha.c ft_isascii.c \
		ft_isdigit.c ft_isprint.c ft_itoa.c \
		ft_lstadd_back.c ft_lstadd_front.c \
		ft_lstclear.c ft_lstdelone.c ft_lstiter.c \
		ft_lstlast.c ft_lstmap.c ft_lstnew.c \
		ft_lstsize.c ft_memchr.c ft_memcmp.c \
		ft_memcpy.c ft_memmove.c ft_memset.c \
		ft_printf.c ft_putchar_fd.c ft_putendl_fd.c \
		ft_putnbr_fd.c ft_putstr_fd.c ft_split.c \
		ft_strchr.c ft_strdup.c ft_striteri.c \
		ft_strjoin.c ft_strlcat.c ft_strlcpy.c \
		ft_strlen.c ft_strmapi.c ft_strncmp.c \
		ft_strnstr.c ft_strrchr.c ft_strtrim.c \
		ft_substr.c ft_tolower.c ft_toupper.c \
		get_next_line_bonus.c \

OBJS := $(patsubst %.c, ${OBJ_DIR}/%.o, ${SRCS})
DEPS := $(patsubst %.c, ${DEPENDENCY_DIR}/%.d, ${SRCS})

# Production flags
CFLAGS := -Wall -Werror -Wextra

# Development flags
# CFLAGS += -g -O0
# CFLAGS += -fsanitize=undefined
# CFLAGS += -fsanitize=address

# Add includes
CFLAGS += ${INCLUDES}

# Rules
all : ${NAME}

# $? -> list of dependencies that are newer than the target
${NAME}: ${OBJS}
	${AR} ${NAME} $?

# -MMD -> Generate dependency file without system header files
# -MF -> Specify the output file name for the dependency file
# -MP -> empty rule for each header file mentioned in the dependency file,
#		 avoids make errors if header file is deleted
# $* -> stem of the target, the % part of the pattern rule
${OBJ_DIR}/%.o: ${SRC_DIR}/%.c | ${OBJ_DIR} ${DEPENDENCY_DIR}
	mkdir -p $(dir $@)
	${CC} ${CFLAGS} -c $< -o $@ -MMD -MP -MF ${DEPENDENCY_DIR}/$*.d

${OBJ_DIR}:
	mkdir -p ${OBJ_DIR}

${DEPENDENCY_DIR}:
	mkdir -p ${DEPENDENCY_DIR}

clean:
	${RM} ${OBJ_DIR} ${DEPENDENCY_DIR}

fclean:	clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re

.NOTPARALLEL:

# Include the dependency files as Makefiles
# (-) No complaints if the dependency file does not exist or cannot be remade
-include ${DEPS}
