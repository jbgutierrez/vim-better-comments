# vim-better-comments

BetterComments extension will help you create more human-friendly comments in your code.
I've borrow the core idea from the Visual [Visual Studio plugin](https://github.com/aaron-bond/better-comments) with the same name.

![](images/screenshoot.gif)

## Configuration

You can tweak the behavior of Partial by setting a few variables in your `vimrc` file.

### Colors

Change colors to your preferences by tweaking the provided hightlight groups:

```vim
ErrorBetterComments
HighlightBetterComments
QuestionBetterComments
StrikeoutBetterComments
TodoBetterComments
```

### Target languages

By default, the comments in all languages are handled. You can change that behaviour by providing either a `g:bettercomments_skipped` list or a `g:bettercomments_included` list.

## Bugs

Please report any bugs you may find on the GitHub [issue tracker](http://github.com/jbgutierrez/vim-better-comments/issues).

## Contributing

Think you can make Partial better? Great!, contributions are always welcome.

Fork the [project](http://github.com/jbgutierrez/vim-better-comments) on GitHub and send a pull request.

## License

Partial is licensed under the MIT license.
See http://opensource.org/licenses/MIT

Happy hacking!
