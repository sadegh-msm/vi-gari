# vi-gari
my neovim config from scratch

## binding
`<leader>` is space  

### basic vim
`<leader>pv` for go to netrw
`<C-q>` for selecting rectangular
`<C-r>` for undo the undo
`w` for navigating to first of a word
`e` for navigating to the last character of the word
`b` for navigating to last words first character
`x` deleting a charcter under cursor
`X` deleting last character of the cursor
`A` will go end of line and start typing
`<number><navigation_key>` if you use number before any navigation keys it will do that many times
`<number>i<anything_to_type>` this will write the typed word n times
`f<charcter>` finds the next occurence of the chracter you can go to next or last one by `;` or `,`
`%` on ( or [ or { will find the matching to that charcter
`* or #` to find the occurence of a word
`gg` go to first of the file
`G` go to bottom of the file
`<number>G` go on the specified line
`o` goes on the next line and makes a new line
`O` shifts this line an start typing
`/<anything_to_type>` it will wearch for this word and you can go forward or backeard by `n` and `N`
`r<charcter>` will replace the character under the cursor with the typed chracter
`d<number><navigation_key>` delete base on navigation key
`.` will do the last command
`yy` for yanking a line
`S` delete a line and start writing
`<C-w>` for navigating between panes in vim

### undotree
`<leader>pv` open the undotree pane

### harpoon
`<leader>a` add file to harpoon  
`<C-e>` harpoon quick menu  
`<C-y>` file 1  
`<C-t>` file 2  
`<C-n>` file 3  
`<C-s>` file 4  

### telescope
`<leader>ff` find files  
`<leader>ps` grep inside file  
`<C-p>` find inside git  

### nvim-tree
`<leader>pe` toggle nvim tree

### terminal
`<leader>t` opens a floating teminal window
`<leader>th` opens horizontal terminal window
`<leader>tv` opens vertical terminal window
`<C-a>` close the window
`<C-hjkl>` move from the window
`<leader>tt` go back to the last terminal window
