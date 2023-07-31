(provide 'init-gnus)

(setq user-mail-address "kamin@kghorvath.com"
      user-full-name    "Kamin Horvath")

(setq gnus-select-method
      '(nnimap "outlook.office365.com"
	       (nnimap-inbox "INBOX")
	       (nnimap-split-methods default)
	       (nnimap-expunge t)
	       (nnimap-stream ssl)))
