Install PicoShell :

1. Créer user42 avec comme mot de passe 4242 et comme indice "La réponse à la grande question
	sur la vie, l'univers et le reste 2x de suite"
2. Supprimer du doc et du bureau tout ce qui est superflue (ne laisser dans le dock que
	iterm2)
3. Taper dans le terminal : ```cd ~ && git clone https://github.com/tricaducee/PicoShell.git .bin && cd .bin && make re && ./install```
4. Set as default les folder avec l’image qui à pop sur le desktop, set le folder WELCOM à
	color et en blanc, et set les réglages icon size et grid spacing as default comme sur l’image
	folder_settings
5. Supprimer les 2 images, prendre une capture d’écran avec Maj, Commande et 3 et l’utilisée comme fond d’écran du bureau
6. Suprimer le screen shot et le folder OPEN_ME
7. Set PicoShell comme default shell dans iterm dans iTerm2/preference…/Profiles/Command
	change Login Shell en Custom Shell et entre le path : /Users/user42/.bin/PicoShell
8. Une fois une partie terminée tape reset_pico dans un vrai terminal et vérifie que tout est
	OK