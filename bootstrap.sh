# Only run nested steps in Spin workspaces.
if [[ "$SPIN" ]]; then
  # Only run nested steps in Spin + shopify/shopify workspaces.
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    iso cartridge insert rdott/inventory-states
    . /cartridges/inventory-states/setup.sh
  fi
fi
