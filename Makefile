# Installation directories
INSTALL_DIR := $(DESTDIR)/usr
BIN_DIR := $(INSTALL_DIR)/bin
APP_DIR := $(INSTALL_DIR)/share/applications
MANAGER_DIR := $(INSTALL_DIR)/share/parrot-upgrade-manager

# Source files
SOURCE_SCRIPTS := full-upgrade.sh parrot-upgrade
SOURCE_ICONS := icons
SOURCE_DESKTOP := upgrade-manager-parrot.desktop

# Installed files
INSTALLED_SCRIPTS := $(addprefix $(MANAGER_DIR)/,$(SOURCE_SCRIPTS))
INSTALLED_ICONS := $(addprefix $(MANAGER_DIR)/,$(SOURCE_ICONS))
INSTALLED_DESKTOP := $(addprefix $(APP_DIR)/,$(SOURCE_DESKTOP))

.PHONY: all clean install

# Default target
install: create_directories install_files set_permissions

# Create installation directories
create_directories:
	@mkdir -p $(BIN_DIR) $(APP_DIR) $(MANAGER_DIR)

# Install files
install_files: $(INSTALLED_SCRIPTS) $(INSTALLED_ICONS) $(INSTALLED_DESKTOP)

$(MANAGER_DIR)/%: %
	@cp $< $@
	@echo "Installed: $@"

# Set permissions and ownership
set_permissions:
	@chmod 0755 $(INSTALLED_SCRIPTS)
	@chown -R root:root $(BIN_DIR) $(MANAGER_DIR)
	@echo "Permissions and ownership set"

# Clean up
clean:
	@rm -rf $(MANAGER_DIR) $(INSTALLED_DESKTOP)
	@echo "Cleanup complete"
