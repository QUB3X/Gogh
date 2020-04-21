#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#000000"           # HOST
export COLOR_02="#ff375c"           # SYNTAX_STRING
export COLOR_03="#55dc30"           # COMMAND
export COLOR_04="#ebbf00"           # COMMAND_COLOR2
export COLOR_05="#4e9ffa"           # PATH
export COLOR_06="#ff7cc8"           # SYNTAX_VAR
export COLOR_07="#69ebd5"           # PROMP
export COLOR_08="#ffedeb"           #

export COLOR_09="#687b6c"           #
export COLOR_10="#ff612a"           # COMMAND_ERROR
export COLOR_11="#48cd57"           # EXEC
export COLOR_12="#dcd567"           #
export COLOR_13="#6fa9d2"           # FOLDER
export COLOR_14="#d736b3"           #
export COLOR_15="#34c790"           #
export COLOR_16="#b9a29f"           #

export BACKGROUND_COLOR="#692220"   # Background Color
export FOREGROUND_COLOR="#ff624f"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="2077"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
