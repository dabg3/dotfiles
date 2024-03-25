export ANDROID_HOME="/opt/android-sdk"
PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
PATH="$ANDROID_HOME/platform-tools:$PATH"

PATH="$HOME/.local/bin:$PATH"
PATH="/usr/lib/ruby/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# XDG_RUNTIME_DIR is set by dumb_runtime_dir pkg
export XDG_CONFIG_HOME="$HOME/.config"

