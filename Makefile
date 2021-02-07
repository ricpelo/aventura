CC=Inform6/inform
FLAGS=+language_name=Spanish +include_path=,lib,INFSP6,InformLibrary611,Alpha_pack
SRCDIR=.
BUILDDIR_Z5=.
BUILDDIR_ULX=.

SOURCES     := $(shell find $(SRCDIR) -maxdepth 1 -type f -name "*.inf")
OBJECTS_Z5  := $(patsubst $(SRCDIR)/%,$(BUILDDIR_Z5)/%,$(SOURCES:.inf=.z5))
OBJECTS_ULX := $(patsubst $(SRCDIR)/%,$(BUILDDIR_ULX)/%,$(SOURCES:.inf=.ulx))

all: z5 ulx

z5: $(OBJECTS_Z5)

ulx: $(OBJECTS_ULX)

$(BUILDDIR_Z5)/%.z5: $(SRCDIR)/%.inf
	$(CC) $< $(FLAGS)

$(BUILDDIR_ULX)/%.ulx: $(SRCDIR)/%.inf
	$(CC) $< $(FLAGS) -G
