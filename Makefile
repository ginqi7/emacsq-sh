EXECUTABLE=emacsq.sh
ARCHIVE=$(EXECUTABLE).tar.gz

.PHONY: clean  package

package:
	tar -pvczf $(ARCHIVE) $(EXECUTABLE)
	@shasum -a 256 $(ARCHIVE)
	@shasum -a 256 $(EXECUTABLE)

clean:
	rm -f $(ARCHIVE)
