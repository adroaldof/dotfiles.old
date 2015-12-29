[<-- Back](../README.md)

# Sublime Text Configurations

## Enable Command Line

        ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl


## Install [Sublime Package Manager](https://packagecontrol.io/installation)

        import urllib.request,os,hashlib; h = '2915d1851351e5ee549c20394736b442' + '8bc59f460fa1548d1514676163dafc88'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)


## Install Some Packages

1. All Autocomplete
1. AngularJS
1. BracketHighliter
1. CSSLint
1. Djaneiro
1. Django Click
1. Emmet
1. Hayaku
1. Hyperion for gettext
1. MarkdownEditing
1. Python Flake8 Lint
1. PyV8
1. Sass
1. SideBarEnhancements
1. Stylus
1. WakaTime
