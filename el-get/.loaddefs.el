;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (erc-handle-irc-url erc erc-select-read-args) "erc"
;;;;;;  "erc/erc.el" (21156 46225))
;;; Generated autoloads from erc/erc.el

(autoload 'erc-select-read-args "erc" "\
Prompt the user for values of nick, server, port, and password.

\(fn)" nil nil)

(autoload 'erc "erc" "\
ERC is a powerful, modular, and extensible IRC client.
This function is the main entry point for ERC.

It permits you to select connection parameters, and then starts ERC.

Non-interactively, it takes the keyword arguments
   (server (erc-compute-server))
   (port   (erc-compute-port))
   (nick   (erc-compute-nick))
   password
   (full-name (erc-compute-full-name)))

That is, if called with

   (erc :server \"irc.freenode.net\" :full-name \"Harry S Truman\")

then the server and full-name will be set to those values, whereas
`erc-compute-port', `erc-compute-nick' and `erc-compute-full-name' will
be invoked for the values of the other parameters.

\(fn &key (SERVER (erc-compute-server)) (PORT (erc-compute-port)) (NICK (erc-compute-nick)) PASSWORD (FULL-NAME (erc-compute-full-name)))" t nil)

(defalias 'erc-select 'erc)

(autoload 'erc-handle-irc-url "erc" "\
Use ERC to IRC on HOST:PORT in CHANNEL as USER with PASSWORD.
If ERC is already connected to HOST:PORT, simply /join CHANNEL.
Otherwise, connect to HOST:PORT as USER and /join CHANNEL.

\(fn HOST PORT CHANNEL USER PASSWORD)" nil nil)

;;;***

;;;### (autoloads nil "erc-autoaway" "erc/erc-autoaway.el" (21156
;;;;;;  46224))
;;; Generated autoloads from erc/erc-autoaway.el
 (autoload 'erc-autoaway-mode "erc-autoaway")

;;;***

;;;### (autoloads nil "erc-bbdb" "erc/erc-bbdb.el" (21156 46224))
;;; Generated autoloads from erc/erc-bbdb.el
 (autoload 'erc-bbdb-mode "erc-bbdb")

;;;***

;;;### (autoloads nil "erc-button" "erc/erc-button.el" (21156 46224))
;;; Generated autoloads from erc/erc-button.el
 (autoload 'erc-button-mode "erc-button" nil t)

;;;***

;;;### (autoloads nil "erc-capab" "erc/erc-capab.el" (21156 46224))
;;; Generated autoloads from erc/erc-capab.el
 (autoload 'erc-capab-identify-mode "erc-capab" nil t)

;;;***

;;;### (autoloads (erc-chess-ctcp-query-handler erc-cmd-CHESS) "erc-chess"
;;;;;;  "erc/erc-chess.el" (21156 46224))
;;; Generated autoloads from erc/erc-chess.el

(defvar erc-ctcp-query-CHESS-hook '(erc-chess-ctcp-query-handler))

(autoload 'erc-cmd-CHESS "erc-chess" "\
Initiate a chess game via CTCP to NICK.
NICK should be the first and only arg to /chess

\(fn LINE &optional FORCE)" nil nil)

(autoload 'erc-chess-ctcp-query-handler "erc-chess" "\
Not documented

\(fn PROC NICK LOGIN HOST TO MSG)" nil nil)

;;;***

;;;### (autoloads nil "erc-compat" "erc/erc-compat.el" (21156 46223))
;;; Generated autoloads from erc/erc-compat.el
 (autoload 'erc-define-minor-mode "erc-compat")

;;;***

;;;### (autoloads (erc-ctcp-query-DCC pcomplete/erc-mode/DCC erc-cmd-DCC)
;;;;;;  "erc-dcc" "erc/erc-dcc.el" (21156 46225))
;;; Generated autoloads from erc/erc-dcc.el
 (autoload 'erc-dcc-mode "erc-dcc")

(autoload 'erc-cmd-DCC "erc-dcc" "\
Parser for /dcc command.
This figures out the dcc subcommand and calls the appropriate routine to
handle it.  The function dispatched should be named \"erc-dcc-do-FOO-command\",
where FOO is one of CLOSE, GET, SEND, LIST, CHAT, etc.

\(fn CMD &rest ARGS)" nil nil)

(autoload 'pcomplete/erc-mode/DCC "erc-dcc" "\
Provides completion for the /DCC command.

\(fn)" nil nil)

(defvar erc-ctcp-query-DCC-hook '(erc-ctcp-query-DCC) "\
Hook variable for CTCP DCC queries")

(autoload 'erc-ctcp-query-DCC "erc-dcc" "\
The function called when a CTCP DCC request is detected by the client.
It examines the DCC subcommand, and calls the appropriate routine for
that subcommand.

\(fn PROC NICK LOGIN HOST TO QUERY)" nil nil)

;;;***

;;;### (autoloads (erc-ezb-initialize erc-ezb-select-session erc-ezb-select
;;;;;;  erc-ezb-add-session erc-ezb-end-of-session-list erc-ezb-init-session-list
;;;;;;  erc-ezb-identify erc-ezb-notice-autodetect erc-ezb-lookup-action
;;;;;;  erc-ezb-get-login erc-cmd-ezb) "erc-ezbounce" "erc/erc-ezbounce.el"
;;;;;;  (21156 46224))
;;; Generated autoloads from erc/erc-ezbounce.el

(autoload 'erc-cmd-ezb "erc-ezbounce" "\
Send EZB commands to the EZBouncer verbatim.

\(fn LINE &optional FORCE)" nil nil)

(autoload 'erc-ezb-get-login "erc-ezbounce" "\
Return an appropriate EZBounce login for SERVER and PORT.
Look up entries in `erc-ezb-login-alist'. If the username or password
in the alist is `nil', prompt for the appropriate values.

\(fn SERVER PORT)" nil nil)

(autoload 'erc-ezb-lookup-action "erc-ezbounce" "\
Not documented

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-notice-autodetect "erc-ezbounce" "\
React on an EZBounce NOTICE request.

\(fn PROC PARSED)" nil nil)

(autoload 'erc-ezb-identify "erc-ezbounce" "\
Identify to the EZBouncer server.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-init-session-list "erc-ezbounce" "\
Reset the EZBounce session list to nil.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-end-of-session-list "erc-ezbounce" "\
Indicate the end of the EZBounce session listing.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-add-session "erc-ezbounce" "\
Add an EZBounce session to the session list.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-select "erc-ezbounce" "\
Select an IRC server to use by EZBounce, in ERC style.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-select-session "erc-ezbounce" "\
Select a detached EZBounce session.

\(fn)" nil nil)

(autoload 'erc-ezb-initialize "erc-ezbounce" "\
Add EZBouncer convenience functions to ERC.

\(fn)" nil nil)

;;;***

;;;### (autoloads (erc-fill) "erc-fill" "erc/erc-fill.el" (21156
;;;;;;  46225))
;;; Generated autoloads from erc/erc-fill.el
 (autoload 'erc-fill-mode "erc-fill" nil t)

(autoload 'erc-fill "erc-fill" "\
Fill a region using the function referenced in `erc-fill-function'.
You can put this on `erc-insert-modify-hook' and/or `erc-send-modify-hook'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "erc-hecomplete" "erc/erc-hecomplete.el" (21156
;;;;;;  46225))
;;; Generated autoloads from erc/erc-hecomplete.el
 (autoload 'erc-hecomplete-mode "erc-hecomplete" nil t)

;;;***

;;;### (autoloads (erc-identd-stop erc-identd-start) "erc-identd"
;;;;;;  "erc/erc-identd.el" (21156 46223))
;;; Generated autoloads from erc/erc-identd.el
 (autoload 'erc-identd-mode "erc-identd")

(autoload 'erc-identd-start "erc-identd" "\
Start an identd server listening to port 8113.
Port 113 (auth) will need to be redirected to port 8113 on your
machine -- using iptables, or a program like redir which can be
run from inetd.  The idea is to provide a simple identd server
when you need one, without having to install one globally on your
system.

\(fn &optional PORT)" t nil)

(autoload 'erc-identd-stop "erc-identd" "\
Not documented

\(fn &rest IGNORE)" t nil)

;;;***

;;;### (autoloads (erc-create-imenu-index) "erc-imenu" "erc/erc-imenu.el"
;;;;;;  (21156 46223))
;;; Generated autoloads from erc/erc-imenu.el

(autoload 'erc-create-imenu-index "erc-imenu" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "erc-join" "erc/erc-join.el" (21156 46224))
;;; Generated autoloads from erc/erc-join.el
 (autoload 'erc-autojoin-mode "erc-join" nil t)

;;;***

;;;### (autoloads nil "erc-list" "erc/erc-list.el" (21156 46223))
;;; Generated autoloads from erc/erc-list.el
 (autoload 'erc-list-mode "erc-list")

;;;***

;;;### (autoloads (erc-chanlist erc-list-channels) "erc-list-old"
;;;;;;  "erc/erc-list-old.el" (21156 46224))
;;; Generated autoloads from erc/erc-list-old.el
 (autoload 'erc-list-old-mode "erc-list-old")

(autoload 'erc-list-channels "erc-list-old" "\
Display a buffer containing a list of channels on the current server.
Optional argument CHANNEL specifies a single channel to list (instead of every
available channel).

\(fn &rest CHANNEL)" t nil)

(autoload 'erc-chanlist "erc-list-old" "\
Show a channel listing of the current server in a special mode.
Please note that this function only works with IRC servers which conform
to RFC and send the LIST header (#321) at start of list transmission.

\(fn &optional CHANNELS)" t nil)

;;;***

;;;### (autoloads (erc-save-buffer-in-logs erc-logging-enabled) "erc-log"
;;;;;;  "erc/erc-log.el" (21156 46225))
;;; Generated autoloads from erc/erc-log.el
 (autoload 'erc-log-mode "erc-log" nil t)

(autoload 'erc-logging-enabled "erc-log" "\
Return non-nil if logging is enabled for BUFFER.
If BUFFER is nil, the value of `current-buffer' is used.
Logging is enabled if `erc-log-channels-directory' is non-nil, the directory
is writeable (it will be created as necessary) and
`erc-enable-logging' returns a non-nil value.

\(fn &optional BUFFER)" nil nil)

(autoload 'erc-save-buffer-in-logs "erc-log" "\
Append BUFFER contents to the log file, if logging is enabled.
If BUFFER is not provided, current buffer is used.
Logging is enabled if `erc-logging-enabled' returns non-nil.

This is normally done on exit, to save the unsaved portion of the
buffer, since only the text that runs off the buffer limit is logged
automatically.

You can save every individual message by putting this function on
`erc-insert-post-hook'.

\(fn &optional BUFFER)" t nil)

;;;***

;;;### (autoloads (erc-delete-dangerous-host erc-add-dangerous-host
;;;;;;  erc-delete-keyword erc-add-keyword erc-delete-fool erc-add-fool
;;;;;;  erc-delete-pal erc-add-pal) "erc-match" "erc/erc-match.el"
;;;;;;  (21156 46223))
;;; Generated autoloads from erc/erc-match.el
 (autoload 'erc-match-mode "erc-match")

(autoload 'erc-add-pal "erc-match" "\
Add pal interactively to `erc-pals'.

\(fn)" t nil)

(autoload 'erc-delete-pal "erc-match" "\
Delete pal interactively to `erc-pals'.

\(fn)" t nil)

(autoload 'erc-add-fool "erc-match" "\
Add fool interactively to `erc-fools'.

\(fn)" t nil)

(autoload 'erc-delete-fool "erc-match" "\
Delete fool interactively to `erc-fools'.

\(fn)" t nil)

(autoload 'erc-add-keyword "erc-match" "\
Add keyword interactively to `erc-keywords'.

\(fn)" t nil)

(autoload 'erc-delete-keyword "erc-match" "\
Delete keyword interactively to `erc-keywords'.

\(fn)" t nil)

(autoload 'erc-add-dangerous-host "erc-match" "\
Add dangerous-host interactively to `erc-dangerous-hosts'.

\(fn)" t nil)

(autoload 'erc-delete-dangerous-host "erc-match" "\
Delete dangerous-host interactively to `erc-dangerous-hosts'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "erc-menu" "erc/erc-menu.el" (21156 46224))
;;; Generated autoloads from erc/erc-menu.el
 (autoload 'erc-menu-mode "erc-menu" nil t)

;;;***

;;;### (autoloads (erc-cmd-WHOLEFT) "erc-netsplit" "erc/erc-netsplit.el"
;;;;;;  (21156 46224))
;;; Generated autoloads from erc/erc-netsplit.el
 (autoload 'erc-netsplit-mode "erc-netsplit")

(autoload 'erc-cmd-WHOLEFT "erc-netsplit" "\
Show who's gone.

\(fn)" nil nil)

;;;***

;;;### (autoloads (erc-server-select erc-determine-network) "erc-networks"
;;;;;;  "erc/erc-networks.el" (21156 46224))
;;; Generated autoloads from erc/erc-networks.el

(autoload 'erc-determine-network "erc-networks" "\
Return the name of the network or \"Unknown\" as a symbol.  Use the
server parameter NETWORK if provided, otherwise parse the server name and
search for a match in `erc-networks-alist'.

\(fn)" nil nil)

(autoload 'erc-server-select "erc-networks" "\
Interactively select a server to connect to using `erc-server-alist'.

\(fn)" t nil)

;;;***

;;;### (autoloads (pcomplete/erc-mode/NOTIFY erc-cmd-NOTIFY) "erc-notify"
;;;;;;  "erc/erc-notify.el" (21156 46224))
;;; Generated autoloads from erc/erc-notify.el
 (autoload 'erc-notify-mode "erc-notify" nil t)

(autoload 'erc-cmd-NOTIFY "erc-notify" "\
Change `erc-notify-list' or list current notify-list members online.
Without args, list the current list of notificated people online,
with args, toggle notify status of people.

\(fn &rest ARGS)" nil nil)

(autoload 'pcomplete/erc-mode/NOTIFY "erc-notify" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "erc-page" "erc/erc-page.el" (21156 46223))
;;; Generated autoloads from erc/erc-page.el
 (autoload 'erc-page-mode "erc-page")

;;;***

;;;### (autoloads nil "erc-pcomplete" "erc/erc-pcomplete.el" (21156
;;;;;;  46223))
;;; Generated autoloads from erc/erc-pcomplete.el
 (autoload 'erc-completion-mode "erc-pcomplete" nil t)

;;;***

;;;### (autoloads nil "erc-replace" "erc/erc-replace.el" (21156 46224))
;;; Generated autoloads from erc/erc-replace.el
 (autoload 'erc-replace-mode "erc-replace")

;;;***

;;;### (autoloads nil "erc-ring" "erc/erc-ring.el" (21156 46224))
;;; Generated autoloads from erc/erc-ring.el
 (autoload 'erc-ring-mode "erc-ring" nil t)

;;;***

;;;### (autoloads (erc-nickserv-identify erc-nickserv-identify-mode)
;;;;;;  "erc-services" "erc/erc-services.el" (21156 46223))
;;; Generated autoloads from erc/erc-services.el
 (autoload 'erc-services-mode "erc-services" nil t)

(autoload 'erc-nickserv-identify-mode "erc-services" "\
Set up hooks according to which MODE the user has chosen.

\(fn MODE)" t nil)

(autoload 'erc-nickserv-identify "erc-services" "\
Send an \"identify <PASSWORD>\" message to NickServ.
When called interactively, read the password using `read-passwd'.

\(fn PASSWORD)" t nil)

;;;***

;;;### (autoloads nil "erc-sound" "erc/erc-sound.el" (21156 46224))
;;; Generated autoloads from erc/erc-sound.el
 (autoload 'erc-sound-mode "erc-sound")

;;;***

;;;### (autoloads (erc-speedbar-browser) "erc-speedbar" "erc/erc-speedbar.el"
;;;;;;  (21156 46224))
;;; Generated autoloads from erc/erc-speedbar.el

(autoload 'erc-speedbar-browser "erc-speedbar" "\
Initialize speedbar to display an ERC browser.
This will add a speedbar major display mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "erc-spelling" "erc/erc-spelling.el" (21156
;;;;;;  46223))
;;; Generated autoloads from erc/erc-spelling.el
 (autoload 'erc-spelling-mode "erc-spelling" nil t)

;;;***

;;;### (autoloads nil "erc-stamp" "erc/erc-stamp.el" (21156 46224))
;;; Generated autoloads from erc/erc-stamp.el
 (autoload 'erc-timestamp-mode "erc-stamp" nil t)

;;;***

;;;### (autoloads (erc-track-minor-mode) "erc-track" "erc/erc-track.el"
;;;;;;  (21156 46223))
;;; Generated autoloads from erc/erc-track.el

(defvar erc-track-minor-mode nil "\
Non-nil if Erc-Track minor mode is enabled.
See the command `erc-track-minor-mode' for a description of this minor mode.")

(custom-autoload 'erc-track-minor-mode "erc-track" nil)

(autoload 'erc-track-minor-mode "erc-track" "\
Global minor mode for tracking ERC buffers and showing activity in the
mode line.

This exists for the sole purpose of providing the C-c C-SPC and
C-c C-@ keybindings.  Make sure that you have enabled the track
module, otherwise the keybindings will not do anything useful.

\(fn &optional ARG)" t nil)
 (autoload 'erc-track-mode "erc-track" nil t)

;;;***

;;;### (autoloads (erc-truncate-buffer erc-truncate-buffer-to-size)
;;;;;;  "erc-truncate" "erc/erc-truncate.el" (21156 46224))
;;; Generated autoloads from erc/erc-truncate.el
 (autoload 'erc-truncate-mode "erc-truncate" nil t)

(autoload 'erc-truncate-buffer-to-size "erc-truncate" "\
Truncates the buffer to the size SIZE.
If BUFFER is not provided, the current buffer is assumed.  The deleted
region is logged if `erc-logging-enabled' returns non-nil.

\(fn SIZE &optional BUFFER)" nil nil)

(autoload 'erc-truncate-buffer "erc-truncate" "\
Truncates the current buffer to `erc-max-buffer-size'.
Meant to be used in hooks, like `erc-insert-post-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (erc-xdcc-add-file) "erc-xdcc" "erc/erc-xdcc.el"
;;;;;;  (21156 46224))
;;; Generated autoloads from erc/erc-xdcc.el
 (autoload 'erc-xdcc-mode "erc-xdcc")

(autoload 'erc-xdcc-add-file "erc-xdcc" "\
Add a file to `erc-xdcc-files'.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (git-commit-mode) "git-commit" "git-commit-mode/git-commit.el"
;;;;;;  (21157 56433))
;;; Generated autoloads from git-commit-mode/git-commit.el

(autoload 'git-commit-mode "git-commit" "\
Major mode for editing git commit messages.
This mode helps with editing git commit messages both by
providing commands to do common tasks, and by highlighting the
basic structure of and errors in git commit messages.

Commands:\\<git-commit-map>
\\[git-commit-commit]   `git-commit-commit'  Finish editing and commit
\\[git-commit-signoff]   `git-commit-signoff'   Insert a Signed-off-by header
\\[git-commit-ack]   `git-commit-ack'   Insert an Acked-by header
\\[git-commit-test]   `git-commit-test'   Insert a Tested-by header
\\[git-commit-review]   `git-commit-review'   Insert a Reviewed-by header
\\[git-commit-cc]   `git-commit-cc'   Insert a Cc header
\\[git-commit-reported]   `git-commit-reported'   Insert a Reported-by header

Turning on git commit calls the hooks in `git-commit-mode-hook'.

\(fn)" t nil)

(when (boundp 'session-mode-disable-list) (add-to-list 'session-mode-disable-list 'git-commit-mode))

(setq auto-mode-alist (append auto-mode-alist '(("COMMIT_EDITMSG" . git-commit-mode) ("NOTES_EDITMSG" . git-commit-mode) ("MERGE_MSG" . git-commit-mode) ("TAG_EDITMSG" . git-commit-mode))))

;;;***

;;;### (autoloads (run-ruby inf-ruby inf-ruby-keys) "inf-ruby" "inf-ruby/inf-ruby.el"
;;;;;;  (21145 5314))
;;; Generated autoloads from inf-ruby/inf-ruby.el

(autoload 'inf-ruby-keys "inf-ruby" "\
Set local key defs to invoke inf-ruby from ruby-mode.

\(fn)" nil nil)

(autoload 'inf-ruby "inf-ruby" "\
Run an inferior Ruby process in a buffer.
With prefix argument, prompts for which Ruby implementation
\(from the list `inf-ruby-implementations') to use. Runs the
hooks `inf-ruby-mode-hook' (after the `comint-mode-hook' is
run).

\(fn &optional IMPL)" t nil)

(autoload 'run-ruby "inf-ruby" "\
Run an inferior Ruby process, input and output via buffer *ruby*.
If there is a process already running in `*ruby*', switch to that buffer.
With argument, allows you to edit the command line (default is value
of `ruby-program-name').  Runs the hooks `inferior-ruby-mode-hook'
\(after the `comint-mode-hook' is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn &optional COMMAND NAME)" t nil)

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook 'inf-ruby-keys))

;;;***

;;;### (autoloads (magithub-clone) "magithub" "magithub/magithub.el"
;;;;;;  (21157 56013))
;;; Generated autoloads from magithub/magithub.el

(autoload 'magithub-clone "magithub" "\
Clone GitHub repo USERNAME/REPO into directory DIR.
If SSHP is non-nil, clone it using the SSH URL.  Once the repo is
cloned, switch to a `magit-status' buffer for it.

Interactively, prompts for the repo name and directory.  With a
prefix arg, clone using SSH.

\(fn USERNAME REPO DIR &optional SSHP)" t nil)

(eval-after-load 'magit '(unless (featurep 'magithub) (require 'magithub)))

;;;***

;;;### (autoloads (org-google-weather) "org-google-weather" "google-weather/org-google-weather.el"
;;;;;;  (21163 17384))
;;; Generated autoloads from google-weather/org-google-weather.el

(autoload 'org-google-weather "org-google-weather" "\
Return Org entry with the weather for LOCATION in LANGUAGE.
If LOCATION is not set, use org-google-weather-location.

\(fn &optional LOCATION LANGUAGE)" nil nil)

;;;***

;;;### (autoloads (ruby-electric-mode) "ruby-electric" "ruby-electric/ruby-electric.el"
;;;;;;  (21157 55563))
;;; Generated autoloads from ruby-electric/ruby-electric.el

(autoload 'ruby-electric-mode "ruby-electric" "\
Toggle Ruby Electric minor mode.
With no argument, this command toggles the mode.  Non-null prefix
argument turns on the mode.  Null prefix argument turns off the
mode.

When Ruby Electric mode is enabled, an indented 'end' is
heuristicaly inserted whenever typing a word like 'module',
'class', 'def', 'if', 'unless', 'case', 'until', 'for', 'begin',
'do'. Simple, double and back quotes as well as braces are paired
auto-magically. Expansion does not occur inside comments and
strings. Note that you must have Font Lock enabled.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("erc/erc-autoloads.el" "erc/erc-backend.el"
;;;;;;  "erc/erc-goodies.el" "erc/erc-ibuffer.el" "erc/erc-lang.el"
;;;;;;  "erc/erc-maint.el" "erc/erc-nicklist.el" "erc/erc-pkg.el"
;;;;;;  "erc/erc-speak.el" "erc/erc-viper.el" "google-weather/google-weather.el"
;;;;;;  "inf-ruby/inf-ruby-autoloads.el" "inf-ruby/inf-ruby-pkg.el"
;;;;;;  "ruby-electric/ruby-electric-autoloads.el" "ruby-electric/ruby-electric-pkg.el"
;;;;;;  "xcscope/xcscope.el") (21163 17385 481497))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
