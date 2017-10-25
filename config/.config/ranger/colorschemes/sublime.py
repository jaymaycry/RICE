# Ranger theme

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Default(ColorScheme):
	def use(self, context):
		fg, bg, attr = default_colors

		if context.reset:
			return default_colors

		elif context.in_browser:
			if context.selected:
				attr = reverse
			else:
				attr = normal
			if context.empty or context.error:
				bg = white
			if context.border:
				attr = normal
				fg = green
			if context.media:
				if context.image:
					fg = white
				else:
					fg = white
			if context.container:
				attr |= bold
				fg = red
			if context.directory:
				attr |= normal
				fg = green
			elif context.executable and not \
					any((context.media, context.container,
						context.fifo, context.socket)):
				attr |= normal
				fg = red
			if context.socket:
				fg = white
			if context.fifo or context.device:
				fg = white
				if context.device:
					attr |= bold
			if context.link:
				fg = context.good and cyan or magenta
			if context.tag_marker and not context.selected:
				attr |= bold
				if fg in (black, magenta):
					fg = blue
				else:
					fg = blue
			if not context.selected and (context.cut or context.copied):
				fg = yellow
				attr |= bold
			if context.main_column:
				if context.selected:
					attr |= normal
				if context.marked:
					attr |= bold
					fg = yellow
			if context.badinfo:
				if attr & reverse:
					bg = magenta
				else:
					fg = white

		elif context.in_titlebar:
			attr |= normal
			if context.hostname:
				attr |= bold
				fg = context.bad and black or black
			elif context.directory:
				fg = magenta
			elif context.tab:
				if context.good:
					bg = red
			elif context.link:
				fg = cyan

		elif context.in_statusbar:
			if context.permissions:
				if context.good:
					fg = red
				elif context.bad:
					fg = magenta
			if context.marked:
				attr |= bold | reverse
				fg = yellow
			if context.message:
				if context.bad:
					attr |= bold
					fg = white

		if context.text:
			if context.highlight:
				attr |= reverse

		if context.in_taskview:
			if context.title:
				fg = blue

			if context.selected:
				attr |= reverse

		return fg, bg, attr
