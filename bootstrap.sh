# Only run nested steps in Spin workspaces.
if [[ "$SPIN" ]]; then
  # Only run nested steps in Spin + shopify/shopify workspaces.
    iso cartridge insert rdott/inventory-states
    . /cartridges/inventory-states/setup.sh
fi
