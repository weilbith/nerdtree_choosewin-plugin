[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/weilbith/nerdtree_choosewin-plugin)

# Choosewin for NERDTree

This plugin for the popular (_Neo_)_Vim_ plugin [_NERDTree_](https://github.com/scrooloose/nerdtree) allows the user to specify the window where to open a new file from inside the _NERDTree_ buffer. This is really handy if you use to have multiple windows open. Per default _NERDTree_ opens the new file in the last focused window before switch to the plugins buffer. Without jumping, this is the next aside window, but also if jumping before to the target window, than to _NERDTree_ and open the file is quite cumbersome.
With this extension for _NERDTree_, on open a new file (without define a split), it asks first for a window to use. Therefore are two options implemented. Either the great [_Choosewin_](https://github.com/t9md/vim-choosewin) is installed and loaded or a simple user input is asked for. For the second option the user has to make sure a correct window number is inserted. Using window numbers as indicator in his status line like shown [here](https://github.com/vim-airline/vim-airline/wiki/Configuration-Examples-and-Snippets#a-different-example-add-the-window-number-in-front-of-the-mode) with [_airline_](https://github.com/vim-airline/vim-airline) can be very useful for this case.

---

# Installation

Use any of (_Neo_)_Vims_ plugin manager ([Dein](https://github.com/Shougo/dein.vim), [Vundle](https://github.com/VundleVim/Vundle.vim), [Vim-Plug](https://github.com/junegunn/vim-plug), [Pathogen](https://github.com/tpope/vim-pathogen), ...) or just clone/download the repository and add in manually to your runtimepath.

If you like to use [_Choosewin_](https://github.com/t9md/vim-choosewin) for window selection (whats quite more fancy in general), just install it in parallel, this plugin will find it. **Careful:** if you are using lazy loading for _Choosewin_ like with [Dein](https://github.com/Shougo/dein.vim), this will not work and the fallback case with the user input is used. This is due to the fact that this plugin can't find _Choosewin_ until it gets sourced by its lazy load condition.
