.phony: all view clean

EXCLUDE = "assignments"

all:
#	cd mlfoundations ; make all
	@for a in $$(ls); do \
		if [ -d $$a -a $$a != ${EXCLUDE} ]; then \
		echo "Processing folder $$a"; \
		cd $$a; \
		make all; \
		cd ..; \
	fi; \
	done;
	@echo "Done!"

view:
	@for a in $$(ls); do \
		if [ -d $$a -a $$a != ${EXCLUDE} ]; then \
		echo "Processing folder $$a"; \
		cd $$a; \
		make view; \
		cd ..; \
	fi; \
	done;
	@echo "Done!"

clean:
	@for a in $$(ls); do \
		if [ -d $$a -a $$a != ${EXCLUDE} ]; then \
		echo "Processing folder $$a"; \
		cd $$a; \
		make clean; \
		cd ..; \
	fi; \
	done;
	@echo "Done!"
