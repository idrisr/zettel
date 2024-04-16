{ vimUtils }:
vimUtils.buildVimPlugin {
  pname = "vim-zettel";
  version = "2023-06-30";
  src = ./src;
}
