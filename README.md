# vim-better-comments

BetterComments extension will help you create more human-friendly comments in your code.
I've borrowed the core idea from the [Visual Studio plugin](https://github.com/aaron-bond/better-comments) with the same name.

![](images/screenshoot.gif)

## Configuration

You can tweak the behavior of BetterComments by setting a few variables in your `vimrc` file.

### Colors

Change colors to your preferences by tweaking the provided highlight groups:

```vim
ErrorBetterComments
HighlightBetterComments
QuestionBetterComments
StrikeoutBetterComments
TodoBetterComments
```

### Target languages

Syntax files authors usually prepend highlight groups with the name of the target language. BetterComments tries to expand those comment highlight groups definitions to detect meaningful matches. In some cases like, for example [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript), that naming convention is not followed. In such cases, you can overcome the mismatch providing a dictionary of aliases:

```vim
let g:bettercomments_language_aliases = { 'javascript': 'js' }
```

By default, all languages are targeted. You can change that behaviour by providing either a `g:bettercomments_skipped` list or a `g:bettercomments_included` list.

## Bugs

Please report any bugs you may find on the GitHub [issue tracker](http://github.com/jbgutierrez/vim-better-comments/issues).

## Contributing

Think you can make BetterComments better? Great!, contributions are always welcome.

Fork the [project](http://github.com/jbgutierrez/vim-better-comments) on GitHub and send a pull request.

## License

BetterComments is licensed under the MIT license.
See http://opensource.org/licenses/MIT

Happy hacking!
