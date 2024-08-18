(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7b8f5bbdc7c316ee62f271acf6bcd0e0b8a272fdffe908f8c920b0ba34871d98" "046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012" "871b064b53235facde040f6bdfa28d03d9f4b966d8ce28fb1725313731a2bcc8" "691d671429fa6c6d73098fc6ff05d4a14a323ea0a18787daeb93fde0e48ab18b" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "48042425e84cd92184837e01d0b4fe9f912d875c43021c3bcb7eeb51f1be5710" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" "4594d6b9753691142f02e67b8eb0fda7d12f6cc9f1299a49b819312d6addad1d" default))
 '(delete-selection-mode nil)
 '(package-selected-packages '(pdf-tools org2ctex leetcode))
 '(safe-local-variable-values
   '((eval progn
      (require 'yasnippet)
      (yas-define-snippets 'org-mode
       '(("pprcd" " - *文献名称*: $0\12    - *作者*: $1\12    - *链接*: $2\12    - *发表*: $3 *编号*: $4" "paper record expansion"))))
     (eval
      (progn
        (require 'yasnippet)
        (yas-define-snippets 'org-mode
                             '(("pprcd" " - *文献名称*: $0\12  - *作者*: $1\12  - *链接*: $2\12  - *发表*: $3 *编号*: $4\12" "paper record expansion")))))
     (eval progn
      (require 'yasnippet)
      (org2ctex-mode)
      (yas-minor-mode 1)
      (yas-define-snippets 'org-mode
                           '(("ldb" "=LevelDB=" "LevelDB expansion")))
      (yas-define-snippets 'org-mode
                           '(("mtbl" "~MemTable~" "MemTable expansion")))
      (yas-define-snippets 'org-mode
                           '(("imtbl" "=Immutable MemTable=" "Immutable MemTable expansion")))
      (yas-define-snippets 'org-mode
                           '(("cmpr" "Comparator" "Comparator"))))
     (eval progn
      (require 'yasnippet)
      (yas-minor-mode 1)
      (yas-define-snippets 'rustic-mode
                           '(("license" "// Copyright 2023 Greptime Team\12//\12// Licensed under the Apache License, Version 2.0 (the \"License\");\12// you may not use this file except in compliance with the License.\12// You may obtain a copy of the License at\12//\12//     http://www.apache.org/licenses/LICENSE-2.0\12//\12// Unless required by applicable law or agreed to in writing, software\12// distributed under the License is distributed on an \"AS IS\" BASIS,\12// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\12// See the License for the specific language governing permissions and\12// limitations under the License.\12" "Greptime Header")))
      (dap-register-debug-template "standalone from emacs"
                                   (list :type "lldb" :request "launch" :cwd "${workspaceFolder}" :program "target/debug/greptime" :arg
                                         '(("standalone" "start"))
                                         :name "Run standalone")))
     (eval progn
      (require 'yasnippet)
      (yas-minor-mode 1)
      (yas-define-snippets 'rustic-mode
                           '(("license" "// Copyright 2023 Greptime Team\12//\12// Licensed under the Apache License, Version 2.0 (the \"License\");\12// you may not use this file except in compliance with the License.\12// You may obtain a copy of the License at\12//\12//     http://www.apache.org/licenses/LICENSE-2.0\12//\12// Unless required by applicable law or agreed to in writing, software\12// distributed under the License is distributed on an \"AS IS\" BASIS,\12// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\12// See the License for the specific language governing permissions and\12// limitations under the License.\12" "Greptime Header")))
      (dap-register-debug-template "standalone from emacs"
                                   (list :type "lldb-dap" :request "launch" :cwd "${workspaceFolder}" :program "target/debug/greptime" :arg
                                         '(("standalone" "start"))
                                         :name "Run standalone"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
