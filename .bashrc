# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
function has-session {
  tmux has-session;
}

if has-session ; then
  if [ "$TMUX" == "" ]; then
  tmux a
  fi
fi
