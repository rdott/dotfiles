# Only run nested steps in Spin workspaces.
if [[ "$SPIN" = 1 ]]
then
  # Only run nested steps in Spin + shopify/shopify workspaces.
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    cartridge insert rdott/inventory-states
    . /cartridges/inventory-states/setup.sh
  fi
fi