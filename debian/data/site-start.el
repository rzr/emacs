;; Some Emacs customizations to make it work well within the Maemo environment.

;; dired: Do not pass --dired option to ls (not supported by busybox ls)
(setq dired-use-ls-dired nil)

;; list-directory: Pass only -C to ls (-F not supported by busybox ls)
(setq list-directory-brief-switches "-C")

;; Remove unsupported -q option for busybox gzip
(setq jka-compr-compression-info-list 
'(["\\.Z\\'" "compressing" "compress"
   ("-c")
   "uncompressing" "gzip"
   ("-c" "-d")
   nil t "\235"]
  ["\\.bz2\\'" "bzip2ing" "bzip2" nil "bunzip2ing" "bzip2"
   ("-d")
   nil t "BZh"]
  ["\\.tbz2?\\'" "bzip2ing" "bzip2" nil "bunzip2ing" "bzip2"
   ("-d")
   nil nil "BZh"]
  ["\\.\\(?:tgz\\|svgz\\|sifz\\)\\'" "compressing" "gzip"
   ("-c")
   "uncompressing" "gzip"
   ("-c" "-d")
   t nil "\213"]
  ["\\.g?z\\'" "compressing" "gzip"
   ("-c")
   "uncompressing" "gzip"
   ("-c" "-d")
   t t "\213"]
  ["\\.lz\\'" "Lzip compressing" "lzip"
   ("-c" "-q")
   "Lzip uncompressing" "lzip"
   ("-c" "-q" "-d")
   t t "LZIP"]
  ["\\.lzma\\'" "LZMA compressing" "lzma"
   ("-c" "-q" "-z")
   "LZMA uncompressing" "lzma"
   ("-c" "-q" "-d")
   t t ""]
  ["\\.xz\\'" "XZ compressing" "xz"
   ("-c" "-q")
   "XZ uncompressing" "xz"
   ("-c" "-q" "-d")
   t t "\3757zXZ "]
  ["\\.dz\\'" nil nil nil "uncompressing" "gzip"
   ("-c" "-d")
   nil t "\213"]))
