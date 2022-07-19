# notifs-sealife

Voici la seule repo GitHub qui vous montre comment on utilise les notifs SeaLife (flashbackfa etc).

Rejoignez ce discord pour toute demande d'aide: https://discord.gg/fivedev meilleur discord de leak

## Comment utiliser les notifs

En premier temps, il vous faudra installer le script qui se nomme ``bulletin``. [Cliquez ici pour le télécharger](https://gofile.io/d/0IRTH8)

Une fois mis dans le dossier ``resources`` de votre serveur, il vous faudra le start dans le ``server.cfg`` ou le ``ressources.cfg`` cela dépend de votre base.

Une fois ceci fait, allez chercher votre ``es_extended``. Une fois trouvé, allez dans ``client/functions.lua``.

Remplacez tout cela:

```
function ESX.ShowNotification(msg, hudColorIndex)
	AddTextEntry('esxNotification', msg)
	BeginTextCommandThefeedPost('esxNotification')
	if hudColorIndex then ThefeedNextPostBackgroundColor(hudColorIndex) end
	EndTextCommandThefeedPostTicker(false, true)
end

function ESX.ShowAdvancedNotification(title, subject, msg, icon, iconType, hudColorIndex)
	AddTextEntry('esxAdvancedNotification', msg)
	BeginTextCommandThefeedPost('esxAdvancedNotification')
	if hudColorIndex then ThefeedNextPostBackgroundColor(hudColorIndex) end
	EndTextCommandThefeedPostMessagetext(icon, icon, false, iconType, title, subject)
	EndTextCommandThefeedPostTicker(false, false)
end

function ESX.ShowHelpNotification(msg)
	AddTextEntry('esxHelpNotification', msg)
	BeginTextCommandDisplayHelp('esxHelpNotification')
	EndTextCommandDisplayHelp(0, false, true, -1)
end
```

par cela:

```
function ESX.ShowNotification(msg, flash, saveToBrief, hudColorIndex, title, subject, icon)
	if title == nil then title = "NeverLife" end
	if subject == nil then subject = "ANNONCEMENT" end
	if icon == nil then icon = "message" end

	exports.bulletin:Send(msg, nil, nil, true, nil, title, subject, icon)
end

function ESX.ShowAdvancedNotification(title, subject, msg, banner, timeout, icon)
	if title == nil then title = "NeverLife" end
	if subject == nil then subject = "ANNONCEMENT" end
	if icon == nil then icon = "message" end

	exports.bulletin:SendAdvanced(msg, subject, title, banner, nil, nil, true, nil, icon)
end

function ESX.ShowHelpNotification(msg)
	AddTextEntry('esxHelpNotification', msg)
	BeginTextCommandDisplayHelp('esxHelpNotification')
	EndTextCommandDisplayHelp(0, false, true, -1)
end
```

Pour changer l'icône de la notification, allez dans ``bulletin/ui/icons`` et vous allez trouver ``message.png``. Remplacez-le par le logo de votre serveur.

⚠️Le fichier doit s'appeler ``message.png``⚠️

Et voilà, c'est fini. Si vous avez des soucis: https://discord.gg/fivedev
