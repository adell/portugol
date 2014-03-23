# Mac OSX build helpers

# JSON -> tmLanguage
# This can be configured run on each save, using SublimeOnSaveBuild:
# https://github.com/alexnj/SublimeOnSaveBuild/
# ..along with this sublime-build file:
# https://github.com/danro/dotfiles/blob/d7c084e194a6ebd6649a8f270021047a57b62c0b/sublime/build/plutil.sublime-build
.PHONY: jsontm
jsontm:
	plutil -convert xml1 portugol.tmLanguage.json -o portugol.tmLanguage

# tmLanguage -> JSON
.PHONY: tmjson
tmjson:
	plutil -convert json -r portugol.tmLanguage -o portugol.tmLanguage.json
