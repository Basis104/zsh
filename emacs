(setq load-path (append (list
                         (expand-file-name "~/.emacs.d")
                         )
                        load-path))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
(global-set-key "\M-/" 'ac-start)
;(define-key ac-complete-mode-map "\C-n" 'ac-next)
;(define-key ac-complete-mode-map "\C-p" 'ac-previous)

;GNU GLOBAL(gtags)
(autoload 'gtags-mode "gtags" "" t)
(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag)
         (local-set-key "\M-r" 'gtags-find-rtag)
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))

(define-key global-map "\C-h" 'delete-backward-char)
(define-key global-map "\C-_" 'undo)
(define-key global-map "\M-5" 'query-replace)
(define-key global-map "\M-&" 'query-replace-regexp)
(define-key global-map "\M-s" 'isearch-forward-regexp)
(require 'redo)
(global-set-key "\C-]" 'redo)
(global-set-key "\C-x\C-g" 'goto-line)

(show-paren-mode 1)
;text
(setq truncate-lines t)
(setq truncate-partial-width-windows t)


;kersol
(blink-cursor-mode 0)
(line-number-mode t)

;copyboard
(defun copy-from-osx ()
 (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
 (let ((process-connection-type nil))
     (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
       (process-send-string proc text)
       (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;ignore tab
(setq-default tab-width 2 indent-tabs-mode nil)