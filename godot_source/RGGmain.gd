extends Control

const UI_FONT: = preload("res://fonts/NotoSans-Regular.ttf")
const UI_CJK_FALLBACK_FONT_PATH: = "res://fonts/NotoSansCJKjp-Regular.otf"
const UI_ARABIC_FALLBACK_FONT_PATH: = "res://fonts/NotoNaskhArabic-Regular.ttf"
const UI_THAI_FALLBACK_FONT_PATH: = "res://fonts/NotoSansThai-Regular.ttf"
const UI_MUSIC_FALLBACK_FONT_PATH: = "res://fonts/NotoMusic-Regular.ttf"
const UI_SYMBOL_FALLBACK_FONT_PATH: = "res://fonts/DejaVuSans.ttf"
const UI_EMOJI_FALLBACK_FONT_PATH: = "res://fonts/NotoColorEmoji_WindowsCompatible.ttf"
const CAT_LIST_ID: = "cat"
const CAT_LIST_PATH: = "res://lists/cat.dat"
const GUITMAN_LIST_ID: = "guitman"
const GUITMAN_LIST_PATH: = "res://lists/guitman.dat"
const GUITMAN_MODE_TITLE: = "Гитман"
const BATMAN43_LIST_ID: = "batman43"
const BATMAN43_LIST_PATH: = "res://lists/batman43.dat"
const BATMAN43_MODE_TITLE: = "Говно от Бэтмена"
const PLATFORMS_LIST_ID: = "platforms"
const PLATFORMS_LIST_PATH: = "res://lists/platforms.dat"
const EXTRA_LIST_ID: = "extra"
const EXTRA_LIST_PATH: = "res://lists/extra/extra.dat"
const EXTRA_USER_LIST_PATH: = "user://extra_user.dat"
const EXTRA_REMOVED_ENTRIES_PATH: = "user://extra_removed_entries.dat"
const WHEEL_LIST_ID: = "wheel"
const WHEEL_LIST_PATH: = "res://lists/wheel.dat"
const WHEEL_REMOVED_ENTRIES_PATH: = "user://wheel_removed_entries.dat"
const CUSTOM_BACKGROUND_IMAGE_PATH: = "user://custom_background.png"
const CUSTOM_BACKGROUND_MODE_PATH: = "user://custom_background_mode.txt"
const CUSTOM_BACKGROUND_MODE_STRETCH: = "stretch"
const CUSTOM_BACKGROUND_MODE_CENTER: = "center"
const CUSTOM_ROLL_MUSIC_PATH: = "user://custom_roll_music.mp3"
const CUSTOM_ROLL_ITEM_COLOR_PATH: = "user://custom_roll_item_color.txt"
const CUSTOM_BUTTON_COLOR_PATH: = "user://custom_button_color.txt"
const CUSTOM_BUTTON_FILL_COLOR_PATH: = "user://custom_button_fill_color.txt"
const SOUND_MUTED_SETTING_PATH: = "user://sound_muted.txt"
const SOUND_VOLUME_PERCENT_SETTING_PATH: = "user://sound_volume_percent.txt"
const TTS_ENABLED_SETTING_PATH: = "user://tts_enabled.txt"
const TTS_RATE_SETTING_PATH: = "user://tts_rate.txt"
const WHEEL_DESCRIPTION_LIST_PATH: = "res://lists/wheel_list.dat"
const WHEEL_MODE_TITLE: = "Колесо добра"
const PLATFORMS_MODE_TITLE: = "Платформы"
const CAT_MODE_TITLE: = "Кот в мешке"

const EXTRA_MODE_TITLE: = "EXTRA"




const DEBUG_USE_LOCAL_LISTS: = true
const DEBUG_LOCAL_LISTS_DIR: = "lists"
const HARDCORE_LIST_PATH: = "res://lists/hardcore.dat"
const HARDCORE_DESCRIPTION_LIST_PATH: = "res://lists/hardcore_list.dat"
const LOOTBOX_DESCRIPTION_LIST_PATH: = "res://lists/lootboxdescr.dat"
const LOOTBOX_DESCRIPTION_TARGET_PATHS: Array[String] = [
    "res://lists/bombs.dat", 
    "res://lists/gremlins.dat", 
    "res://lists/alive.dat", 
    "res://lists/cool.dat", 
    "res://lists/edibles.dat", 
    "res://lists/guns.dat", 
    "res://lists/items.dat", 
    "res://lists/dices.dat", 
    "res://lists/rats.dat", 
    "res://lists/epic.dat", 
    "res://lists/legendary.dat", 
    "res://lists/mythic.dat", 
    "res://lists/potions.dat", 
    "res://lists/golden.dat", 
    "res://lists/specrolls.dat", 
    "res://lists/effects.dat", 
]
const BROWSER_ICON_SCALE: = 1.5
const BROWSER_ICON_DROP: = 4.0
const WHEEL_DELETE_ICON: = preload("res://images/delete.png")
const WHEEL_ALREADY_DELETED_ICON: = preload("res://images/alreadydeleted.png")
const CALC_BUTTON_ICON: = preload("res://sprites/calc.png")
const SETTINGS_BUTTON_ICON: = preload("res://sprites/settings.png")
const DEFAULT_ROLL_ITEM_COLOR: = Color(0.92, 0.92, 0.96, 1.0)
const DEFAULT_UI_BUTTON_TEXT_COLOR: = Color(0.92, 0.92, 0.96, 1.0)
const DEFAULT_SELECTED_LIST_TEXT_COLOR: = Color(0.9, 0.93, 0.98, 1.0)
const DEFAULT_SELECTED_COUNT_TEXT_COLOR: = Color(0.84, 0.88, 0.94, 1.0)
const DEFAULT_ROLL_BUTTON_TEXT_COLOR: = Color(0.05, 0.08, 0.12, 1.0)
const DEFAULT_ULTRA_BUTTON_TEXT_COLOR: = Color(0.56, 0.56, 0.6, 1.0)
const DEFAULT_TILE_ICON_TEXT_COLOR: = Color(0.9, 0.9, 0.94, 1.0)

const PLATFORM_BROWSER_TOGGLE_WAIT: = 0.28
const SPECIAL_ROLL_BROWSER_TOGGLE_WAIT: = 0.28
const LOOTBOX_BROWSER_TOGGLE_WAIT: = 0.28
const PLATFORM_BROWSER_ITEMS: Array[Dictionary] = [
    {"id": "nes", "title": "Famicom / NES", "path": "res://lists/list_nes.dat", "icon_path": "res://images/platforms/Famicom_Nes.png"}, 
    {"id": "sms", "title": "Sega Master System", "path": "res://lists/list_sms.dat", "icon_path": "res://images/platforms/segamastersystem.png"}, 
    {"id": "tg16", "title": "TurboGrafx", "path": "res://lists/list_tg16.dat", "icon_path": "res://images/platforms/turbografx.png"}, 
    {"id": "smd", "title": "MegaDrive / Genesis", "path": "res://lists/list_smd.dat", "icon_path": "res://images/platforms/megadrive_genesis.png"}, 
    {"id": "gb", "title": "GameBoy / Color", "path": "res://lists/list_gb.dat", "icon_path": "res://images/platforms/gameboy_color.png"}, 
    {"id": "gg", "title": "GameGear", "path": "res://lists/list_gg.dat", "icon_path": "res://images/platforms/gamegear.png"}, 
    {"id": "snes", "title": "Super Famicom / SNES", "path": "res://lists/list_snes.dat", "icon_path": "res://images/platforms/superfamicom_snes.png"}, 
    {"id": "3do", "title": "Panasonic 3DO", "path": "res://lists/list_3do.dat", "icon_path": "res://images/platforms/panasonic3do.png"}, 
    {"id": "ss", "title": "Sega Saturn", "path": "res://lists/list_ss.dat", "icon_path": "res://images/platforms/segasaturn.png"}, 
    {"id": "psx", "title": "PS1", "path": "res://lists/list_psx.dat", "icon_path": "res://images/platforms/ps1.png"}, 
    {"id": "vb", "title": "Virtual Boy", "path": "res://lists/list_vb.dat", "icon_path": "res://images/platforms/virtualboy.png"}, 
    {"id": "n64", "title": "Nintendo 64", "path": "res://lists/list_n64.dat", "icon_path": "res://images/platforms/nintendo64.png"}, 
    {"id": "ngp", "title": "NeoGeo Pocket", "path": "res://lists/list_ngp.dat", "icon_path": "res://images/platforms/neogeopocket.png"}, 
    {"id": "dc", "title": "Dreamcast", "path": "res://lists/list_dc.dat", "icon_path": "res://images/platforms/dreamcast.png"}, 
    {"id": "ws", "title": "Wonder Swan", "path": "res://lists/list_ws.dat", "icon_path": "res://images/platforms/wonderswan.png"}, 
    {"id": "ps2", "title": "PS2", "path": "res://lists/list_ps2.dat", "icon_path": "res://images/platforms/ps2.png"}, 
    {"id": "gc", "title": "Gamecube", "path": "res://lists/list_gc.dat", "icon_path": "res://images/platforms/gamecube.png"}, 
    {"id": "xbx", "title": "Xbox", "path": "res://lists/list_xbx.dat", "icon_path": "res://images/platforms/xbox.png"}, 
    {"id": "gba", "title": "GBA", "path": "res://lists/list_gba.dat", "icon_path": "res://images/platforms/gba.png"}, 
    {"id": "ds", "title": "Nintendo DS", "path": "res://lists/list_ds.dat", "icon_path": "res://images/platforms/nintendods.png"}, 
    {"id": "psp", "title": "PSP", "path": "res://lists/list_psp.dat", "icon_path": "res://images/platforms/psp.png"}, 
    {"id": "ps3", "title": "PS3", "path": "res://lists/list_ps3.dat", "icon_path": "res://images/platforms/ps3.png"}, 
    {"id": "wii", "title": "Wii", "path": "res://lists/list_wii.dat", "icon_path": "res://images/platforms/wii.png"}, 
    {"id": "3ds", "title": "Nintendo 3DS", "path": "res://lists/list_3ds.dat", "icon_path": "res://images/platforms/nintendo3ds.png"}, 
    {"id": "wiiu", "title": "Wii U", "path": "res://lists/list_wiiu.dat", "icon_path": "res://images/platforms/wiiU.png"}, 
    {"id": "zx", "title": "ZX Spectrum", "path": "res://lists/list_zx.dat", "icon_path": "res://images/platforms/zxspectrum.png"}, 
    {"id": "c64", "title": "Commodore 64", "path": "res://lists/list_c64.dat", "icon_path": "res://images/platforms/commodore64.png"}, 
    {"id": "msx", "title": "MSX / MSX 2", "path": "res://lists/list_msx.dat", "icon_path": "res://images/platforms/msx_msx2.png"}, 
    {"id": "acpc", "title": "Amstrad CPC", "path": "res://lists/acpc.dat", "icon_path": "res://images/platforms/amstradcpc.png"}, 
    {"id": "amg", "title": "Commodore Amiga", "path": "res://lists/list_amg.dat", "icon_path": "res://images/platforms/commodoreamiga.png"}, 
    {"id": "x68000", "title": "Sharp X68000", "path": "res://lists/x68000.dat", "icon_path": "res://images/platforms/sharpx68000.png"}, 
    {"id": "dos", "title": "DOS", "path": "res://lists/list_dos.dat", "icon_path": "res://images/platforms/dos.png"}, 
    {"id": "peka", "title": "Windows", "path": "res://lists/list_peka.dat", "icon_path": "res://images/platforms/windows.png"}, 
    {"id": "atari", "title": "ATARI", "path": "res://lists/atari.dat", "icon_path": "res://images/platforms/atari.png"}, 
    {"id": "java", "title": "Java", "path": "res://lists/list_java.dat", "icon_path": "res://images/platforms/java.png"}, 
    {"id": "steam", "title": "Steam", "path": "res://lists/steam.dat", "icon_path": "res://images/platforms/steam.png"}, 
]
const SPECIAL_ROLL_ITEMS: Array[Dictionary] = [
    {"id": "kernel", "title": "Kernel", "path": "res://lists/kernel.dat", "tooltip": "Недопройденные игры стримеров на конец сезона RGG-LAND"},
    {"id": "female", "title": "Female", "path": "res://lists/female.dat", "tooltip": "Игры с протагонистом женского пола"},
    {"id": "train", "title": "Поезд", "path": "res://lists/train.dat", "tooltip": "Всеми любимые замемасившиеся РГГ-игры"},
    {"id": "tornis", "title": "TorNis", "path": "res://lists/tornis.dat", "tooltip": "Игры от Торниса"},
    {"id": "steam_unf", "title": "Steam UNF", "path": "res://lists/steam_unf.dat", "tooltip": "Нефильтрованный список почти всех игр, присутствующих в Стиме"},
    {"id": "souls_unf", "title": "Souls UNF", "path": "res://lists/souls_unf.dat", "tooltip": "Нефильтрованный список игр из Стима с тегом soulslike"},
    {"id": "shmup", "title": "Shmup", "path": "res://lists/shmup.dat", "tooltip": "Шут-эм-апы"},
    {"id": "sega", "title": "Sega", "path": "res://lists/sega.dat", "tooltip": "Знаковые и культовые игры, сделанные Сегой"},
    {"id": "pizza", "title": "Pizza", "path": "res://lists/pizza.dat", "tooltip": "Игры от Нойки"},
    {"id": "pike", "title": "Пике", "path": "res://lists/pike.dat", "tooltip": "Альтернативные замемасившимся игры с РГГ"},
    {"id": "mini", "title": "Mini", "path": "res://lists/mini.dat", "tooltip": "Игры с небольших и редких платформ"},
    {"id": "kover", "title": "Kover", "path": "res://lists/kover.dat", "tooltip": "Игры от Ковра"},
    {"id": "mario", "title": "Mario", "path": "res://lists/mario.dat", "tooltip": "Официальные игры, неофициальные игры, хаки, моды и фан-геймы по Марио"},
    {"id": "sonic", "title": "Sonic", "path": "res://lists/sonic.dat", "tooltip": "Официальные игры, неофициальные игры, хаки, моды и фан-геймы по Сонику"},
    {"id": "megaman", "title": "Megaman", "path": "res://lists/megaman.dat", "tooltip": "Официальные игры, неофициальные игры, хаки, моды и фан-геймы по Мегамену"},
    {"id": "jim", "title": "Earthworm Jim", "path": "res://lists/jim.dat", "tooltip": "Игры по Червяку Джиму"},
    {"id": "makaimura", "title": "Ghosts'n Goblins", "path": "res://lists/makaimura.dat", "tooltip": "Игры из серии Ghosts 'n Goblins"},
    {"id": "dizzy", "title": "Dizzy", "path": "res://lists/dizzy.dat", "tooltip": "Официальные игры, неофициальные игры, хаки, моды и фан-геймы по Диззи"},
    {"id": "mermaid", "title": "Русалочка", "path": "res://lists/mermaid.dat", "tooltip": "Игры по Русалочке"},
    {"id": "flintstones", "title": "Flintstones", "path": "res://lists/flintstones.dat", "tooltip": "Игры по Флинтстоунам"},
    {"id": "castlevania", "title": "Castlevania", "path": "res://lists/castlevania.dat", "tooltip": "Официальные игры, неофициальные игры, хаки, моды и фан-геймы по Кастлвании"},
    {"id": "metroidvania", "title": "Metroidvania", "path": "res://lists/metroidvania.dat", "tooltip": "Метроидвании"},
    {"id": "AVGN", "title": "AVGN", "path": "res://lists/AVGN.dat", "tooltip": "Игры, которые обозревал Angry Video Game Nerd"},
    {"id": "gccx", "title": "Game Center CX", "path": "res://lists/gccx.dat", "tooltip": "Игры из японского летспей-шоу Game Center CX"},
    {"id": "sms_gg", "title": "SMS+GG", "path": "res://lists/sms_gg.dat", "tooltip": "Игры с платформ Master System и Game Gear"},
    {"id": "nintendo", "title": "Nintendo", "path": "res://lists/nintendo.dat", "tooltip": "Знаковые и культовые игры, сделанные Нинтендо"},
    {"id": "playstation", "title": "Playstation", "path": "res://lists/playstation.dat", "tooltip": "Знаковые и культовые игры, сделанные Сони"},
    {"id": "allpc", "title": "All-PC", "path": "res://lists/allpc.dat", "tooltip": "Игры из всех списков олдовых пек: DOS, ZX Spectrum, Amiga, C64, MSX, Amstrad, Sharp X68000, Windows"},
    {"id": "capcom", "title": "CAPCOM", "path": "res://lists/capcom.dat", "tooltip": "Игры, сделанные Капкомом"},
    {"id": "konami", "title": "KONAMI", "path": "res://lists/konami.dat", "tooltip": "Игры, сделанные Конами"},
    {"id": "disney", "title": "Disney", "path": "res://lists/disney.dat", "tooltip": "Игры по франшизам Диснея"},
    {"id": "namco", "title": "namco", "path": "res://lists/namco.dat", "tooltip": "Игры, сделанные Намко"},
    {"id": "rare", "title": "RARE", "path": "res://lists/rare.dat", "tooltip": "Игры, сделанные Реир"},
    {"id": "lukas", "title": "Lucas Arts", "path": "res://lists/lukas.dat", "tooltip": "Игры, сделанные Лукас Артсом"},
    {"id": "hudson", "title": "Hudson Soft", "path": "res://lists/hudson.dat", "tooltip": "Игры, сделанные Хадсон Софтом"},
    {"id": "iwb", "title": "I Wanna be", "path": "res://lists/iwb.dat", "tooltip": "Фан-геймы, основанные на движке I wanna be the guy"},
    {"id": "nancy", "title": "Нэнси Дрю", "path": "res://lists/nancy.dat", "tooltip": "Игры по Нэнси Дрю"},
    {"id": "WAR", "title": "WAR", "path": "res://lists/WAR.dat", "tooltip": "Игры на военную тематику"},
    {"id": "top100", "title": "TOP100", "path": "res://lists/top100.dat", "tooltip": "Игры от разработчиков и помощников в разработке RGG"},
    {"id": "2007", "title": "2007", "path": "res://lists/2007.dat", "tooltip": "Игры, вышедшие в 2007 году"},
    {"id": "rhythm", "title": "Rhythm", "path": "res://lists/rhythm.dat", "tooltip": "Ритм-игры"},
    {"id": "horror", "title": "Horror", "path": "res://lists/horror.dat", "tooltip": "Страшные игры от Кавая"},
    {"id": "racing", "title": "Racing", "path": "res://lists/racing.dat", "tooltip": "Гоночные игры"},
    {"id": "weird", "title": "Weird", "path": "res://lists/weird.dat", "tooltip": "Durka - странные игры"},
    {"id": "arcade", "title": "Arcade", "path": "res://lists/arcade.dat", "tooltip": "Игры с аркадных автоматов"},
    {"id": "past", "title": "Прошлое", "path": "res://lists/past.dat", "tooltip": "Игры, которые дропали стримеры во всех сезонах RGG-LAND"},
    {"id": "souls", "title": "Souls-like", "path": "res://lists/souls.dat", "tooltip": "Специально отобранные соулс-лайки"},
    {"id": "touhou", "title": "Touhou", "path": "res://lists/touhou.dat", "tooltip": "Игры из серии Touhou Project"},
    {"id": "vhs", "title": "VHS", "path": "res://lists/vhs.dat", "tooltip": "Игры по фильмам от Глеба"},
    {"id": "hakon", "title": "XaKoH", "path": "res://lists/hakon.dat", "tooltip": "Игры от Хакона"},
    {"id": "zhem", "title": "Zhem", "path": "res://lists/zhem.dat", "tooltip": "Квесты от Жем"},
    {"id": "suponev", "title": "Супонев", "path": "res://lists/suponev.dat", "tooltip": "Игры из передачи «Новая реальность»"},
    {"id": "kinaman", "title": "Кинаман", "path": "res://lists/kinaman.dat", "tooltip": "Игры из Dendy Challenge от Кинамана"},
    {"id": "ping", "title": "Ping", "path": "res://lists/ping.dat", "tooltip": "Игры про котов от Пинг"},
    {"id": "73", "title": "73", "path": "res://lists/73.dat", "tooltip": "Игры от Нюка"},
    {"id": "negativ4ik", "title": "NeGAtiv4k", "path": "res://lists/negativ4ik.dat", "tooltip": "Игры от Негативчика"},
    {"id": "browjey", "title": "Бровян", "path": "res://lists/browjey.dat", "tooltip": "Игры Бровяна со всех его RGG"},
    {"id": "rats", "title": "Расти", "path": "res://lists/rusty.dat", "tooltip": "Игры от Расти"},
    {"id": "ruben", "title": "Ruben", "path": "res://lists/ruben.dat", "tooltip": "Игры от Рубена"},
    {"id": "tanya", "title": "Таня", "path": "res://lists/tanya.dat", "tooltip": "Игры от Тани"},
    {"id": "rggland", "title": "RGG", "path": "res://lists/rggland.dat", "tooltip": "Несколько любимых игр от каждого стримера-участника RGG"},
    {"id": "items", "title": "Замок", "path": "res://lists/items.dat", "tooltip": "Самые сложные и хардкорные игры"},
    {"id": "ducks", "title": "Утки", "path": "res://lists/ducks.dat", "tooltip": "Игры на утиную тематику"},
    {"id": "migorei", "title": "Мастер Игорей", "path": "res://lists/migorei.dat", "tooltip": "Игры из ивента Мастер Игорей"},
    {"id": "boobs", "title": "Boobs", "path": "res://lists/boobs.dat", "tooltip": "Игры про сиськи от Давида"},
    {"id": "golden", "title": "Золото", "path": "res://lists/Gold.dat", "tooltip": "Лучшие игры со всех платформ"},
    {"id": "ports", "title": "Порты", "path": "res://lists/ports.dat", "tooltip": "Малоизвестные порты известных игр на разные платформы"},
    {"id": "roguelite", "title": "Roguelite", "path": "res://lists/roguelite.dat", "tooltip": "Рогалики от Тиана"},
    {"id": "doom", "title": "Doom", "path": "res://lists/doom.dat", "tooltip": "WAD-моды для всех версий старых Думов"},
    {"id": "vk", "title": "VK", "path": "res://lists/vk.dat", "tooltip": "Игры из магазина VK Play"},
    {"id": "pixel_games", "title": "Pixel Games", "path": "res://lists/pixel.dat", "tooltip": "Игры от издателя Pixel Games в Стиме"},
    {"id": "anime", "title": "Anime", "path": "res://lists/anime.dat", "tooltip": "Игры по аниме"},
    {"id": "ninja", "title": "Ninja", "path": "res://lists/ninja.dat", "tooltip": "Игры про ниндзей"},
    {"id": "zombie", "title": "Zombie", "path": "res://lists/zombie.dat", "tooltip": "Игры про зомби"},
]
const SPECIAL_ROLL_ICON_PATHS: = {
    "2007": "res://images/specrolls/2007.png", 
    "allpc": "res://images/specrolls/allpc.png", 
    "anime": "res://images/specrolls/anime.png", 
    "arcade": "res://images/specrolls/arcade.png", 
    "AVGN": "res://images/specrolls/avgn.png", 
    "boobs": "res://images/specrolls/boobs.png", 
    "browjey": "res://images/specrolls/бровян.png", 
    "capcom": "res://images/specrolls/capcom.png", 
    "castlevania": "res://images/specrolls/castelvania.png", 
    "disney": "res://images/specrolls/disney.png", 
    "dizzy": "res://images/specrolls/dizzy.png", 
    "doom": "res://images/specrolls/doom.png", 
    "ducks": "res://images/specrolls/утки.png", 
    "flintstones": "res://images/specrolls/flintstones.png", 
    "gccx": "res://images/specrolls/gamecentrCX.png", 
    "golden": "res://images/specrolls/золото.png", 
    "hakon": "res://images/specrolls/xakoh.png", 
    "horror": "res://images/specrolls/horror.png", 
    "hudson": "res://images/specrolls/hudsonsoft.png", 
    "items": "res://images/specrolls/замок.png", 
    "iwb": "res://images/specrolls/iwannabe.png", 
    "jim": "res://images/specrolls/earthwormjim.png", 
    "kinaman": "res://images/specrolls/кинаман.png", 
    "konami": "res://images/specrolls/konami.png", 
    "lukas": "res://images/specrolls/lucasart.png", 
    "makaimura": "res://images/specrolls/ghostandgoblins.png", 
    "mario": "res://images/specrolls/mario.png", 
    "megaman": "res://images/specrolls/megaman.png", 
    "mermaid": "res://images/specrolls/русалочка.png", 
    "metroidvania": "res://images/specrolls/metroidvania.png", 
    "migorei": "res://images/specrolls/мастер игорей.png", 
    "movies": "res://images/specrolls/movies.png", 
    "namco": "res://images/specrolls/namco.png", 
    "nancy": "res://images/specrolls/нэнсидрю.png", 
    "negativ4ik": "res://images/specrolls/negativ4k.png", 
    "nintendo": "res://images/specrolls/nintendo.png", 
    "past": "res://images/specrolls/прошлое.png", 
    "ping": "res://images/specrolls/ping.png", 
    "playstation": "res://images/specrolls/playstation.png", 
    "ports": "res://images/specrolls/порты.png", 
    "racing": "res://images/specrolls/racing.png", 
    "rare": "res://images/specrolls/rare.png", 
    "rats": "res://images/specrolls/rusty.png", 
    "rggland": "res://images/specrolls/RGG.png", 
    "rhythm": "res://images/specrolls/rhythm.png", 
    "roguelite": "res://images/specrolls/rouguelite.png", 
    "ruben": "res://images/specrolls/ruben.png", 
    "sms_gg": "res://images/specrolls/smggg.png", 
    "sonic": "res://images/specrolls/sonic.png", 
    "souls": "res://images/specrolls/soulslike.png", 
    "suponev": "res://images/specrolls/супонев.png", 
    "tanya": "res://images/specrolls/таня.png", 
    "top100": "res://images/specrolls/top100.png", 
    "touhou": "res://images/specrolls/touhou.png", 
    "vhs": "res://images/specrolls/vhs.png", 
    "vk": "res://images/specrolls/vk.png", 
    "WAR": "res://images/specrolls/war.png", 
    "weird": "res://images/specrolls/weird.png", 
    "zhem": "res://images/specrolls/zhem.png", 
    "kernel": "res://images/specrolls/kernel.png", 
    "female": "res://images/specrolls/female.png", 
    "train": "res://images/specrolls/train.png", 
    "steam_unf": "res://images/specrolls/steam_unf.png", 
    "souls_unf": "res://images/specrolls/souls_unf.png", 
    "shmup": "res://images/specrolls/shmup.png", 
    "sega": "res://images/specrolls/sega.png", 
    "pizza": "res://images/specrolls/pizza.png", 
    "pixel_games": "res://images/specrolls/pixel_games.png",
    "ninja": "res://images/specrolls/ninja.png",
    "zombie": "res://images/specrolls/zombie.png",
    "pike": "res://images/specrolls/pike.png", 
    "mini": "res://images/specrolls/mini.png", 
    "tornis": "res://images/specrolls/tornis.png", 
    "kover": "res://images/specrolls/kover.png", 
}
const LOOTBOX_ITEMS: Array[Dictionary] = [
    {"id": "bombs", "title": "Бомбы", "path": "res://lists/bombs.dat"}, 
    {"id": "gremlins", "title": "Гремлины", "path": "res://lists/gremlins.dat"}, 
    {"id": "alive", "title": "Живые", "path": "res://lists/alive.dat"}, 
    {"id": "cool", "title": "Крутые", "path": "res://lists/cool.dat"}, 
    {"id": "edibles", "title": "Съедобные", "path": "res://lists/edibles.dat"}, 
    {"id": "guns", "title": "Оружия", "path": "res://lists/guns.dat"}, 
    {"id": "items", "title": "Предметы", "path": "res://lists/items.dat"}, 
    {"id": "dices", "title": "Кубики", "path": "res://lists/dices.dat"}, 
    {"id": "rats", "title": "Крысы", "path": "res://lists/rats.dat"}, 
    {"id": "epic", "title": "Эпик", "path": "res://lists/epic.dat"}, 
    {"id": "legendary", "title": "Легендарный", "path": "res://lists/legendary.dat"}, 
    {"id": "mythic", "title": "Мифический", "path": "res://lists/mythic.dat"}, 
    {"id": "potions", "title": "Зелья", "path": "res://lists/potions.dat"}, 
    {"id": "coins", "title": "Монетки", "path": "res://lists/coins.dat"}, 
    {"id": "gold", "title": "Золото", "path": "res://lists/golden.dat"}, 
    {"id": "wheels", "title": "Колеса", "path": "res://lists/wheels.dat"}, 
    {"id": "mods", "title": "Моды", "path": "res://lists/mods.dat"}, 
    {"id": "roulette", "title": "Рулетка", "path": "res://lists/roulette.dat"}, 
    {"id": "effects", "title": "Эффекты", "path": "res://lists/effects.dat"}, 
    {"id": "specrolls", "title": "Спец роллы", "path": "res://lists/specrolls.dat"}, 
]
const LOOTBOX_ICON_PATHS: = {
    "bombs": "res://images/lootboxes/бомбы.png", 
    "gremlins": "res://images/lootboxes/гремлены.png", 
    "alive": "res://images/lootboxes/живые.png", 
    "cool": "res://images/lootboxes/крутые.png", 
    "edibles": "res://images/lootboxes/съедобные.png", 
    "guns": "res://images/lootboxes/оружия.png", 
    "items": "res://images/lootboxes/предметы.png", 
    "dices": "res://images/lootboxes/кубики.png", 
    "rats": "res://images/lootboxes/крысы.png", 
    "epic": "res://images/lootboxes/эпик.png", 
    "legendary": "res://images/lootboxes/легендарный.png", 
    "mythic": "res://images/lootboxes/мифический.png", 
    "potions": "res://images/lootboxes/зелья.png", 
    "coins": "res://images/lootboxes/монетки.png", 
    "gold": "res://images/lootboxes/золото.png", 
    "wheels": "res://images/lootboxes/колеса.png", 
    "mods": "res://images/lootboxes/моды.png", 
    "roulette": "res://images/lootboxes/рулетка.png", 
    "specrolls": "res://images/lootboxes/спецролы.png", 
    "effects": "res://images/lootboxes/effects.png", 
}
const DEFAULT_SLOT_TEXTS: Array[String] = ["-----", "------", "------", "-----", "----"]
const SLOT_TEXT_LAYOUTS: = [
    {"position": Vector2(64, 20), "size": Vector2(872, 48), "font_size": 24}, 
    {"position": Vector2(64, 96), "size": Vector2(872, 48), "font_size": 24}, 
    {"position": Vector2(72, 214), "size": Vector2(856, 84), "font_size": 28}, 
    {"position": Vector2(64, 348), "size": Vector2(872, 48), "font_size": 24}, 
    {"position": Vector2(64, 428), "size": Vector2(872, 48), "font_size": 24}, 
]
const SLOT_IMAGE_SIZES: = [
    Vector2(35, 35), 
    Vector2(62, 62), 
    Vector2(96, 96), 
    Vector2(62, 62), 
    Vector2(35, 35), 
]

const MAIN_ROLL_WAIT: = 0.06
const FINAL_ROLL_WAIT: = 0.09
const FINAL_SLOW_ROLL_WAIT: = 0.2
const FINAL_SETTLE_WAIT: = 2.0
const FINAL_SLOWDOWN_MIN_WAIT: = 0.08
const FINAL_SLOWDOWN_MAX_WAIT: = 0.84
const FINAL_SLOWDOWN_STEPS: = 22
const MANUAL_STOP_MIN_STEPS: = 28
const SLOT_SCROLL_DOWN: = 1
const SLOT_SCROLL_UP: = -1
const SLOT_SCROLL_ANIMATION_RATIO: = 0.96
const SLOT_SCROLL_ANIMATION_MIN_WAIT: = 0.045
const SLOT_SCROLL_ANIMATION_MAX_WAIT: = 0.7
const REENABLE_BUTTON_WAIT: = 0.16
const START_STOP_ENABLE_WAIT: = 5.0
const ULTRA_BUTTON_ENABLE_WAIT: = 5.0
const ULTRA_STOP_MIN_WAIT: = 0.06
const ULTRA_STOP_MAX_WAIT: = 0.2
const MIN_STOP_LENGTH: = 24
const MAX_STOP_LENGTH: = 60
const FINAL_STOP_FAST_NEXT: = 0
const FINAL_STOP_CENTER: = 1
const FINAL_STOP_SLOW_NEXT: = 2
const FINAL_STOP_SLOW_PREVIOUS: = 3
const DOUBLE_ROLL_DURATION_MULTIPLIER: = 2
const FAST_ROLL_DURATION_MULTIPLIER: = 2.5
const DOUBLE_ROLL_DURATION_LISTS: Array[String] = [
    "res://lists/2007.dat", 
    "res://lists/lukas.dat", 
    "res://lists/hakon.dat", 
]

const ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/roll.wav", 
]
const ROLL_2007_SOUND_CANDIDATES: Array[String] = [
    "res://audio/3poloski2007.mp3", 
]
const DISNEY_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/Disneyclub.mp3", 
]
const LUCAS_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/Starwars.mp3", 
]
const SPECTRUM_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/spectrum.mp3", 
]
const HAKON_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/Hakon.mp3", 
]
const PIZZA_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/пицца.mp3", 
]
const PIZZA_ROLL_VOLUME_DB: = -10.0
const HARDCORE_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/Rabi.wav", 
]
const STOP_SOUND_CANDIDATES: Array[String] = [
    "res://audio/stop.wav", 
]
const WHEEL_STOP_SOUND_CANDIDATES: Array[String] = [
    "res://audio/whl.wav", 
]
const ULTRA_STOP_SOUND_CANDIDATES: Array[String] = [
    "res://audio/aopa.wav", 
]
const MARIO_SPECIAL_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/mario_coin.wav", 
]
const SONIC_SPECIAL_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/sonic_ring.wav", 
]
const MEGAMAN_SPECIAL_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/megaman_snd.wav", 
]
const CASTLEVANIA_SPECIAL_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/castlevania_snd.wav", 
]
const PLAYSTATION_SPECIAL_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/playstation.wav", 
]
const CAPCOM_SPECIAL_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/capcom_snd.wav", 
]
const KONAMI_SPECIAL_ROLL_SOUND_CANDIDATES: Array[String] = [
    "res://audio/konami_snd.wav", 
]
const MOBYGAMES_ICON_PATH: = "res://sprites/links/MobyGames.png"
const GAMEFAQS_ICON_PATH: = "res://sprites/links/gamefaqs.png"
const RGGLAND_ICON_PATH: = "res://sprites/links/rgg.png"
const RGGLAND_URL: = "https://games.rgg.land/search/"
const TTS_DELAY_AFTER_STOP: = 0.02
const TTS_VOLUME: = 100
const TTS_PITCH: = 1.0
const DEFAULT_TTS_RATE: = 1.0
const TTS_UTTERANCE_ID: = 1
const DEFAULT_SOUND_VOLUME_PERCENT: = 100.0
const MAX_SOUND_VOLUME_PERCENT: = 200.0
const TTS_RATE_VALUES: Array[float] = [0.75, 1.0, 1.25, 1.5, 2.0]
const TTS_RATE_LABELS: Array[String] = ["TTS x0.75", "TTS x1", "TTS x1.25", "TTS x1.5", "TTS x2"]

var selected_platform: = ""
var selected_list_path: = ""
var selected_list_title: = ""

var base_games: PackedStringArray = PackedStringArray()
var games: PackedStringArray = PackedStringArray()
var shuffled_games: PackedStringArray = PackedStringArray()
var slot_entries: Array[String] = []

var selected_result_entry: = ""
var rolling: = false
var stop_requested: = false
var ultra_stop_pending: = false
var stop_via_ultra: = false
var rollnext: = 0
var stopwheel: = 0
var stop_length: = MIN_STOP_LENGTH
var mas_i: = 0
var mas_j: = 0
var prokrut_count: = 0
var rollnext2pos: = 0
var final_stop_mode: = FINAL_STOP_FAST_NEXT
var final_settle_pending: = false
var final_stop_complete_pending: = false
var planned_stop_step: = 0
var planned_center_entry: = ""
var text_color_stat: = 0
var platform: = 0
var is_main_platform: = false

var gacha: = false
var gacha_count: = 0
var gacha_garant_enabled: = false
var logs_enabled: = false

var howlongtobeat_url: = ""
var emuparadise_url: = ""
var gamefaqs_url: = ""
var youtube_url: = ""

var main_color: = DEFAULT_ROLL_ITEM_COLOR
var secondary_color: = Color(0.78, 0.8, 0.85, 1.0)

var image_cache: Dictionary = {}
var web_text_cache: Dictionary = {}
var slot_labels: Array[Label] = []
var slot_image_nodes: Array[TextureRect] = []
var slot_click_buttons: Array[Button] = []
var slot_scroll_tween: Tween
var slot_scroll_active_duration: = 0.0
var slot_scroll_animation_wait_override: = 0.0
var platform_browser_buttons: Dictionary = {}
var platform_browser_open: = false
var platform_browser_tween: Tween
var special_roll_buttons: Dictionary = {}
var special_roll_browser_open: = false
var special_roll_browser_tween: Tween
var lootbox_buttons: Dictionary = {}
var lootbox_browser_open: = false
var lootbox_browser_tween: Tween
var mobygames_button: TextureButton
var gamefaqs_button: TextureButton
var rggland_button: TextureButton
var result_links_active: = false

var rng: = RandomNumberGenerator.new()
var roll_timer: Timer
var finalize_timer: Timer
var delay_timer: Timer
var ultra_delay_timer: Timer
var ultra_stop_timer: Timer
var tts_timer: Timer
var audio_player: AudioStreamPlayer
var pending_tts_text: String = ""
var cached_tts_voice_id: String = ""
var tts_waiting_for_stop_sound: = false
var suppress_filter_events: = false
var tts_enabled: = true
var tts_rate: = DEFAULT_TTS_RATE
var sound_muted: = false
var sound_volume_percent: = DEFAULT_SOUND_VOLUME_PERCENT
var current_audio_base_volume_db: = 0.0
var suppress_sound_volume_slider_events: = false
var suppress_tts_rate_option_events: = false
var settings_menu_open: = false
var custom_background_mode: = CUSTOM_BACKGROUND_MODE_STRETCH
var custom_roll_music_stream: AudioStream
var custom_roll_item_color: = DEFAULT_ROLL_ITEM_COLOR
var custom_roll_item_color_enabled: = false
var custom_button_color: = DEFAULT_UI_BUTTON_TEXT_COLOR
var custom_button_color_enabled: = false
var custom_button_fill_color: = Color(0.0, 0.0, 0.0, 0.0)
var custom_button_fill_color_enabled: = false
var web_cache_buster: = str(Time.get_unix_time_from_system())
var web_file_picker_callback_ref = null

@onready var top_placeholder_1: Label = $TopPlaceholder1
@onready var top_placeholder_2: Label = $TopPlaceholder2
@onready var center_placeholder: Label = $CenterPlaceholder
@onready var bottom_placeholder_1: Label = $BottomPlaceholder1
@onready var bottom_placeholder_2: Label = $BottomPlaceholder2
@onready var background_rect: ColorRect = $Background
@onready var selected_list_label: Label = $SelectedListLabel
@onready var list_count_label: Label = $ListCountLabel
@onready var roll_button: Button = $RollButton
@onready var ultra_button: Button = $UltraButton
@onready var tts_button: Button = $TTSButton
@onready var sound_mute_button: Button = $SoundMuteButton
var calc_button: TextureButton
var settings_button: TextureButton
var settings_panel: Panel
var sound_volume_slider: HSlider
var sound_volume_label: Label
var tts_rate_option_button: OptionButton
var calc_window: Window
var calc_sum_input: LineEdit
var calc_current_price_input: LineEdit
var calc_step_input: LineEdit
var calc_wheels_label: Label
var calc_remainder_label: Label
var calc_result_output: TextEdit
var background_image_rect: TextureRect
var background_file_dialog: FileDialog
var music_file_dialog: FileDialog
var item_color_dialog: ConfirmationDialog
var item_color_picker: ColorPicker
var button_color_dialog: ConfirmationDialog
var button_color_picker: ColorPicker
var button_fill_color_dialog: ConfirmationDialog
var button_fill_color_picker: ColorPicker
var background_stretch_button: Button
var background_center_button: Button
@onready var digits_checkbox: CheckBox = $DigitsCheckBox
@onready var letter_input: LineEdit = _resolve_letter_input()
@onready var logo43: TextureRect = $Logo43
@onready var hero_tile: Panel = $BottomBar / HeroTile
@onready var hero_label: Label = $BottomBar / HeroTile / HeroLabel
@onready var hero_button: Button = $BottomBar / HeroTile / HeroButton
@onready var platforms_tile: Panel = $BottomBar / PlatformsTile
@onready var platforms_label: Label = $BottomBar / PlatformsTile / PlatformsLabel
@onready var platforms_button: Button = $BottomBar / PlatformsTile / PlatformsButton
@onready var bag_tile: Panel = $BottomBar / BagTile
@onready var bag_label: Label = $BottomBar / BagTile / BagLabel
@onready var bag_button: Button = $BottomBar / BagTile / CatBagButton
@onready var wheel_tile: Panel = $BottomBar / WheelTile
@onready var wheel_label: Label = $BottomBar / WheelTile / WheelLabel
@onready var wheel_button: Button = $BottomBar / WheelTile / WheelButton
@onready var extra_tile: Panel = $BottomBar / ExtraTile
@onready var extra_label: Label = $BottomBar / ExtraTile / ExtraLabel
@onready var bottom_bar: Control = $BottomBar
@onready var loose_chip_left: Control = $LooseChipLeft
@onready var special_rolls_chip: Control = $SpecialRollsChip
@onready var lootbox_chip: Control = $LootboxChip

var bag_tile_default_style: StyleBox
var bag_tile_active_style: StyleBoxFlat
var roll_button_style_template: StyleBoxFlat
var ultra_button_style_template: StyleBoxFlat
var letter_input_style_template: StyleBoxFlat
var bag_tile_default_style_template: StyleBoxFlat
var bag_tile_active_style_template: StyleBoxFlat
var platform_browser_panel: Panel
var platform_browser_grid: GridContainer
var platform_browser_title_label: Label
var platform_browser_count_label: Label
var platform_browser_backdrop: ColorRect
var platform_browser_close_chip: Control
var special_roll_browser_panel: Panel
var special_roll_browser_grid: GridContainer
var special_roll_browser_title_label: Label
var special_roll_browser_count_label: Label
var special_roll_browser_backdrop: ColorRect
var special_roll_browser_close_chip: Control
var lootbox_browser_panel: Panel
var lootbox_browser_grid: GridContainer
var lootbox_browser_title_label: Label
var lootbox_browser_count_label: Label
var lootbox_browser_backdrop: ColorRect
var lootbox_browser_close_chip: Control
var wheel_descriptions: Dictionary = {}
var wheel_description_links: Dictionary = {}
var hardcore_descriptions: Dictionary = {}
var lootbox_descriptions: Dictionary = {}
var lootbox_description_links: Dictionary = {}
var wheel_description_overlay: Control
var wheel_description_title_label: Label
var wheel_description_item_label: Label
var wheel_description_body_label: RichTextLabel
var wheel_description_delete_button: Button
var wheel_description_link_button: Button
var wheel_description_close_button: Button
var wheel_description_link_url: = ""
var wheel_description_delete_entry: = ""
var wheel_description_delete_slot_index: = -1
var wheel_deleted_visible_slots: Dictionary = {}
var extra_deleted_visible_slots: Dictionary = {}
var wheel_center_delete_button: TextureButton
var wheel_restore_button: Button
var wheel_restore_overlay: Control
var wheel_restore_message_label: Label
var wheel_restore_cancel_button: Button
var wheel_restore_ok_button: Button
var wheel_info_overlay: Control
var wheel_info_label: Label
var wheel_info_ok_button: Button
var list_preview_overlay: Control
var list_preview_title_label: Label
var list_preview_body_label: RichTextLabel
var list_preview_ok_button: Button
var extra_list_editor_overlay: Control
var extra_list_editor_title_label: Label
var extra_list_editor_text_edit: TextEdit
var extra_list_editor_save_button: Button
var extra_list_editor_numbers_button: Button
var extra_list_editor_close_button: Button
var extra_list_numbers_panel: Panel
var extra_list_numbers_from_input: LineEdit
var extra_list_numbers_to_input: LineEdit
var extra_list_numbers_apply_button: Button
var extra_list_numbers_cancel_button: Button



func _apply_global_ui_font() -> void :
    var base_font: = UI_FONT as FontFile
    if base_font == null:
        return
    var ui_font: = base_font.duplicate() as FontFile
    if ui_font == null:
        ui_font = base_font
    var fallback_fonts: Array[Font] = []
    var cjk_font: = load(UI_CJK_FALLBACK_FONT_PATH) as FontFile
    if cjk_font != null:
        fallback_fonts.append(cjk_font)
    var arabic_font: = load(UI_ARABIC_FALLBACK_FONT_PATH) as FontFile
    if arabic_font != null:
        fallback_fonts.append(arabic_font)
    var thai_font: = load(UI_THAI_FALLBACK_FONT_PATH) as FontFile
    if thai_font != null:
        fallback_fonts.append(thai_font)
    var music_font: = load(UI_MUSIC_FALLBACK_FONT_PATH) as FontFile
    if music_font != null:
        fallback_fonts.append(music_font)
    var symbol_font: = load(UI_SYMBOL_FALLBACK_FONT_PATH) as FontFile
    if symbol_font != null:
        fallback_fonts.append(symbol_font)
    var emoji_font: = load(UI_EMOJI_FALLBACK_FONT_PATH) as FontFile
    if emoji_font != null:
        fallback_fonts.append(emoji_font)
    if not fallback_fonts.is_empty():
        ui_font.fallbacks = fallback_fonts
    var ui_theme: = Theme.new()
    ui_theme.default_font = ui_font
    ui_theme.default_font_size = 16
    theme = ui_theme



func _ready() -> void :
    _apply_global_ui_font()
    rng.randomize()
    bag_tile_default_style = bag_tile.get_theme_stylebox("panel")
    bag_tile_active_style = _create_active_tile_style()
    _capture_button_fill_style_templates()
    slot_labels = [
        top_placeholder_1, 
        top_placeholder_2, 
        center_placeholder, 
        bottom_placeholder_1, 
        bottom_placeholder_2, 
    ]
    _create_runtime_nodes()
    _configure_roll_display()
    _create_slot_click_buttons()
    _create_platform_browser()
    _create_special_roll_browser()
    _create_lootbox_browser()
    _create_result_link_buttons()
    _create_wheel_description_popup()
    _create_wheel_info_popup()
    _create_wheel_restore_popup()
    _create_list_preview_popup()
    _create_extra_list_editor_popup()
    _create_custom_background_controls()
    _create_settings_menu()
    _create_calculator_window()
    roll_button.pressed.connect(_on_roll_button_pressed)
    ultra_button.pressed.connect(_on_ultra_button_pressed)
    tts_button.pressed.connect(_on_tts_button_pressed)
    sound_mute_button.pressed.connect(_on_sound_mute_button_pressed)
    digits_checkbox.toggled.connect(_on_digits_checkbox_toggled)
    if logo43 != null:
        logo43.mouse_filter = Control.MOUSE_FILTER_STOP
        logo43.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
        logo43.gui_input.connect(_on_logo43_input)
    if letter_input != null:
        letter_input.text_changed.connect(_on_letter_input_text_changed)
    _connect_list_preview_inputs()
    _load_saved_audio_toggle_settings()
    _refresh_tts_button()
    _refresh_tts_rate_button()
    _refresh_sound_mute_button()
    _refresh_sound_volume_controls()
    _refresh_settings_menu_visibility()
    _reset_selected_list_ui()
    _load_saved_custom_roll_item_color()
    _load_saved_custom_button_color()
    _load_saved_custom_button_fill_color()
    _reset_roll_slots()



func _resolve_letter_input() -> LineEdit:
    var node: = get_node_or_null("Letterbox")
    if node == null:
        node = get_node_or_null("LetterInput")
    return node as LineEdit



func _connect_list_preview_inputs() -> void :
    if hero_button != null:
        hero_button.gui_input.connect(_on_list_preview_input.bind(GUITMAN_MODE_TITLE, GUITMAN_LIST_PATH))
    if platforms_button != null:
        platforms_button.gui_input.connect(_on_list_preview_input.bind(PLATFORMS_MODE_TITLE, PLATFORMS_LIST_PATH))
    if bag_button != null:
        bag_button.gui_input.connect(_on_list_preview_input.bind(CAT_MODE_TITLE, CAT_LIST_PATH))
    if wheel_button != null:
        wheel_button.gui_input.connect(_on_list_preview_input.bind(WHEEL_MODE_TITLE, WHEEL_LIST_PATH))
    if extra_tile != null:
        var extra_button: = extra_tile.get_node_or_null("ExtraTileButton") as Button
        if extra_button != null:
            extra_button.gui_input.connect(_on_extra_tile_input)



func _input(event: InputEvent) -> void :
    if _handle_layout_independent_text_shortcut(event):
        get_viewport().set_input_as_handled()



func _handle_layout_independent_text_shortcut(event: InputEvent) -> bool :
    var key_event: = event as InputEventKey
    if key_event == null or not key_event.pressed or key_event.echo:
        return false
    if not key_event.ctrl_pressed and not key_event.meta_pressed:
        return false
    if key_event.alt_pressed:
        return false

    if _matches_shortcut_key(key_event, KEY_C, ["с"]):
        return _copy_text_shortcut_selection()
    if _matches_shortcut_key(key_event, KEY_X, ["ч"]):
        return _cut_text_shortcut_selection()
    if _matches_shortcut_key(key_event, KEY_V, ["м"]):
        return _paste_text_shortcut_clipboard()
    if _matches_shortcut_key(key_event, KEY_A, ["ф"]):
        return _select_all_text_shortcut_target()
    if _matches_shortcut_key(key_event, KEY_Z, ["я"]):
        if key_event.shift_pressed:
            return _call_text_shortcut_method("redo")
        return _call_text_shortcut_method("undo")
    if _matches_shortcut_key(key_event, KEY_Y, ["н"]):
        return _call_text_shortcut_method("redo")
    return false



func _matches_shortcut_key(key_event: InputEventKey, latin_keycode: Key, cyrillic_keys: Array[String]) -> bool :
    if key_event.physical_keycode == latin_keycode or key_event.keycode == latin_keycode:
        return true
    if key_event.unicode <= 0:
        return false
    return cyrillic_keys.has(String.chr(key_event.unicode).to_lower())



func _focused_text_shortcut_target() -> Control :
    var focus_owner: = get_viewport().gui_get_focus_owner()
    if focus_owner is LineEdit or focus_owner is TextEdit or focus_owner is RichTextLabel:
        return focus_owner as Control
    return null



func _focused_editable_text_shortcut_target() -> Control :
    var target: = _focused_text_shortcut_target()
    if target == null or not _is_editable_text_shortcut_target(target):
        return null
    return target



func _selected_rich_text_shortcut_target() -> RichTextLabel :
    for label_variant in [wheel_description_body_label, list_preview_body_label]:
        var label: = label_variant as RichTextLabel
        if label != null and label.is_visible_in_tree() and not _selected_text_from_shortcut_target(label).is_empty():
            return label
    return null



func _is_editable_text_shortcut_target(target: Control) -> bool :
    if target is LineEdit:
        return (target as LineEdit).editable
    if target is TextEdit:
        return (target as TextEdit).editable
    return false



func _target_has_text_selection(target: Control) -> bool :
    return target != null and target.has_method("has_selection") and bool(target.call("has_selection"))



func _selected_text_from_shortcut_target(target: Control) -> String :
    if target == null or not target.has_method("get_selected_text"):
        return ""
    return str(target.call("get_selected_text"))



func _delete_text_shortcut_selection(target: Control) -> bool :
    if target == null or not _is_editable_text_shortcut_target(target) or not _target_has_text_selection(target):
        return false
    if target is LineEdit and target.has_method("get_selection_from_column") and target.has_method("get_selection_to_column") and target.has_method("delete_text"):
        var from_column: = int(target.call("get_selection_from_column"))
        var to_column: = int(target.call("get_selection_to_column"))
        target.call("delete_text", from_column, to_column)
        return true
    if target is TextEdit and target.has_method("delete_selection"):
        target.call("delete_selection")
        return true
    return false



func _copy_text_shortcut_selection() -> bool :
    var target: = _focused_text_shortcut_target()
    if target == null:
        target = _selected_rich_text_shortcut_target()
    var selected_text: = _selected_text_from_shortcut_target(target)
    if selected_text.is_empty():
        return false
    if target != null and target.has_method("copy"):
        target.call("copy")
        return true
    DisplayServer.clipboard_set(selected_text)
    return true



func _cut_text_shortcut_selection() -> bool :
    var target: = _focused_editable_text_shortcut_target()
    if target == null:
        return false
    var selected_text: = _selected_text_from_shortcut_target(target)
    if selected_text.is_empty():
        return false
    if target.has_method("cut"):
        target.call("cut")
        return true
    DisplayServer.clipboard_set(selected_text)
    return _delete_text_shortcut_selection(target)



func _paste_text_shortcut_clipboard() -> bool :
    var target: = _focused_editable_text_shortcut_target()
    if target == null:
        return false
    if target.has_method("paste"):
        target.call("paste")
        return true
    var clipboard_text: = DisplayServer.clipboard_get()
    if clipboard_text.is_empty() or not target.has_method("insert_text_at_caret"):
        return false
    if _target_has_text_selection(target):
        _delete_text_shortcut_selection(target)
    target.call("insert_text_at_caret", clipboard_text)
    return true



func _select_all_text_shortcut_target() -> bool :
    var target: = _focused_text_shortcut_target()
    if target == null or not target.has_method("select_all"):
        return false
    target.call("select_all")
    return true



func _call_text_shortcut_method(method_name: String) -> bool :
    var target: = _focused_editable_text_shortcut_target()
    if target == null or not target.has_method(method_name):
        return false
    target.call(method_name)
    return true



func _on_list_preview_input(event: InputEvent, list_title: String, list_path: String) -> void :
    if rolling:
        return
    var mouse_event: = event as InputEventMouseButton
    if mouse_event == null:
        return
    if mouse_event.button_index != MOUSE_BUTTON_RIGHT or not mouse_event.pressed:
        return
    _show_list_preview_popup(list_title, list_path)
    get_viewport().set_input_as_handled()



func _on_extra_tile_input(event: InputEvent) -> void :
    if rolling:
        return
    var mouse_event: = event as InputEventMouseButton
    if mouse_event == null or not mouse_event.pressed:
        return
    if mouse_event.button_index == MOUSE_BUTTON_LEFT:
        _select_list(EXTRA_LIST_ID, EXTRA_MODE_TITLE, EXTRA_LIST_PATH, extra_tile)
        get_viewport().set_input_as_handled()
    elif mouse_event.button_index == MOUSE_BUTTON_RIGHT:
        _show_extra_list_editor_popup()
        get_viewport().set_input_as_handled()



func _is_web_runtime() -> bool:
    return OS.get_name() == "Web" or OS.get_name() == "HTML5" or OS.has_feature("web")



func _resource_path_to_web_path(path: String) -> String:
    if path.begins_with("res://"):
        return path.trim_prefix("res://")
    return path



func _list_relative_path(path: String) -> String:
    var normalized: = path.replace("\\", "/")
    if normalized.begins_with("res://lists/"):
        return normalized.trim_prefix("res://lists/")
    if normalized.begins_with("lists/"):
        return normalized.trim_prefix("lists/")
    return normalized.get_file()



func _resolve_runtime_list_path(path: String) -> String:
    if path == EXTRA_LIST_PATH and FileAccess.file_exists(EXTRA_USER_LIST_PATH):
        return EXTRA_USER_LIST_PATH
    return path



func _debug_local_list_path(path: String) -> String:
    if path.begins_with("user://"):
        return ""
    if not DEBUG_USE_LOCAL_LISTS or _is_web_runtime():
        return ""

    var relative_path: = _list_relative_path(path)
    if relative_path.is_empty():
        return ""

    var candidates: Array[String] = [
        path, 
        ProjectSettings.globalize_path(path), 
        ProjectSettings.globalize_path("res://%s" % DEBUG_LOCAL_LISTS_DIR).path_join(relative_path), 
        ProjectSettings.globalize_path("res://").path_join(DEBUG_LOCAL_LISTS_DIR).path_join(relative_path), 
        OS.get_user_data_dir().path_join(DEBUG_LOCAL_LISTS_DIR).path_join(relative_path), 
        OS.get_executable_path().get_base_dir().path_join(DEBUG_LOCAL_LISTS_DIR).path_join(relative_path), 
    ]

    for candidate in candidates:
        if FileAccess.file_exists(candidate):
            return candidate
    return ""



func _list_text_file_exists(path: String) -> bool:
    var runtime_path: = _resolve_runtime_list_path(path)
    if runtime_path.begins_with("user://"):
        return FileAccess.file_exists(runtime_path)
    if not _debug_local_list_path(runtime_path).is_empty():
        return true
    return FileAccess.file_exists(runtime_path)



func _read_web_text(path: String) -> String:
    var cache_key: = _resource_path_to_web_path(path)
    if web_text_cache.has(cache_key):
        return str(web_text_cache[cache_key])

    var request_path: = "%s?v=%s" % [cache_key, web_cache_buster]
    var script: = "\n(function () {\n\tconst path = %s;\n\ttry {\n\t\tconst xhr = new XMLHttpRequest();\n\t\txhr.open('GET', path, false);\n\t\txhr.overrideMimeType('text/plain; charset=x-user-defined');\n\t\ttry {\n\t\t\txhr.responseType = 'arraybuffer';\n\t\t} catch (responseTypeError) {\n\t\t}\n\t\txhr.send(null);\n\t\tif (xhr.status !== 200 && xhr.status !== 0) {\n\t\t\treturn '';\n\t\t}\n\n\t\tlet bytes = null;\n\t\tif (xhr.response instanceof ArrayBuffer) {\n\t\t\tbytes = new Uint8Array(xhr.response);\n\t\t} else {\n\t\t\tconst raw = xhr.responseText || '';\n\t\t\tbytes = new Uint8Array(raw.length);\n\t\t\tfor (let i = 0; i < raw.length; i += 1) {\n\t\t\t\tbytes[i] = raw.charCodeAt(i) & 0xFF;\n\t\t\t}\n\t\t}\n\t\tif (!bytes || !bytes.length) {\n\t\t\treturn '';\n\t\t}\n\n\t\tlet binary = '';\n\t\tfor (let i = 0; i < bytes.length; i += 1) {\n\t\t\tbinary += String.fromCharCode(bytes[i]);\n\t\t}\n\t\treturn btoa(binary);\n\t} catch (error) {\n\t\tconsole.error('Failed to load text asset:', path, error);\n\t\treturn '';\n\t}\n})();\n"\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
%JSON.stringify(request_path)
    var encoded_bytes: = str(JavaScriptBridge.eval(script, true))
    if encoded_bytes.is_empty():
        return ""

    var bytes: = Marshalls.base64_to_raw(encoded_bytes)
    if bytes.is_empty():
        return ""



    var text: = _decode_text_bytes(bytes, false)
    if not text.is_empty():
        web_text_cache[cache_key] = text
    return text



func _on_cat_bag_button_pressed() -> void :
    if rolling:
        return
    _select_list(CAT_LIST_ID, CAT_MODE_TITLE, CAT_LIST_PATH, bag_tile)



func _on_guitman_button_pressed() -> void :
    if rolling:
        return
    _select_list(GUITMAN_LIST_ID, GUITMAN_MODE_TITLE, GUITMAN_LIST_PATH, hero_tile)



func _on_logo43_input(event: InputEvent) -> void :
    if rolling:
        return
    var mouse_event: = event as InputEventMouseButton
    if mouse_event == null or not mouse_event.pressed:
        return
    if mouse_event.button_index == MOUSE_BUTTON_LEFT:
        _select_list(BATMAN43_LIST_ID, BATMAN43_MODE_TITLE, BATMAN43_LIST_PATH)
    elif mouse_event.button_index == MOUSE_BUTTON_RIGHT:
        _on_list_preview_input(event, BATMAN43_MODE_TITLE, BATMAN43_LIST_PATH)



func _on_platforms_button_pressed() -> void :
    if rolling:
        return
    _select_list(PLATFORMS_LIST_ID, PLATFORMS_MODE_TITLE, PLATFORMS_LIST_PATH, platforms_tile)



func _on_wheel_button_pressed() -> void :
    if rolling:
        return
    _select_list(WHEEL_LIST_ID, WHEEL_MODE_TITLE, WHEEL_LIST_PATH, wheel_tile)



func _on_loose_chip_button_pressed() -> void :
    if rolling:
        return
    _toggle_platform_browser()



func _on_special_rolls_chip_pressed() -> void :
    if rolling:
        return
    _toggle_special_roll_browser()



func _on_lootbox_chip_pressed() -> void :
    if rolling:
        return
    _toggle_lootbox_browser()



func _on_slot_result_pressed(slot_index: int) -> void :
    if rolling:
        return
    if _is_wheel_list_selected():
        if slot_index < 0 or slot_index >= slot_entries.size():
            return
        _show_wheel_description_for_entry(slot_entries[slot_index], slot_index, true, false)
        return
    if _is_hardcore_list_selected():
        if slot_index < 0 or slot_index >= slot_entries.size():
            return
        _show_hardcore_description_for_entry(slot_entries[slot_index], true, false)
        return
    if _is_lootbox_description_list_selected():
        if slot_index < 0 or slot_index >= slot_entries.size():
            return
        _show_lootbox_description_for_entry(slot_entries[slot_index], true, false)
        return
    if not _result_links_enabled_for_selected_list():
        return
    if slot_index < 0 or slot_index >= slot_entries.size():
        return

    var result_text: = _entry_to_display_text(slot_entries[slot_index])
    if result_text.is_empty() or result_text.begins_with("---"):
        return

    _copy_text_to_clipboard(result_text)
    _open_external_url(_build_youtube_url_for_text(result_text))



func _on_slot_result_input(event: InputEvent, slot_index: int) -> void :
    if rolling:
        return
    var mouse_event: = event as InputEventMouseButton
    if mouse_event == null or not mouse_event.pressed:
        return
    if mouse_event.button_index != MOUSE_BUTTON_RIGHT:
        return
    if slot_index < 0 or slot_index >= slot_labels.size():
        return

    var result_text: = slot_labels[slot_index].text.strip_edges()
    if result_text.is_empty() or result_text.begins_with("---"):
        return

    _copy_text_to_clipboard(result_text)
    get_viewport().set_input_as_handled()



func _on_mobygames_button_pressed() -> void :
    if not _can_open_result_links():
        return

    _open_external_url("https://www.mobygames.com/search/?q=%s" % _current_result_query_text())



func _on_gamefaqs_button_pressed() -> void :
    if not _can_open_result_links() or gamefaqs_url.is_empty():
        return

    _open_external_url(gamefaqs_url)



func _on_rggland_button_pressed() -> void :







    return



func _on_roll_button_pressed() -> void :
    if rolling:
        _request_stop()
        return
    _start_roll()



func _on_ultra_button_pressed() -> void :
    _button_megastop_click()



func _on_roll_timer_timeout() -> void :
    if not rolling:
        return

    if planned_stop_step <= 0:
        _plan_roll_target(_generate_stopwheel())

    if mas_j >= planned_stop_step:
        roll_timer.stop()
        _start_finalize_phase()
        return

    _advance_from_list(mas_j >= stopwheel)
    _apply_roll_color_animation()
    mas_j += 1

    if mas_j >= planned_stop_step:
        roll_timer.stop()
        _start_finalize_phase()
        return

    if mas_j >= stopwheel:
        roll_button.disabled = true
        ultra_button.disabled = true
        roll_timer.wait_time = _roll_wait_for_remaining_steps(planned_stop_step - mas_j)
        roll_timer.start()



func _on_finalize_timer_timeout() -> void :
    if not rolling:
        return

    if final_stop_complete_pending:
        final_stop_complete_pending = false
        finalize_timer.stop()
        _roll_stopped()
        return

    if final_settle_pending:
        final_settle_pending = false
        if final_stop_mode == FINAL_STOP_CENTER:
            finalize_timer.stop()
            _roll_stopped()
            return

        if final_stop_mode == FINAL_STOP_FAST_NEXT:
            finalize_timer.wait_time = FINAL_ROLL_WAIT
            finalize_timer.start()
            return

        slot_scroll_animation_wait_override = FINAL_SLOW_ROLL_WAIT
        if final_stop_mode == FINAL_STOP_SLOW_PREVIOUS:
            _rotate_visible_entries_back()
        else:
            _rotate_visible_entries()
        _apply_roll_color_animation()
        rollnext2pos += 1
        final_stop_complete_pending = true
        finalize_timer.wait_time = _final_wait_after_optional_shift()
        finalize_timer.start()
        return

    if rollnext2pos >= prokrut_count:
        finalize_timer.stop()
        _roll_stopped()
        return

    if final_stop_mode == FINAL_STOP_SLOW_PREVIOUS:
        _rotate_visible_entries_back()
    else:
        if final_stop_mode == FINAL_STOP_FAST_NEXT:
            slot_scroll_animation_wait_override = FINAL_ROLL_WAIT
        _rotate_visible_entries()
    _apply_roll_color_animation()
    rollnext2pos += 1
    if rollnext2pos >= prokrut_count:
        final_stop_complete_pending = true
        finalize_timer.wait_time = _final_wait_after_optional_shift()
        finalize_timer.start()



func _on_delay_timer_timeout() -> void :
    if rolling:
        roll_button.disabled = roll_button.text != "STOP"
        return

    roll_button.disabled = selected_list_path.is_empty() or games.size() <= 1
    ultra_button.disabled = true



func _on_ultra_delay_timer_timeout() -> void :
    if not rolling:
        return
    if roll_button.text != "STOP":
        return
    if ultra_stop_pending:
        return
    ultra_button.disabled = false



func _on_ultra_stop_timer_timeout() -> void :
    if not rolling:
        return

    ultra_stop_pending = false
    ultra_button.disabled = true
    _roll_stopped()



func _select_list(list_id: String, title: String, path: String, tile = null) -> void :
    selected_platform = list_id
    selected_list_title = title
    selected_list_path = path
    platform = 0
    is_main_platform = false
    if list_id == WHEEL_LIST_ID:
        _load_wheel_descriptions()
    elif path == HARDCORE_LIST_PATH:
        _load_hardcore_descriptions()
    elif _is_lootbox_description_path(path):
        _load_lootbox_descriptions()
    base_games = _load_list(path)

    selected_list_label.text = title
    _set_result_links_active(false)
    _hide_wheel_description_popup()
    _hide_wheel_info_popup()
    _hide_wheel_restore_popup()
    _hide_list_preview_popup()
    _hide_extra_list_editor_popup()
    _apply_letter_digit_filter()
    _build_search_urls("")
    _reset_roll_slots()
    _reset_list_tile_styles()
    if tile is Panel:
        tile.add_theme_stylebox_override("panel", bag_tile_active_style)
    _update_platform_browser_selection(title)
    _update_special_roll_selection(title)
    _update_lootbox_selection(title)



func _start_roll() -> void :
    if selected_list_path.is_empty():
        selected_list_label.text = "Список не выбран"
        list_count_label.text = ""
        return

    delay_timer.stop()
    ultra_delay_timer.stop()
    ultra_stop_timer.stop()
    roll_timer.stop()
    finalize_timer.stop()
    _hide_wheel_restore_popup()
    _hide_wheel_info_popup()
    _stop_tts_playback()
    _reload_selected_list()
    if games.size() <= 1:
        return

    _reset_slot_images()
    _choose_roll_colors()
    _hide_optional_ui()
    _update_gacha_state_before_roll()
    _shuffle_current_games()
    _build_search_urls("")


    wheel_deleted_visible_slots.clear()
    extra_deleted_visible_slots.clear()

    selected_result_entry = ""
    rolling = true
    _refresh_wheel_delete_button()
    stop_requested = false
    ultra_stop_pending = false
    stop_via_ultra = false
    rollnext2pos = 0
    final_stop_mode = FINAL_STOP_FAST_NEXT
    final_settle_pending = false
    final_stop_complete_pending = false
    planned_stop_step = 0
    planned_center_entry = ""
    mas_i = 0
    mas_j = 0

    stop_length = clampi(shuffled_games.size(), MIN_STOP_LENGTH, MAX_STOP_LENGTH)
    _rnd_stopwheel()
    _plan_roll_target(_generate_stopwheel())

    roll_button.text = "STOP"
    roll_button.disabled = true
    ultra_button.disabled = true
    digits_checkbox.disabled = true
    letter_input.editable = false
    delay_timer.start(START_STOP_ENABLE_WAIT)
    ultra_delay_timer.start(ULTRA_BUTTON_ENABLE_WAIT)

    var roll_sound_candidates: Array[String] = ROLL_SOUND_CANDIDATES
    var roll_sound_volume_db: = 0.0
    var use_custom_default_roll_music: = false
    if _is_hardcore_list_selected():
        roll_sound_candidates = HARDCORE_ROLL_SOUND_CANDIDATES
    elif selected_list_path == "res://lists/hakon.dat":
        roll_sound_candidates = HAKON_ROLL_SOUND_CANDIDATES
    elif selected_list_path == "res://lists/pizza.dat":
        roll_sound_candidates = PIZZA_ROLL_SOUND_CANDIDATES
        roll_sound_volume_db = PIZZA_ROLL_VOLUME_DB
    elif selected_list_path == "res://lists/disney.dat":
        roll_sound_candidates = DISNEY_ROLL_SOUND_CANDIDATES
    elif selected_list_path == "res://lists/lukas.dat":
        roll_sound_candidates = LUCAS_ROLL_SOUND_CANDIDATES
    elif selected_list_path == "res://lists/list_zx.dat":
        roll_sound_candidates = SPECTRUM_ROLL_SOUND_CANDIDATES
    elif selected_list_path == "res://lists/2007.dat":
        roll_sound_candidates = ROLL_2007_SOUND_CANDIDATES
    elif custom_roll_music_stream != null:
        use_custom_default_roll_music = true
    if use_custom_default_roll_music:
        _play_stream(custom_roll_music_stream)
    else:
        _play_sound(roll_sound_candidates, roll_sound_volume_db)

    roll_timer.wait_time = MAIN_ROLL_WAIT
    roll_timer.start()
    finalize_timer.stop()



func _request_stop() -> void :
    stop_requested = true
    stop_via_ultra = false
    _button_flat_click()
    roll_button.text = "Roll"
    roll_button.disabled = true
    ultra_button.disabled = true
    delay_timer.start(REENABLE_BUTTON_WAIT)



func _start_finalize_phase() -> void :
    if not finalize_timer.is_stopped():
        return

    final_stop_mode = _choose_final_stop_mode()
    rollnext2pos = 0

    match final_stop_mode:
        FINAL_STOP_FAST_NEXT:
            prokrut_count = rng.randi_range(1, 4)
            final_settle_pending = true
            finalize_timer.wait_time = _final_settle_wait_after_scroll()
        FINAL_STOP_CENTER:
            prokrut_count = 0
            final_settle_pending = true
            finalize_timer.wait_time = _final_settle_wait_after_scroll()
        FINAL_STOP_SLOW_NEXT:
            prokrut_count = 1
            final_settle_pending = true
            finalize_timer.wait_time = _final_settle_wait_after_scroll()
        FINAL_STOP_SLOW_PREVIOUS:
            prokrut_count = 1
            final_settle_pending = true
            finalize_timer.wait_time = _final_settle_wait_after_scroll()

    finalize_timer.start()



func _final_settle_wait_after_scroll() -> float:
    return FINAL_SETTLE_WAIT + slot_scroll_active_duration



func _final_wait_after_optional_shift() -> float:
    return maxf(0.01, slot_scroll_active_duration)



func _choose_final_stop_mode() -> int:
    var roll: = rng.randi_range(0, 99)
    if roll < 50:
        return FINAL_STOP_CENTER
    if roll < 70:
        return FINAL_STOP_SLOW_NEXT
    if roll < 90:
        return FINAL_STOP_SLOW_PREVIOUS
    return FINAL_STOP_FAST_NEXT



func _plan_roll_target(min_future_steps: int) -> void :
    if shuffled_games.is_empty():
        planned_center_entry = ""
        planned_stop_step = mas_j
        stopwheel = mas_j
        return

    planned_stop_step = mas_j + maxi(1, min_future_steps)
    var target_index: = _shuffled_index_for_center_step(planned_stop_step)
    planned_center_entry = shuffled_games[target_index]

    stopwheel = maxi(mas_j, planned_stop_step - FINAL_SLOWDOWN_STEPS)



func _shuffled_index_for_center_step(center_step: int) -> int:
    var list_size: = shuffled_games.size()
    if list_size <= 0:
        return 0
    return (list_size - ((center_step - 2) % list_size)) % list_size



func _roll_wait_for_remaining_steps(remaining_steps: int) -> float:
    var clamped_remaining: = clampi(remaining_steps, 1, FINAL_SLOWDOWN_STEPS)
    var progress: = 1.0
    if FINAL_SLOWDOWN_STEPS > 1:
        progress = float(FINAL_SLOWDOWN_STEPS - clamped_remaining) / float(FINAL_SLOWDOWN_STEPS - 1)
    return lerpf(FINAL_SLOWDOWN_MIN_WAIT, FINAL_SLOWDOWN_MAX_WAIT, progress)



func _button_flat_click() -> void :
    if not rolling:
        return

    _plan_roll_target(MANUAL_STOP_MIN_STEPS)
    ultra_button.disabled = true



func _button_megastop_click() -> void :
    if not rolling:
        return
    if ultra_stop_pending:
        return

    ultra_stop_pending = true
    stop_via_ultra = true
    ultra_button.disabled = true
    roll_button.disabled = true
    ultra_stop_timer.start(rng.randf_range(ULTRA_STOP_MIN_WAIT, ULTRA_STOP_MAX_WAIT))



func _advance_from_list(animate_scroll: bool = true) -> void :
    if shuffled_games.is_empty():
        return

    if mas_i >= shuffled_games.size():
        mas_i = 0

    var next_index: = shuffled_games.size() - mas_i - 1
    var next_entry: = shuffled_games[next_index]

    slot_entries[4] = slot_entries[3]
    slot_entries[3] = slot_entries[2]
    slot_entries[2] = slot_entries[1]
    slot_entries[1] = slot_entries[0]
    slot_entries[0] = next_entry

    mas_i += 1
    _render_slots(SLOT_SCROLL_DOWN if animate_scroll else 0)



func _rotate_visible_entries() -> void :
    if slot_entries.size() != 5:
        return

    var previous_bottom: = slot_entries[4]
    slot_entries[4] = slot_entries[3]
    slot_entries[3] = slot_entries[2]
    slot_entries[2] = slot_entries[1]
    slot_entries[1] = slot_entries[0]
    slot_entries[0] = previous_bottom
    _render_slots(SLOT_SCROLL_DOWN)



func _rotate_visible_entries_back() -> void :
    if slot_entries.size() != 5:
        return

    var previous_top: = slot_entries[0]
    slot_entries[0] = slot_entries[1]
    slot_entries[1] = slot_entries[2]
    slot_entries[2] = slot_entries[3]
    slot_entries[3] = slot_entries[4]
    slot_entries[4] = previous_top
    _render_slots(SLOT_SCROLL_UP)



func _roll_stopped() -> void :
    rolling = false
    stop_requested = false
    ultra_stop_pending = false
    final_settle_pending = false
    final_stop_complete_pending = false
    delay_timer.stop()
    ultra_delay_timer.stop()
    ultra_stop_timer.stop()
    roll_timer.stop()
    finalize_timer.stop()

    selected_result_entry = slot_entries[2]
    var result_text: = _entry_to_display_text(selected_result_entry)

    roll_button.text = "Roll"
    ultra_button.disabled = true
    _apply_letter_digit_filter()
    _apply_final_roll_colors()
    _refresh_wheel_delete_button()
    _build_search_urls(result_text)
    _set_result_links_active(_result_links_enabled_for_selected_list() and not result_text.is_empty())
    _append_log(result_text)
    var stop_sound_candidates: Array[String] = STOP_SOUND_CANDIDATES
    if _is_wheel_list_selected():
        stop_sound_candidates = WHEEL_STOP_SOUND_CANDIDATES
    elif stop_via_ultra:
        stop_sound_candidates = ULTRA_STOP_SOUND_CANDIDATES
    _play_sound(stop_sound_candidates)
    stop_via_ultra = false
    if not _is_wheel_list_selected() and not _is_hardcore_list_selected():
        _queue_center_label_tts_after_stop_sound()



func _reload_selected_list() -> void :
    base_games = _load_list(selected_list_path)
    _apply_letter_digit_filter()



func _shuffle_current_games() -> void :
    shuffled_games = games.duplicate()
    for i in range(shuffled_games.size() - 1, 0, -1):
        var j: = rng.randi_range(0, i)
        var tmp: = shuffled_games[i]
        shuffled_games[i] = shuffled_games[j]
        shuffled_games[j] = tmp



func _rnd_stopwheel() -> void :
    rollnext = rng.randi_range(0, 5)



func _uses_double_roll_duration() -> bool:
    return DOUBLE_ROLL_DURATION_LISTS.has(selected_list_path)



func _generate_stopwheel() -> int:
    var min_stop: int = maxi(217, stop_length - int(stop_length / 7.0))
    var max_stop: int = maxi(250, stop_length)
    if _uses_double_roll_duration():
        min_stop *= DOUBLE_ROLL_DURATION_MULTIPLIER
        max_stop *= DOUBLE_ROLL_DURATION_MULTIPLIER
    min_stop = _scaled_fast_roll_stop_steps(min_stop)
    max_stop = _scaled_fast_roll_stop_steps(max_stop)
    return rng.randi_range(min_stop, max_stop)



func _scaled_fast_roll_stop_steps(base_stop_steps: int) -> int:
    var fast_steps: = maxi(0, base_stop_steps - FINAL_SLOWDOWN_STEPS)
    return FINAL_SLOWDOWN_STEPS + int(round(float(fast_steps) * FAST_ROLL_DURATION_MULTIPLIER))



func _choose_roll_colors() -> void :
    main_color = _resolve_roll_main_color()
    secondary_color = _generate_secondary_text_color(main_color)
    text_color_stat = 0
    _apply_final_roll_colors()



func _resolve_roll_main_color() -> Color:
    return custom_roll_item_color if custom_roll_item_color_enabled else DEFAULT_ROLL_ITEM_COLOR



func _generate_secondary_text_color(base_color: Color) -> Color:
    return Color(
        clamp(base_color.r - 0.18, 0.0, 1.0), 
        clamp(base_color.g - 0.18, 0.0, 1.0), 
        clamp(base_color.b - 0.14, 0.0, 1.0), 
        1.0
    )



func _apply_roll_color_animation() -> void :
    _apply_current_roll_colors()
    text_color_stat = 1 - text_color_stat



func _apply_current_roll_colors() -> void :
    var pulse: = 0.08 if text_color_stat == 0 else -0.08
    var animated_secondary: = Color(
        clamp(secondary_color.r + pulse, 0.0, 1.0), 
        clamp(secondary_color.g + pulse, 0.0, 1.0), 
        clamp(secondary_color.b + pulse, 0.0, 1.0), 
        1.0
    )

    _set_slot_label_color(0, animated_secondary)
    _set_slot_label_color(1, animated_secondary)
    _set_slot_label_color(2, main_color)
    _set_slot_label_color(3, animated_secondary)
    _set_slot_label_color(4, animated_secondary)



func _apply_final_roll_colors() -> void :
    _set_slot_label_color(0, secondary_color)
    _set_slot_label_color(1, secondary_color)
    _set_slot_label_color(2, main_color)
    _set_slot_label_color(3, secondary_color)
    _set_slot_label_color(4, secondary_color)



func _set_slot_label_color(slot_index: int, color: Color) -> void :
    if slot_index < 0 or slot_index >= slot_labels.size():
        return
    slot_labels[slot_index].add_theme_color_override("font_color", color)



func _refresh_wheel_delete_button() -> void :
    if wheel_center_delete_button == null:
        return
    var supports_center_delete: = selected_list_path == WHEEL_LIST_PATH or selected_list_path == EXTRA_LIST_PATH
    if not supports_center_delete or rolling:
        wheel_center_delete_button.visible = false
        _refresh_wheel_restore_button()
        return
    if slot_entries.size() <= 2:
        wheel_center_delete_button.visible = false
        _refresh_wheel_restore_button()
        return
    var center_entry: = slot_entries[2]
    var center_text: = _entry_to_display_text(center_entry)
    if center_text.is_empty() or center_text.begins_with("---"):
        wheel_center_delete_button.visible = false
        _refresh_wheel_restore_button()
        return
    var already_deleted: = false
    if selected_list_path == WHEEL_LIST_PATH:
        already_deleted = bool(wheel_deleted_visible_slots.get(2, false))
    elif selected_list_path == EXTRA_LIST_PATH:
        already_deleted = bool(extra_deleted_visible_slots.get(2, false))
    var active_texture: = WHEEL_ALREADY_DELETED_ICON if already_deleted else WHEEL_DELETE_ICON
    wheel_center_delete_button.visible = true
    wheel_center_delete_button.disabled = already_deleted
    wheel_center_delete_button.texture_normal = active_texture
    wheel_center_delete_button.texture_hover = active_texture
    wheel_center_delete_button.texture_pressed = active_texture
    wheel_center_delete_button.texture_disabled = WHEEL_ALREADY_DELETED_ICON
    _refresh_wheel_restore_button()



func _on_wheel_center_delete_button_pressed() -> void :
    if rolling:
        return
    if slot_entries.size() <= 2:
        return
    var center_entry: = slot_entries[2]
    var center_text: = _entry_to_display_text(center_entry)
    if center_text.is_empty() or center_text.begins_with("---"):
        return
    if _is_wheel_list_selected():
        wheel_description_delete_entry = center_entry
        wheel_description_delete_slot_index = 2
        _on_wheel_description_delete_pressed()
    elif selected_list_path == EXTRA_LIST_PATH:
        _delete_extra_center_entry(center_entry, 2)



func _wheel_has_user_removals() -> bool:
    return not _load_wheel_removed_entries().is_empty()



func _refresh_wheel_restore_button() -> void :
    if wheel_restore_button == null:
        return
    if selected_list_path != WHEEL_LIST_PATH:
        wheel_restore_button.visible = false
        return
    wheel_restore_button.visible = true
    wheel_restore_button.disabled = rolling or not _wheel_has_user_removals()



func _reset_selected_list_ui() -> void :
    selected_list_label.text = ""
    list_count_label.text = ""
    base_games = PackedStringArray()
    games = PackedStringArray()
    wheel_deleted_visible_slots.clear()
    extra_deleted_visible_slots.clear()
    _set_result_links_active(false)
    roll_button.disabled = true
    ultra_button.disabled = true
    _hide_wheel_info_popup()
    _hide_wheel_restore_popup()
    digits_checkbox.disabled = true
    if letter_input != null:
        letter_input.editable = false
    _reset_list_tile_styles()
    _update_platform_browser_selection("")
    _update_special_roll_selection("")
    _update_lootbox_selection("")
    _refresh_wheel_restore_button()



func _on_letter_input_text_changed(new_text: String) -> void :
    if suppress_filter_events or letter_input == null:
        return

    var sanitized: String = _sanitize_letter_input(new_text)
    if sanitized != new_text:
        suppress_filter_events = true
        letter_input.text = sanitized
        letter_input.caret_column = sanitized.length()
        suppress_filter_events = false

    _apply_letter_digit_filter()



func _on_digits_checkbox_toggled(_pressed: bool) -> void :
    if suppress_filter_events:
        return

    _apply_letter_digit_filter()



func _sanitize_letter_input(value: String) -> String:
    var sanitized: = value.strip_edges().to_upper()
    for index in range(sanitized.length() - 1, -1, -1):
        var character: = sanitized.substr(index, 1)
        if _is_letter_character(character) or _is_digit_character(character):
            return character

    return ""



func _apply_letter_digit_filter() -> void :
    if letter_input == null:
        return

    var filter_text: = letter_input.text.strip_edges().to_upper()
    var filter_is_digit: = filter_text.length() == 1 and _is_digit_character(filter_text)

    if filter_is_digit and digits_checkbox.button_pressed:
        suppress_filter_events = true
        digits_checkbox.button_pressed = false
        suppress_filter_events = false

    var filtered_games: = PackedStringArray()
    if not base_games.is_empty():
        if filter_text.length() == 1:
            filtered_games = _filter_games_by_prefix(base_games, filter_text)
            if digits_checkbox.button_pressed and not filter_is_digit:
                filtered_games.append_array(_filter_games_by_digit(base_games))
        elif digits_checkbox.button_pressed:
            filtered_games = _filter_games_by_digit(base_games)
        else:
            filtered_games.append_array(base_games)

    games = filtered_games
    list_count_label.text = str(games.size()) if not selected_list_path.is_empty() else ""
    roll_button.disabled = selected_list_path.is_empty() or games.size() <= 1
    ultra_button.disabled = true
    digits_checkbox.disabled = rolling or selected_list_path.is_empty() or base_games.is_empty() or filter_is_digit
    letter_input.editable = not rolling and not selected_list_path.is_empty() and not base_games.is_empty()



func _filter_games_by_prefix(source_games: PackedStringArray, prefix: String) -> PackedStringArray:
    var result: = PackedStringArray()
    for entry in source_games:
        if _entry_matches_prefix(entry, prefix):
            result.append(entry)
    return result



func _filter_games_by_digit(source_games: PackedStringArray) -> PackedStringArray:
    var result: = PackedStringArray()
    for entry in source_games:
        if _entry_matches_digit(entry):
            result.append(entry)
    return result



func _entry_matches_prefix(entry: String, prefix: String) -> bool:
    var filterable_entry: = _entry_filter_text(entry)
    return filterable_entry.begins_with(prefix)



func _entry_matches_digit(entry: String) -> bool:
    var filterable_entry: = _entry_filter_text(entry)
    if filterable_entry.is_empty():
        return false
    if _is_digit_character(filterable_entry.substr(0, 1)):
        return true

    return _entry_has_dollar_digit(filterable_entry)



func _entry_filter_text(entry: String) -> String:
    return entry.get_slice("\t", 0).strip_edges()



func _entry_has_dollar_digit(entry: String) -> bool:
    if entry.length() < 2:
        return false
    return entry.begins_with("$") and _is_digit_character(entry.substr(1, 1))



func _is_digit_character(character: String) -> bool:
    if character.is_empty():
        return false

    var code: = character.unicode_at(0)
    return code >= 48 and code <= 57



func _is_letter_character(character: String) -> bool:
    if character.is_empty():
        return false

    var code: = character.unicode_at(0)
    return (code >= 65 and code <= 90) or (code >= 1040 and code <= 1071) or code == 1025



func _reset_roll_slots() -> void :
    slot_entries.clear()
    slot_entries.append_array(DEFAULT_SLOT_TEXTS)
    wheel_deleted_visible_slots.clear()
    extra_deleted_visible_slots.clear()
    _render_slots()
    _apply_final_roll_colors()



func _reset_list_tile_styles() -> void :
    hero_tile.add_theme_stylebox_override("panel", bag_tile_default_style)
    platforms_tile.add_theme_stylebox_override("panel", bag_tile_default_style)
    bag_tile.add_theme_stylebox_override("panel", bag_tile_default_style)
    wheel_tile.add_theme_stylebox_override("panel", bag_tile_default_style)
    extra_tile.add_theme_stylebox_override("panel", bag_tile_default_style)



func _render_slots(scroll_direction: int = 0) -> void :
    _stop_slot_scroll_animation()
    _reset_slot_visual_positions()
    slot_scroll_active_duration = 0.0
    for i in range(slot_labels.size()):
        var entry: = slot_entries[i] if i < slot_entries.size() else ""
        var texture: = _load_entry_texture(entry)
        var label: = slot_labels[i]
        var texture_node: = slot_image_nodes[i]

        if texture != null:
            label.text = ""
            texture_node.texture = texture
            texture_node.visible = true
        else:
            label.text = _entry_to_display_text(entry)
            texture_node.texture = null
            texture_node.visible = false
    if scroll_direction != 0:
        _animate_slot_scroll(scroll_direction)
    _refresh_wheel_delete_button()



func _stop_slot_scroll_animation() -> void :
    if slot_scroll_tween != null:
        slot_scroll_tween.kill()
        slot_scroll_tween = null



func _reset_slot_visual_positions() -> void :
    for i in range(slot_labels.size()):
        slot_labels[i].position = _slot_label_base_position(i)
        slot_labels[i].modulate = Color(1, 1, 1, 1)
    for i in range(slot_image_nodes.size()):
        slot_image_nodes[i].position = _slot_image_base_position(i)
        slot_image_nodes[i].modulate = Color(1, 1, 1, 1)



func _animate_slot_scroll(scroll_direction: int) -> void :
    var duration: = _slot_scroll_animation_duration()
    slot_scroll_animation_wait_override = 0.0
    slot_scroll_active_duration = duration
    slot_scroll_tween = create_tween()
    slot_scroll_tween.set_parallel(true)
    slot_scroll_tween.set_trans(Tween.TRANS_SINE)
    slot_scroll_tween.set_ease(Tween.EASE_OUT)

    for i in range(slot_labels.size()):
        var label: = slot_labels[i]
        var target_position: = _slot_label_base_position(i)
        label.position = _slot_transition_source_position(i, scroll_direction, false)
        slot_scroll_tween.tween_property(label, "position", target_position, duration)

    for i in range(slot_image_nodes.size()):
        var texture_node: = slot_image_nodes[i]
        var target_position: = _slot_image_base_position(i)
        texture_node.position = _slot_transition_source_position(i, scroll_direction, true)
        slot_scroll_tween.tween_property(texture_node, "position", target_position, duration)



func _slot_scroll_animation_duration() -> float:
    var base_wait: = MAIN_ROLL_WAIT
    if slot_scroll_animation_wait_override > 0.0:
        base_wait = slot_scroll_animation_wait_override
    elif roll_timer != null:
        base_wait = maxf(base_wait, roll_timer.wait_time)
    return clampf(base_wait * SLOT_SCROLL_ANIMATION_RATIO, SLOT_SCROLL_ANIMATION_MIN_WAIT, SLOT_SCROLL_ANIMATION_MAX_WAIT)



func _slot_transition_source_position(slot_index: int, scroll_direction: int, is_image: bool) -> Vector2:
    var source_index: = slot_index - scroll_direction
    if source_index >= 0 and source_index < slot_labels.size():
        return _slot_image_base_position(source_index) if is_image else _slot_label_base_position(source_index)

    var edge_index: = 0 if source_index < 0 else slot_labels.size() - 1
    var neighbor_index: = 1 if source_index < 0 else slot_labels.size() - 2
    var edge_position: = _slot_image_base_position(edge_index) if is_image else _slot_label_base_position(edge_index)
    var neighbor_position: = _slot_image_base_position(neighbor_index) if is_image else _slot_label_base_position(neighbor_index)
    return edge_position + (edge_position - neighbor_position)



func _slot_label_base_position(slot_index: int) -> Vector2:
    var layout: Dictionary = SLOT_TEXT_LAYOUTS[slot_index]
    return layout["position"]



func _slot_image_base_position(slot_index: int) -> Vector2:
    var layout: Dictionary = SLOT_TEXT_LAYOUTS[slot_index]
    var image_size: Vector2 = SLOT_IMAGE_SIZES[slot_index]
    return layout["position"] + (layout["size"] - image_size) * 0.5



func _reset_slot_images() -> void :
    for texture_node in slot_image_nodes:
        texture_node.texture = null
        texture_node.visible = false



func _entry_to_display_text(entry: String) -> String:
    if entry.begins_with("img="):
        return ""
    return entry.replace("\t", " ").strip_edges()



func _load_entry_texture(entry: String) -> Texture2D:
    if not entry.begins_with("img="):
        return null

    var raw_path: = entry.substr(4).strip_edges()
    if raw_path.is_empty():
        return null

    var resolved_path: = _resolve_entry_image_path(raw_path)
    if resolved_path.is_empty():
        return null

    if image_cache.has(resolved_path):
        return image_cache[resolved_path]

    var image: = Image.new()
    var error: = image.load(resolved_path)
    if error != OK:
        return null

    var texture: = ImageTexture.create_from_image(image)
    image_cache[resolved_path] = texture
    return texture



func _resolve_entry_image_path(raw_path: String) -> String:
    var candidates: Array[String] = []
    if raw_path.begins_with("res://"):
        candidates.append(ProjectSettings.globalize_path(raw_path))
    elif raw_path.is_absolute_path():
        candidates.append(raw_path)
    else:
        candidates.append(ProjectSettings.globalize_path("res://%s" % raw_path))
        candidates.append(ProjectSettings.globalize_path("res://lists/%s" % raw_path))

    for candidate in candidates:
        if FileAccess.file_exists(candidate):
            return candidate

    return ""



func _build_search_urls(result_text: String) -> void :
    if result_text.is_empty():
        howlongtobeat_url = ""
        emuparadise_url = ""
        gamefaqs_url = ""
        youtube_url = ""
        return

    var query: = _current_result_query_text()
    howlongtobeat_url = "https://howlongtobeat.com/?q=%s" % query
    emuparadise_url = "http://www.emuparadise.me/roms/search.php?query=%s&section=roms&sysid=%d" % [query, platform]
    gamefaqs_url = "https://gamefaqs.gamespot.com/search?game=%s" % query

    youtube_url = _build_youtube_url_for_text(result_text)



func _build_youtube_url_for_text(result_text: String) -> String:
    var query: = _search_query_text(result_text)
    if query.is_empty():
        return ""
    if _youtube_query_should_include_list_title():
        return "https://www.youtube.com/results?search_query=%s %s" % [query, selected_list_title]
    return "https://www.youtube.com/results?search_query=%s" % query



func _current_result_text() -> String:
    if not selected_result_entry.is_empty():
        return _entry_to_display_text(selected_result_entry)

    if slot_labels.size() > 2:
        return slot_labels[2].text.strip_edges()

    return ""



func _current_result_query_text() -> String:
    return _search_query_text(_current_result_text())



func _search_query_text(result_text: String) -> String:
    return result_text.replace("\t", " ").replace("\"", "\\\"").strip_edges()



func _can_open_result_links() -> bool:
    return _result_links_enabled_for_selected_list() and not rolling and not _current_result_text().is_empty()



func _is_wheel_list_selected() -> bool:
    return selected_platform == WHEEL_LIST_ID



func _is_hardcore_list_selected() -> bool:
    return selected_list_path == HARDCORE_LIST_PATH



func _is_lootbox_description_list_selected() -> bool:
    return _is_lootbox_description_path(selected_list_path)



func _is_lootbox_description_path(path: String) -> bool:
    return path in LOOTBOX_DESCRIPTION_TARGET_PATHS



func _result_links_enabled_for_selected_list() -> bool:
    if _is_hardcore_list_selected():
        return false
    return selected_platform == CAT_LIST_ID or selected_platform == GUITMAN_LIST_ID or selected_platform == BATMAN43_LIST_ID or _is_platform_list_id(selected_platform) or _is_special_roll_list_id(selected_platform)



func _is_platform_list_id(list_id: String) -> bool:
    for item in PLATFORM_BROWSER_ITEMS:
        if str(item.get("id", "")) == list_id:
            return true
    return false



func _is_special_roll_list_id(list_id: String) -> bool:
    for item in SPECIAL_ROLL_ITEMS:
        if str(item.get("id", "")) == list_id:
            return true
    return false



func _youtube_query_should_include_list_title() -> bool:
    return _is_platform_list_id(selected_platform)



func _copy_current_result_to_clipboard() -> void :
    var result_text: = _current_result_text()
    if result_text.is_empty():
        return

    _copy_text_to_clipboard(result_text)



func _copy_text_to_clipboard(text: String) -> void :
    if text.is_empty():
        return

    DisplayServer.clipboard_set(text)



func _open_external_url(url: String) -> void :
    if url.is_empty():
        return

    OS.shell_open(url)



func _open_selected_result_on_youtube() -> void :
    if not _can_open_result_links() or youtube_url.is_empty():
        return

    _copy_current_result_to_clipboard()
    _open_external_url(youtube_url)



func _append_log(result_text: String) -> void :
    if not logs_enabled or result_text.is_empty():
        return

    var file: = FileAccess.open("user://log.txt", FileAccess.READ_WRITE)
    if file == null:
        return

    file.seek_end()
    file.store_line("%s (%s) - %s" % [Time.get_datetime_string_from_system(), selected_list_title, result_text])



func _hide_optional_ui() -> void :
    _set_result_links_active(false)
    _hide_wheel_description_popup(false)
    _hide_list_preview_popup()



func _update_gacha_state_before_roll() -> void :
    if gacha and gacha_garant_enabled:
        gacha_count += 1



func _adjust_audio_volume_db(base_volume_db: float) -> float :
    var volume_ratio: = clampf(sound_volume_percent / DEFAULT_SOUND_VOLUME_PERCENT, 0.0001, MAX_SOUND_VOLUME_PERCENT / DEFAULT_SOUND_VOLUME_PERCENT)
    return base_volume_db + linear_to_db(volume_ratio)



func _stop_audio_for_mute() -> void :
    if audio_player == null or not audio_player.playing:
        return
    audio_player.stop()
    if tts_waiting_for_stop_sound and not pending_tts_text.is_empty():
        tts_waiting_for_stop_sound = false
        tts_timer.start(TTS_DELAY_AFTER_STOP)



func _play_stream(stream: AudioStream, volume_db: float = 0.0) -> void :
    if stream == null:
        return

    current_audio_base_volume_db = volume_db
    if sound_muted or sound_volume_percent <= 0.0:
        return

    audio_player.volume_db = _adjust_audio_volume_db(volume_db)
    audio_player.stream = stream
    audio_player.play()



func _play_sound(candidates: Array[String], volume_db: float = 0.0) -> void :
    for candidate in candidates:
        if not ResourceLoader.exists(candidate):
            continue

        var stream: = load(candidate) as AudioStream
        if stream == null:
            continue

        _play_stream(stream, volume_db)
        return



func _queue_center_label_tts_after_stop_sound() -> void :
    if slot_labels.size() <= 2:
        return

    _queue_tts_text_after_stop_sound(slot_labels[2].text)



func _queue_tts_text_after_stop_sound(text: String) -> void :
    if not tts_enabled:
        pending_tts_text = ""
        tts_waiting_for_stop_sound = false
        if tts_timer != null:
            tts_timer.stop()
        return
    pending_tts_text = _sanitize_text_for_tts(text)
    if pending_tts_text.is_empty():
        return
    if not _tts_is_available():
        pending_tts_text = ""
        return

    tts_waiting_for_stop_sound = audio_player.playing
    if tts_waiting_for_stop_sound:
        return

    tts_timer.start(TTS_DELAY_AFTER_STOP)



func _on_tts_timer_timeout() -> void :
    if pending_tts_text.is_empty():
        return
    if not _tts_is_available():
        pending_tts_text = ""
        return

    var voice_id: String = _get_tts_voice_id()
    if voice_id.is_empty():
        pending_tts_text = ""
        return

    DisplayServer.tts_stop()
    DisplayServer.tts_speak(pending_tts_text, voice_id, TTS_VOLUME, TTS_PITCH, tts_rate, TTS_UTTERANCE_ID, true)
    pending_tts_text = ""



func _stop_tts_playback() -> void :
    pending_tts_text = ""
    tts_waiting_for_stop_sound = false
    if tts_timer != null:
        tts_timer.stop()
    if _tts_is_available():
        DisplayServer.tts_stop()



func _on_tts_button_pressed() -> void :
    tts_enabled = not tts_enabled
    _save_bool_setting(TTS_ENABLED_SETTING_PATH, tts_enabled)
    _refresh_tts_button()
    _refresh_tts_rate_button()
    if not tts_enabled:
        _stop_tts_playback()



func _on_tts_rate_item_selected(index: int) -> void :
    if suppress_tts_rate_option_events:
        return
    if index < 0 or index >= TTS_RATE_VALUES.size():
        return
    tts_rate = TTS_RATE_VALUES[index]
    _save_float_setting(TTS_RATE_SETTING_PATH, tts_rate)
    _refresh_tts_rate_button()



func _on_sound_mute_button_pressed() -> void :
    if sound_muted:
        sound_muted = false
        if sound_volume_percent <= 0.0:
            sound_volume_percent = DEFAULT_SOUND_VOLUME_PERCENT
    else:
        sound_muted = true
        sound_volume_percent = 0.0
    _save_sound_audio_settings()
    _refresh_sound_mute_button()
    _refresh_sound_volume_controls()
    if sound_muted:
        _stop_audio_for_mute()
    elif audio_player != null and audio_player.playing:
        audio_player.volume_db = _adjust_audio_volume_db(current_audio_base_volume_db)



func _on_sound_volume_slider_value_changed(value: float) -> void :
    if suppress_sound_volume_slider_events:
        return
    sound_volume_percent = clampf(value, 0.0, MAX_SOUND_VOLUME_PERCENT)
    sound_muted = sound_volume_percent <= 0.0
    _save_sound_audio_settings()
    _refresh_sound_mute_button()
    _refresh_sound_volume_controls()
    if sound_muted:
        _stop_audio_for_mute()
    elif audio_player != null and audio_player.playing:
        audio_player.volume_db = _adjust_audio_volume_db(current_audio_base_volume_db)



func _on_settings_button_pressed() -> void :
    _set_settings_menu_open( not settings_menu_open)



func _on_calc_button_pressed() -> void :
    _set_settings_menu_open(false)
    if calc_window == null:
        return
    calc_window.popup_centered(Vector2i(560, 320))
    calc_window.grab_focus()



func _on_calc_window_close_requested() -> void :
    if calc_window != null:
        calc_window.hide()



func _on_calc_calculate_pressed() -> void :
    if calc_sum_input == null or calc_current_price_input == null or calc_step_input == null or calc_result_output == null:
        return

    var total: = _parse_calc_number(calc_sum_input.text)
    var current_price: = _parse_calc_number(calc_current_price_input.text)
    var step: = _parse_calc_number(calc_step_input.text)
    if total < 0.0 or current_price <= 0.0 or step < 0.0:
        calc_result_output.text = "Введите корректные значения."
        if calc_wheels_label != null:
            calc_wheels_label.text = "Колёс: 0"
        if calc_remainder_label != null:
            calc_remainder_label.text = ""
        return

    var remaining: = total
    var price: = current_price
    var wheels_count: = 0
    var output_lines: Array[String] = []
    while remaining + 0.0001 >= price:
        wheels_count += 1
        output_lines.append("%d - %s/%s" % [
            wheels_count, 
            _format_calc_number(remaining), 
            _format_calc_number(price), 
        ])
        remaining -= price
        price += step

    calc_result_output.text = "\n".join(output_lines)
    if calc_wheels_label != null:
        calc_wheels_label.text = "Колёс: %d" % wheels_count
    if calc_remainder_label != null:
        calc_remainder_label.text = "%s/%s" % [
            _format_calc_number(remaining), 
            _format_calc_number(price), 
        ]



func _parse_calc_number(text: String) -> float:
    var normalized: = text.strip_edges().replace(",", ".")
    if normalized.is_empty():
        return 0.0
    return normalized.to_float()



func _format_calc_number(value: float) -> String:
    if is_equal_approx(value, round(value)):
        return str(int(round(value)))
    return ("%0.2f" % value).rstrip("0").rstrip(".")



func _apply_calculator_text_outline(control: Control) -> void :
    if control == null:
        return
    control.add_theme_color_override("font_outline_color", Color(0.0, 0.0, 0.0, 1.0))
    control.add_theme_constant_override("outline_size", 4)



func _set_settings_menu_open(is_open: bool) -> void :
    settings_menu_open = is_open
    _refresh_settings_menu_visibility()



func _on_settings_background_button_pressed() -> void :
    _set_settings_menu_open(false)
    if _is_web_runtime():
        _open_web_file_picker("background", "image/*")
        return
    if background_file_dialog == null:
        return
    background_file_dialog.popup_centered_ratio(0.75)



func _on_settings_music_button_pressed() -> void :
    _set_settings_menu_open(false)
    if _is_web_runtime():
        _open_web_file_picker("music", ".mp3,audio/mpeg")
        return
    if music_file_dialog == null:
        return
    music_file_dialog.popup_centered_ratio(0.75)



func _on_settings_item_color_button_pressed() -> void :
    _set_settings_menu_open(false)
    if item_color_dialog == null or item_color_picker == null:
        return
    item_color_picker.color = _resolve_roll_main_color()
    item_color_dialog.popup_centered(Vector2i(360, 420))



func _on_settings_button_color_button_pressed() -> void :
    _set_settings_menu_open(false)
    if button_color_dialog == null or button_color_picker == null:
        return
    button_color_picker.color = custom_button_color if custom_button_color_enabled else DEFAULT_UI_BUTTON_TEXT_COLOR
    button_color_dialog.popup_centered(Vector2i(360, 420))



func _on_settings_button_fill_color_button_pressed() -> void :
    _set_settings_menu_open(false)
    if button_fill_color_dialog == null or button_fill_color_picker == null:
        return
    var fallback_color: = _resolve_default_button_fill_color()
    button_fill_color_picker.color = custom_button_fill_color if custom_button_fill_color_enabled else fallback_color
    button_fill_color_dialog.popup_centered(Vector2i(360, 420))



func _on_settings_reset_button_pressed() -> void :
    _set_settings_menu_open(false)
    _delete_user_settings_file(CUSTOM_BACKGROUND_IMAGE_PATH)
    _delete_user_settings_file(CUSTOM_BACKGROUND_MODE_PATH)
    _delete_user_settings_file(CUSTOM_ROLL_MUSIC_PATH)
    _delete_user_settings_file(CUSTOM_ROLL_ITEM_COLOR_PATH)
    _delete_user_settings_file(CUSTOM_BUTTON_COLOR_PATH)
    _delete_user_settings_file(CUSTOM_BUTTON_FILL_COLOR_PATH)
    _delete_user_settings_file(SOUND_MUTED_SETTING_PATH)
    _delete_user_settings_file(SOUND_VOLUME_PERCENT_SETTING_PATH)
    _delete_user_settings_file(TTS_ENABLED_SETTING_PATH)
    _delete_user_settings_file(TTS_RATE_SETTING_PATH)

    sound_muted = false
    sound_volume_percent = DEFAULT_SOUND_VOLUME_PERCENT
    tts_enabled = true
    tts_rate = DEFAULT_TTS_RATE
    _set_custom_background_mode(CUSTOM_BACKGROUND_MODE_STRETCH, false)
    _load_saved_custom_background()
    _load_saved_custom_roll_music()
    _load_saved_custom_roll_item_color()
    _load_saved_custom_button_color()
    _load_saved_custom_button_fill_color()
    _refresh_sound_mute_button()
    _refresh_sound_volume_controls()
    _refresh_tts_button()
    _refresh_tts_rate_button()

    if item_color_picker != null:
        item_color_picker.color = DEFAULT_ROLL_ITEM_COLOR
    if button_color_picker != null:
        button_color_picker.color = DEFAULT_UI_BUTTON_TEXT_COLOR
    if button_fill_color_picker != null:
        button_fill_color_picker.color = _resolve_default_button_fill_color()

    if rolling:
        _apply_current_roll_colors()
    else:
        _apply_final_roll_colors()



func _delete_user_settings_file(path: String) -> void :
    if path.is_empty() or not FileAccess.file_exists(path):
        return
    DirAccess.remove_absolute(ProjectSettings.globalize_path(path))



func _on_background_file_selected(path: String) -> void :
    if path.is_empty():
        return
    var image: = Image.new()
    var error: = image.load(path)
    if error != OK:
        return
    image.save_png(CUSTOM_BACKGROUND_IMAGE_PATH)
    _apply_custom_background_image(image)



func _open_web_file_picker(kind: String, accept: String) -> void :
    if not _is_web_runtime():
        return
    if web_file_picker_callback_ref == null:
        web_file_picker_callback_ref = JavaScriptBridge.create_callback(_on_web_file_picker_result)
    var window_interface = JavaScriptBridge.get_interface("window")
    if window_interface == null:
        return
    window_interface.rggOpenUserFilePicker(kind, accept, web_file_picker_callback_ref)



func _on_web_file_picker_result(args) -> void :
    if args == null or args.size() == 0:
        return
    var payload_text: = str(args[0])
    if payload_text.is_empty():
        return
    var payload = JSON.parse_string(payload_text)
    if typeof(payload) != TYPE_DICTIONARY:
        return
    var result: Dictionary = payload
    var kind: = str(result.get("kind", ""))
    var data_url: = str(result.get("data_url", ""))
    if data_url.is_empty():
        return

    if kind == "background":
        var image_bytes: = _decode_data_url_bytes(data_url)
        if image_bytes.is_empty():
            return
        var image: = Image.new()
        if image.load_png_from_buffer(image_bytes) != OK:
            return
        image.save_png(CUSTOM_BACKGROUND_IMAGE_PATH)
        _apply_custom_background_image(image)
        return

    if kind == "music":
        _store_custom_roll_music_bytes(_decode_data_url_bytes(data_url))



func _decode_data_url_bytes(data_url: String) -> PackedByteArray:
    var comma_index: = data_url.find(",")
    if comma_index == -1:
        return PackedByteArray()
    var encoded_payload: = data_url.substr(comma_index + 1)
    if encoded_payload.is_empty():
        return PackedByteArray()
    return Marshalls.base64_to_raw(encoded_payload)



func _store_custom_roll_music_bytes(music_bytes: PackedByteArray) -> void :
    if music_bytes.is_empty():
        return
    var target_file: = FileAccess.open(CUSTOM_ROLL_MUSIC_PATH, FileAccess.WRITE)
    if target_file == null:
        return
    target_file.store_buffer(music_bytes)
    target_file.close()
    _load_saved_custom_roll_music()



func _on_music_file_selected(path: String) -> void :
    if path.is_empty():
        return
    var source_file: = FileAccess.open(path, FileAccess.READ)
    if source_file == null:
        return
    var music_bytes: = source_file.get_buffer(source_file.get_length())
    source_file.close()
    if music_bytes.is_empty():
        return
    _store_custom_roll_music_bytes(music_bytes)



func _on_roll_item_color_selected(color: Color) -> void :
    custom_roll_item_color = color
    custom_roll_item_color_enabled = true
    var file: = FileAccess.open(CUSTOM_ROLL_ITEM_COLOR_PATH, FileAccess.WRITE)
    if file != null:
        file.store_string(color.to_html(true))
        file.close()
    main_color = _resolve_roll_main_color()
    secondary_color = _generate_secondary_text_color(main_color)
    if rolling:
        _apply_current_roll_colors()
    else:
        _apply_final_roll_colors()



func _on_item_color_dialog_confirmed() -> void :
    if item_color_picker == null:
        return
    _on_roll_item_color_selected(item_color_picker.color)



func _on_button_color_selected(color: Color) -> void :
    custom_button_color = color
    custom_button_color_enabled = true
    var file: = FileAccess.open(CUSTOM_BUTTON_COLOR_PATH, FileAccess.WRITE)
    if file != null:
        file.store_string(color.to_html(true))
        file.close()
    _apply_custom_button_color_theme()



func _on_button_color_dialog_confirmed() -> void :
    if button_color_picker == null:
        return
    _on_button_color_selected(button_color_picker.color)



func _on_button_fill_color_selected(color: Color) -> void :
    custom_button_fill_color = color
    custom_button_fill_color_enabled = true
    var file: = FileAccess.open(CUSTOM_BUTTON_FILL_COLOR_PATH, FileAccess.WRITE)
    if file != null:
        file.store_string(color.to_html(true))
        file.close()
    _apply_custom_button_fill_theme()



func _on_button_fill_color_dialog_confirmed() -> void :
    if button_fill_color_picker == null:
        return
    _on_button_fill_color_selected(button_fill_color_picker.color)



func _set_custom_background_mode(mode: String, persist: bool = true) -> void :
    if mode != CUSTOM_BACKGROUND_MODE_CENTER:
        mode = CUSTOM_BACKGROUND_MODE_STRETCH
    custom_background_mode = mode
    if background_image_rect != null:
        if custom_background_mode == CUSTOM_BACKGROUND_MODE_CENTER:
            background_image_rect.stretch_mode = TextureRect.STRETCH_KEEP_CENTERED
        else:
            background_image_rect.stretch_mode = TextureRect.STRETCH_SCALE
    _refresh_background_mode_buttons()
    if persist:
        var file: = FileAccess.open(CUSTOM_BACKGROUND_MODE_PATH, FileAccess.WRITE)
        if file != null:
            file.store_string(custom_background_mode)
            file.close()



func _refresh_background_mode_buttons() -> void :
    var active_color: = Color(0.96, 0.96, 0.98, 1.0)
    var inactive_color: = Color(0.72, 0.72, 0.76, 1.0)
    if background_stretch_button != null:
        background_stretch_button.add_theme_color_override(
            "font_color", 
            active_color if custom_background_mode == CUSTOM_BACKGROUND_MODE_STRETCH else inactive_color
        )
    if background_center_button != null:
        background_center_button.add_theme_color_override(
            "font_color", 
            active_color if custom_background_mode == CUSTOM_BACKGROUND_MODE_CENTER else inactive_color
        )



func _load_saved_custom_background_mode() -> void :
    if not FileAccess.file_exists(CUSTOM_BACKGROUND_MODE_PATH):
        _set_custom_background_mode(CUSTOM_BACKGROUND_MODE_STRETCH, false)
        return
    var text: = _read_text_auto(CUSTOM_BACKGROUND_MODE_PATH).strip_edges().to_lower()
    if text == CUSTOM_BACKGROUND_MODE_CENTER:
        _set_custom_background_mode(CUSTOM_BACKGROUND_MODE_CENTER, false)
        return
    _set_custom_background_mode(CUSTOM_BACKGROUND_MODE_STRETCH, false)



func _apply_custom_background_image(image: Image) -> void :
    if background_image_rect == null or image == null or image.is_empty():
        return
    background_image_rect.texture = ImageTexture.create_from_image(image)
    background_image_rect.visible = true



func _load_saved_custom_background() -> void :
    if background_image_rect == null:
        return
    if not FileAccess.file_exists(CUSTOM_BACKGROUND_IMAGE_PATH):
        background_image_rect.texture = null
        background_image_rect.visible = false
        return
    var image: = Image.new()
    var error: = image.load(CUSTOM_BACKGROUND_IMAGE_PATH)
    if error != OK:
        background_image_rect.texture = null
        background_image_rect.visible = false
        return
    _apply_custom_background_image(image)



func _load_saved_custom_roll_music() -> void :
    custom_roll_music_stream = null
    if not FileAccess.file_exists(CUSTOM_ROLL_MUSIC_PATH):
        return
    var music_file: = FileAccess.open(CUSTOM_ROLL_MUSIC_PATH, FileAccess.READ)
    if music_file == null:
        return
    var music_bytes: = music_file.get_buffer(music_file.get_length())
    music_file.close()
    if music_bytes.is_empty():
        return
    var mp3_stream: = AudioStreamMP3.new()
    mp3_stream.data = music_bytes
    custom_roll_music_stream = mp3_stream



func _save_bool_setting(path: String, value: bool) -> void :
    var file: = FileAccess.open(path, FileAccess.WRITE)
    if file == null:
        return
    file.store_string("1" if value else "0")
    file.close()



func _save_float_setting(path: String, value: float) -> void :
    var file: = FileAccess.open(path, FileAccess.WRITE)
    if file == null:
        return
    file.store_string(str(value))
    file.close()



func _save_sound_audio_settings() -> void :
    _save_bool_setting(SOUND_MUTED_SETTING_PATH, sound_muted)
    _save_float_setting(SOUND_VOLUME_PERCENT_SETTING_PATH, sound_volume_percent)



func _load_bool_setting(path: String, default_value: bool) -> bool :
    if not FileAccess.file_exists(path):
        return default_value
    var text: = _read_text_auto(path).strip_edges().to_lower()
    match text:
        "1", "true", "yes", "on", "enabled":
            return true
        "0", "false", "no", "off", "disabled":
            return false
    return default_value



func _load_float_setting(path: String, default_value: float) -> float :
    if not FileAccess.file_exists(path):
        return default_value
    var text: = _read_text_auto(path).strip_edges()
    if not text.is_valid_float():
        return default_value
    return text.to_float()



func _nearest_tts_rate_option(rate: float) -> float :
    var nearest_rate: = DEFAULT_TTS_RATE
    var nearest_distance: = absf(rate - DEFAULT_TTS_RATE)
    for option_rate in TTS_RATE_VALUES:
        var distance: = absf(rate - option_rate)
        if distance < nearest_distance:
            nearest_rate = option_rate
            nearest_distance = distance
    return nearest_rate



func _tts_rate_option_index(rate: float) -> int :
    for i in range(TTS_RATE_VALUES.size()):
        if absf(TTS_RATE_VALUES[i] - rate) < 0.001:
            return i
    for i in range(TTS_RATE_VALUES.size()):
        if absf(TTS_RATE_VALUES[i] - DEFAULT_TTS_RATE) < 0.001:
            return i
    return 0



func _load_saved_audio_toggle_settings() -> void :
    sound_volume_percent = clampf(_load_float_setting(SOUND_VOLUME_PERCENT_SETTING_PATH, DEFAULT_SOUND_VOLUME_PERCENT), 0.0, MAX_SOUND_VOLUME_PERCENT)
    sound_muted = _load_bool_setting(SOUND_MUTED_SETTING_PATH, false)
    if sound_muted:
        sound_volume_percent = 0.0
    elif sound_volume_percent <= 0.0:
        sound_muted = true
    tts_enabled = _load_bool_setting(TTS_ENABLED_SETTING_PATH, true)
    tts_rate = _nearest_tts_rate_option(_load_float_setting(TTS_RATE_SETTING_PATH, DEFAULT_TTS_RATE))
    if not tts_enabled:
        _stop_tts_playback()



func _load_saved_custom_roll_item_color() -> void :
    custom_roll_item_color_enabled = false
    custom_roll_item_color = DEFAULT_ROLL_ITEM_COLOR
    if not FileAccess.file_exists(CUSTOM_ROLL_ITEM_COLOR_PATH):
        main_color = _resolve_roll_main_color()
        secondary_color = _generate_secondary_text_color(main_color)
        return
    var color_text: = _read_text_auto(CUSTOM_ROLL_ITEM_COLOR_PATH).strip_edges()
    if color_text.is_empty():
        main_color = _resolve_roll_main_color()
        secondary_color = _generate_secondary_text_color(main_color)
        return
    custom_roll_item_color = Color.from_string("#" + color_text, DEFAULT_ROLL_ITEM_COLOR)
    custom_roll_item_color_enabled = true
    main_color = _resolve_roll_main_color()
    secondary_color = _generate_secondary_text_color(main_color)



func _load_saved_custom_button_color() -> void :
    custom_button_color_enabled = false
    custom_button_color = DEFAULT_UI_BUTTON_TEXT_COLOR
    if FileAccess.file_exists(CUSTOM_BUTTON_COLOR_PATH):
        var color_text: = _read_text_auto(CUSTOM_BUTTON_COLOR_PATH).strip_edges()
        if not color_text.is_empty():
            custom_button_color = Color.from_string("#" + color_text, DEFAULT_UI_BUTTON_TEXT_COLOR)
            custom_button_color_enabled = true
    _apply_custom_button_color_theme()



func _load_saved_custom_button_fill_color() -> void :
    custom_button_fill_color_enabled = false
    custom_button_fill_color = _resolve_default_button_fill_color()
    if FileAccess.file_exists(CUSTOM_BUTTON_FILL_COLOR_PATH):
        var color_text: = _read_text_auto(CUSTOM_BUTTON_FILL_COLOR_PATH).strip_edges()
        if not color_text.is_empty():
            custom_button_fill_color = Color.from_string("#" + color_text, _resolve_default_button_fill_color())
            custom_button_fill_color_enabled = true
    _apply_custom_button_fill_theme()



func _apply_custom_button_color_theme() -> void :
    var shared_color: = custom_button_color if custom_button_color_enabled else DEFAULT_UI_BUTTON_TEXT_COLOR
    if roll_button != null:
        roll_button.add_theme_color_override("font_color", custom_button_color if custom_button_color_enabled else DEFAULT_ROLL_BUTTON_TEXT_COLOR)
    if ultra_button != null:
        ultra_button.add_theme_color_override("font_color", custom_button_color if custom_button_color_enabled else DEFAULT_ULTRA_BUTTON_TEXT_COLOR)
    if selected_list_label != null:
        selected_list_label.add_theme_color_override("font_color", custom_button_color if custom_button_color_enabled else DEFAULT_SELECTED_LIST_TEXT_COLOR)
    if list_count_label != null:
        list_count_label.add_theme_color_override("font_color", custom_button_color if custom_button_color_enabled else DEFAULT_SELECTED_COUNT_TEXT_COLOR)
    if digits_checkbox != null:
        digits_checkbox.add_theme_color_override("font_color", shared_color)
    for label in [hero_label, platforms_label, bag_label, wheel_label, extra_label]:
        if label != null:
            label.add_theme_color_override("font_color", shared_color)
    _apply_tile_button_text_colors(platform_browser_buttons)
    _apply_tile_button_text_colors(special_roll_buttons)
    _apply_tile_button_text_colors(lootbox_buttons)



func _apply_tile_button_text_colors(tiles: Dictionary) -> void :
    for tile_variant in tiles.values():
        var tile: = tile_variant as Panel
        if tile == null:
            continue
        for child in tile.get_children():
            var label: = child as Label
            if label == null:
                continue
            if label.name == "TileIconLabel":
                label.add_theme_color_override("font_color", custom_button_color if custom_button_color_enabled else DEFAULT_TILE_ICON_TEXT_COLOR)
            elif label.name == "TileTitleLabel":
                label.add_theme_color_override("font_color", custom_button_color if custom_button_color_enabled else DEFAULT_UI_BUTTON_TEXT_COLOR)



func _capture_button_fill_style_templates() -> void :
    if roll_button != null:
        var roll_style: = roll_button.get_theme_stylebox("normal")
        if roll_style is StyleBoxFlat:
            roll_button_style_template = (roll_style as StyleBoxFlat).duplicate()
    if ultra_button != null:
        var ultra_style: = ultra_button.get_theme_stylebox("normal")
        if ultra_style is StyleBoxFlat:
            ultra_button_style_template = (ultra_style as StyleBoxFlat).duplicate()
    if letter_input != null:
        var input_style: = letter_input.get_theme_stylebox("normal")
        if input_style is StyleBoxFlat:
            letter_input_style_template = (input_style as StyleBoxFlat).duplicate()
    if bag_tile_default_style is StyleBoxFlat:
        bag_tile_default_style_template = (bag_tile_default_style as StyleBoxFlat).duplicate()
    if bag_tile_active_style != null:
        bag_tile_active_style_template = bag_tile_active_style.duplicate()



func _resolve_default_button_fill_color() -> Color:
    if roll_button_style_template != null:
        return roll_button_style_template.bg_color
    return Color(0.25, 0.25, 0.25, 0.96)



func _duplicate_style_with_bg(style: StyleBoxFlat, bg_color: Color) -> StyleBoxFlat:
    if style == null:
        return null
    var duplicated: = style.duplicate()
    duplicated.bg_color = bg_color
    return duplicated



func _apply_custom_button_fill_theme() -> void :
    var target_color: = custom_button_fill_color if custom_button_fill_color_enabled else _resolve_default_button_fill_color()
    if roll_button_style_template != null and roll_button != null:
        var roll_style: = _duplicate_style_with_bg(roll_button_style_template, target_color)
        roll_button.add_theme_stylebox_override("normal", roll_style)
        roll_button.add_theme_stylebox_override("pressed", roll_style)
        roll_button.add_theme_stylebox_override("hover", roll_style)
    if ultra_button_style_template != null and ultra_button != null:
        var ultra_style: = _duplicate_style_with_bg(ultra_button_style_template, target_color)
        ultra_button.add_theme_stylebox_override("normal", ultra_style)
        ultra_button.add_theme_stylebox_override("pressed", ultra_style)
        ultra_button.add_theme_stylebox_override("hover", ultra_style)
    if letter_input_style_template != null and letter_input != null:
        var input_style: = _duplicate_style_with_bg(letter_input_style_template, target_color)
        letter_input.add_theme_stylebox_override("normal", input_style)
        letter_input.add_theme_stylebox_override("read_only", input_style)
        letter_input.add_theme_stylebox_override("focus", input_style)
    if bag_tile_default_style_template != null:
        bag_tile_default_style = _duplicate_style_with_bg(bag_tile_default_style_template, target_color)
    if bag_tile_active_style_template != null:
        bag_tile_active_style = _duplicate_style_with_bg(bag_tile_active_style_template, target_color)
    _reset_list_tile_styles()
    _restore_bottom_bar_tile_selection()
    _update_platform_browser_selection(selected_list_title)
    _update_special_roll_selection(selected_list_title)
    _update_lootbox_selection(selected_list_title)



func _restore_bottom_bar_tile_selection() -> void :
    if selected_platform == GUITMAN_LIST_ID and hero_tile != null:
        hero_tile.add_theme_stylebox_override("panel", bag_tile_active_style)
    elif selected_platform == CAT_LIST_ID and bag_tile != null:
        bag_tile.add_theme_stylebox_override("panel", bag_tile_active_style)
    elif selected_platform == PLATFORMS_LIST_ID and platforms_tile != null:
        platforms_tile.add_theme_stylebox_override("panel", bag_tile_active_style)
    elif selected_platform == WHEEL_LIST_ID and wheel_tile != null:
        wheel_tile.add_theme_stylebox_override("panel", bag_tile_active_style)
    elif selected_platform == EXTRA_LIST_ID and extra_tile != null:
        extra_tile.add_theme_stylebox_override("panel", bag_tile_active_style)
    elif platforms_tile != null:
        for item in PLATFORM_BROWSER_ITEMS:
            if str(item.get("id", "")) == selected_platform:
                platforms_tile.add_theme_stylebox_override("panel", bag_tile_active_style)
                break



func _settings_controls_available() -> bool:
    return not platform_browser_open and not special_roll_browser_open and not lootbox_browser_open



func _refresh_settings_menu_visibility() -> void :
    var controls_available: = _settings_controls_available()
    if calc_button != null:
        calc_button.visible = controls_available
    if settings_button != null:
        settings_button.visible = controls_available
    if settings_panel != null:
        settings_panel.visible = controls_available and settings_menu_open



func _refresh_sound_mute_button() -> void :
    if sound_mute_button == null:
        return
    sound_mute_button.add_theme_font_size_override("font_size", 12)
    if sound_muted:
        sound_mute_button.text = "UNMUTE"
        sound_mute_button.add_theme_color_override("font_color", Color(0.62, 0.62, 0.66, 1.0))
    else:
        sound_mute_button.text = "MUTE"
        sound_mute_button.add_theme_color_override("font_color", Color(0.92, 0.92, 0.96, 1.0))



func _refresh_sound_volume_controls() -> void :
    if sound_volume_slider != null:
        suppress_sound_volume_slider_events = true
        sound_volume_slider.value = sound_volume_percent
        suppress_sound_volume_slider_events = false
    if sound_volume_label != null:
        sound_volume_label.text = "%d%%" % int(round(sound_volume_percent))
        sound_volume_label.add_theme_color_override("font_color", Color(0.62, 0.62, 0.66, 1.0) if sound_muted else Color(0.92, 0.92, 0.96, 1.0))



func _refresh_tts_button() -> void :
    if tts_button == null:
        return
    tts_button.add_theme_font_size_override("font_size", 16)
    if tts_enabled:
        tts_button.text = "TTS ON"
        tts_button.add_theme_color_override("font_color", Color(0.92, 0.92, 0.96, 1.0))
    else:
        tts_button.text = "TTS OFF"
        tts_button.add_theme_color_override("font_color", Color(0.62, 0.62, 0.66, 1.0))



func _refresh_tts_rate_button() -> void :
    if tts_rate_option_button == null:
        return
    var option_index: = _tts_rate_option_index(tts_rate)
    suppress_tts_rate_option_events = true
    tts_rate_option_button.select(option_index)
    suppress_tts_rate_option_events = false
    tts_rate_option_button.add_theme_color_override("font_color", Color(0.92, 0.92, 0.96, 1.0) if tts_enabled else Color(0.62, 0.62, 0.66, 1.0))



func _tts_is_available() -> bool:
    return DisplayServer.has_feature(DisplayServer.FEATURE_TEXT_TO_SPEECH)



func _get_tts_voice_id() -> String:
    if not cached_tts_voice_id.is_empty():
        return cached_tts_voice_id

    var localized_voices: PackedStringArray = DisplayServer.tts_get_voices_for_language("ru")
    if not localized_voices.is_empty():
        cached_tts_voice_id = localized_voices[0]
        return cached_tts_voice_id

    var voices_info: Array[Dictionary] = DisplayServer.tts_get_voices()
    if voices_info.is_empty():
        return ""

    var first_voice: Dictionary = voices_info[0]
    if first_voice.has("id"):
        cached_tts_voice_id = str(first_voice["id"])

    return cached_tts_voice_id



func _sanitize_text_for_tts(text: String) -> String:
    var spoken: String = text.replace("\n", " ").replace("\r", " ").replace("\t", " ").strip_edges()
    while spoken.contains("  "):
        spoken = spoken.replace("  ", " ")
    return spoken



func _on_audio_player_finished() -> void :
    if not tts_waiting_for_stop_sound:
        return
    if pending_tts_text.is_empty():
        tts_waiting_for_stop_sound = false
        return

    tts_waiting_for_stop_sound = false
    tts_timer.start(TTS_DELAY_AFTER_STOP)



func _create_wheel_description_popup() -> void :
    wheel_description_overlay = Control.new()
    wheel_description_overlay.name = "WheelDescriptionOverlay"
    wheel_description_overlay.anchor_right = 1.0
    wheel_description_overlay.anchor_bottom = 1.0
    wheel_description_overlay.mouse_filter = Control.MOUSE_FILTER_STOP
    wheel_description_overlay.visible = false
    wheel_description_overlay.z_index = 80
    add_child(wheel_description_overlay)

    wheel_description_title_label = Label.new()
    wheel_description_title_label.position = Vector2(72, 44)
    wheel_description_title_label.size = Vector2(880, 54)
    wheel_description_title_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    wheel_description_title_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    wheel_description_title_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_description_title_label.add_theme_font_size_override("font_size", 36)
    wheel_description_overlay.add_child(wheel_description_title_label)

    var panel: = Panel.new()
    panel.name = "DescriptionPanel"
    panel.position = Vector2(86, 166)
    panel.size = Vector2(852, 382)
    panel.add_theme_stylebox_override("panel", _create_wheel_description_panel_style())
    wheel_description_overlay.add_child(panel)

    wheel_description_item_label = Label.new()
    wheel_description_item_label.position = Vector2(24, 22)
    wheel_description_item_label.size = Vector2(804, 42)
    wheel_description_item_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    wheel_description_item_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    wheel_description_item_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_description_item_label.add_theme_font_size_override("font_size", 24)
    panel.add_child(wheel_description_item_label)

    wheel_description_body_label = RichTextLabel.new()
    wheel_description_body_label.position = Vector2(28, 86)
    wheel_description_body_label.size = Vector2(796, 220)
    wheel_description_body_label.bbcode_enabled = false
    wheel_description_body_label.fit_content = false
    wheel_description_body_label.scroll_active = true
    wheel_description_body_label.selection_enabled = true
    wheel_description_body_label.context_menu_enabled = true
    wheel_description_body_label.shortcut_keys_enabled = true
    wheel_description_body_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
    wheel_description_body_label.add_theme_color_override("default_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_description_body_label.add_theme_font_size_override("normal_font_size", 22)
    panel.add_child(wheel_description_body_label)

    wheel_description_delete_button = Button.new()
    wheel_description_delete_button.position = Vector2(302, 316)
    wheel_description_delete_button.size = Vector2(154, 32)
    wheel_description_delete_button.text = "Удалить"
    wheel_description_delete_button.visible = false
    wheel_description_delete_button.focus_mode = Control.FOCUS_NONE
    wheel_description_delete_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    wheel_description_delete_button.pressed.connect(_on_wheel_description_delete_pressed)
    panel.add_child(wheel_description_delete_button)

    wheel_description_link_button = Button.new()
    wheel_description_link_button.position = Vector2(486, 316)
    wheel_description_link_button.size = Vector2(154, 32)
    wheel_description_link_button.text = "ССЫЛКА"
    wheel_description_link_button.visible = false
    wheel_description_link_button.focus_mode = Control.FOCUS_NONE
    wheel_description_link_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    var button_style: = _create_wheel_description_button_style()
    wheel_description_delete_button.add_theme_stylebox_override("normal", button_style)
    wheel_description_delete_button.add_theme_stylebox_override("pressed", button_style)
    wheel_description_delete_button.add_theme_stylebox_override("hover", button_style)
    wheel_description_delete_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_description_delete_button.add_theme_font_size_override("font_size", 14)
    wheel_description_link_button.add_theme_stylebox_override("normal", button_style)
    wheel_description_link_button.add_theme_stylebox_override("pressed", button_style)
    wheel_description_link_button.add_theme_stylebox_override("hover", button_style)
    wheel_description_link_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_description_link_button.add_theme_font_size_override("font_size", 14)
    wheel_description_link_button.pressed.connect(_on_wheel_description_link_pressed)
    panel.add_child(wheel_description_link_button)

    wheel_description_close_button = Button.new()
    wheel_description_close_button.position = Vector2(670, 316)
    wheel_description_close_button.size = Vector2(154, 32)
    wheel_description_close_button.text = "Закрыть"
    wheel_description_close_button.focus_mode = Control.FOCUS_NONE
    wheel_description_close_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    wheel_description_close_button.add_theme_stylebox_override("normal", button_style)
    wheel_description_close_button.add_theme_stylebox_override("pressed", button_style)
    wheel_description_close_button.add_theme_stylebox_override("hover", button_style)
    wheel_description_close_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_description_close_button.add_theme_font_size_override("font_size", 14)
    wheel_description_close_button.pressed.connect(_on_wheel_description_close_pressed)
    panel.add_child(wheel_description_close_button)



func _create_wheel_info_popup() -> void :
    wheel_info_overlay = Control.new()
    wheel_info_overlay.name = "WheelInfoOverlay"
    wheel_info_overlay.anchor_right = 1.0
    wheel_info_overlay.anchor_bottom = 1.0
    wheel_info_overlay.mouse_filter = Control.MOUSE_FILTER_STOP
    wheel_info_overlay.visible = false
    wheel_info_overlay.z_index = 92
    add_child(wheel_info_overlay)

    var panel: = Panel.new()
    panel.name = "WheelInfoPanel"
    panel.position = Vector2(296, 252)
    panel.size = Vector2(408, 136)
    panel.add_theme_stylebox_override("panel", _create_wheel_description_panel_style())
    wheel_info_overlay.add_child(panel)

    wheel_info_label = Label.new()
    wheel_info_label.position = Vector2(24, 24)
    wheel_info_label.size = Vector2(360, 40)
    wheel_info_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    wheel_info_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    wheel_info_label.text = "Пункт уже удалён"
    wheel_info_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_info_label.add_theme_font_size_override("font_size", 22)
    panel.add_child(wheel_info_label)

    wheel_info_ok_button = Button.new()
    wheel_info_ok_button.position = Vector2(252, 88)
    wheel_info_ok_button.size = Vector2(132, 28)
    wheel_info_ok_button.text = "OK"
    wheel_info_ok_button.focus_mode = Control.FOCUS_NONE
    wheel_info_ok_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    var button_style: = _create_wheel_description_button_style()
    wheel_info_ok_button.add_theme_stylebox_override("normal", button_style)
    wheel_info_ok_button.add_theme_stylebox_override("pressed", button_style)
    wheel_info_ok_button.add_theme_stylebox_override("hover", button_style)
    wheel_info_ok_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_info_ok_button.add_theme_font_size_override("font_size", 14)
    wheel_info_ok_button.pressed.connect(_on_wheel_info_ok_pressed)
    panel.add_child(wheel_info_ok_button)



func _create_wheel_restore_popup() -> void :
    wheel_restore_overlay = Control.new()
    wheel_restore_overlay.name = "WheelRestoreOverlay"
    wheel_restore_overlay.anchor_right = 1.0
    wheel_restore_overlay.anchor_bottom = 1.0
    wheel_restore_overlay.mouse_filter = Control.MOUSE_FILTER_STOP
    wheel_restore_overlay.visible = false
    wheel_restore_overlay.z_index = 93
    add_child(wheel_restore_overlay)

    var panel: = Panel.new()
    panel.name = "WheelRestorePanel"
    panel.position = Vector2(172, 226)
    panel.size = Vector2(656, 212)
    panel.add_theme_stylebox_override("panel", _create_wheel_description_panel_style())
    wheel_restore_overlay.add_child(panel)

    wheel_restore_message_label = Label.new()
    wheel_restore_message_label.position = Vector2(28, 24)
    wheel_restore_message_label.size = Vector2(600, 104)
    wheel_restore_message_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    wheel_restore_message_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    wheel_restore_message_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
    wheel_restore_message_label.text = "ВСЕ ИЗНАЧАЛЬНЫЕ ПУНКТЫ КОЛЕСА ДОБРА ВЕРНУТСЯ. И ЭТО ИЗМЕНЕНИЕ НЕЛЬЗЯ БУДЕТ ОТКАТИТЬ"
    wheel_restore_message_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_restore_message_label.add_theme_font_size_override("font_size", 22)
    panel.add_child(wheel_restore_message_label)

    var button_style: = _create_wheel_description_button_style()
    wheel_restore_cancel_button = Button.new()
    wheel_restore_cancel_button.position = Vector2(140, 156)
    wheel_restore_cancel_button.size = Vector2(156, 32)
    wheel_restore_cancel_button.text = "Отмена"
    wheel_restore_cancel_button.focus_mode = Control.FOCUS_NONE
    wheel_restore_cancel_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    wheel_restore_cancel_button.add_theme_stylebox_override("normal", button_style)
    wheel_restore_cancel_button.add_theme_stylebox_override("pressed", button_style)
    wheel_restore_cancel_button.add_theme_stylebox_override("hover", button_style)
    wheel_restore_cancel_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_restore_cancel_button.add_theme_font_size_override("font_size", 14)
    wheel_restore_cancel_button.pressed.connect(_on_wheel_restore_cancel_pressed)
    panel.add_child(wheel_restore_cancel_button)

    wheel_restore_ok_button = Button.new()
    wheel_restore_ok_button.position = Vector2(314, 156)
    wheel_restore_ok_button.size = Vector2(302, 32)
    wheel_restore_ok_button.text = "ВЕРНУТЬ ВСЕ ПУНКТЫ КОЛЕСА"
    wheel_restore_ok_button.focus_mode = Control.FOCUS_NONE
    wheel_restore_ok_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    wheel_restore_ok_button.add_theme_stylebox_override("normal", button_style)
    wheel_restore_ok_button.add_theme_stylebox_override("pressed", button_style)
    wheel_restore_ok_button.add_theme_stylebox_override("hover", button_style)
    wheel_restore_ok_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_restore_ok_button.add_theme_font_size_override("font_size", 12)
    wheel_restore_ok_button.pressed.connect(_on_wheel_restore_ok_pressed)
    panel.add_child(wheel_restore_ok_button)



func _create_list_preview_popup() -> void :
    list_preview_overlay = Control.new()
    list_preview_overlay.name = "ListPreviewOverlay"
    list_preview_overlay.anchor_right = 1.0
    list_preview_overlay.anchor_bottom = 1.0
    list_preview_overlay.mouse_filter = Control.MOUSE_FILTER_STOP
    list_preview_overlay.visible = false
    list_preview_overlay.z_index = 90
    add_child(list_preview_overlay)

    list_preview_title_label = Label.new()
    list_preview_title_label.position = Vector2(72, 42)
    list_preview_title_label.size = Vector2(880, 50)
    list_preview_title_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    list_preview_title_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    list_preview_title_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    list_preview_title_label.add_theme_font_size_override("font_size", 24)
    list_preview_overlay.add_child(list_preview_title_label)

    var panel: = Panel.new()
    panel.name = "ListPreviewPanel"
    panel.position = Vector2(18, 112)
    panel.size = Vector2(964, 574)
    panel.add_theme_stylebox_override("panel", _create_wheel_description_panel_style())
    list_preview_overlay.add_child(panel)

    list_preview_body_label = RichTextLabel.new()
    list_preview_body_label.position = Vector2(14, 14)
    list_preview_body_label.size = Vector2(936, 494)
    list_preview_body_label.bbcode_enabled = false
    list_preview_body_label.fit_content = false
    list_preview_body_label.scroll_active = true
    list_preview_body_label.selection_enabled = true
    list_preview_body_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
    list_preview_body_label.add_theme_color_override("default_color", Color(0.96, 0.96, 0.98, 1.0))
    list_preview_body_label.add_theme_font_size_override("normal_font_size", 18)
    panel.add_child(list_preview_body_label)

    list_preview_ok_button = Button.new()
    list_preview_ok_button.position = Vector2(794, 526)
    list_preview_ok_button.size = Vector2(156, 32)
    list_preview_ok_button.text = "OK"
    list_preview_ok_button.focus_mode = Control.FOCUS_NONE
    list_preview_ok_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    var button_style: = _create_wheel_description_button_style()
    list_preview_ok_button.add_theme_stylebox_override("normal", button_style)
    list_preview_ok_button.add_theme_stylebox_override("pressed", button_style)
    list_preview_ok_button.add_theme_stylebox_override("hover", button_style)
    list_preview_ok_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    list_preview_ok_button.add_theme_font_size_override("font_size", 14)
    list_preview_ok_button.pressed.connect(_on_list_preview_ok_pressed)
    panel.add_child(list_preview_ok_button)



func _create_extra_list_editor_popup() -> void :
    extra_list_editor_overlay = Control.new()
    extra_list_editor_overlay.name = "ExtraListEditorOverlay"
    extra_list_editor_overlay.anchor_right = 1.0
    extra_list_editor_overlay.anchor_bottom = 1.0
    extra_list_editor_overlay.mouse_filter = Control.MOUSE_FILTER_STOP
    extra_list_editor_overlay.visible = false
    extra_list_editor_overlay.z_index = 91
    add_child(extra_list_editor_overlay)

    extra_list_editor_title_label = Label.new()
    extra_list_editor_title_label.position = Vector2(72, 42)
    extra_list_editor_title_label.size = Vector2(880, 50)
    extra_list_editor_title_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    extra_list_editor_title_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    extra_list_editor_title_label.text = EXTRA_MODE_TITLE
    extra_list_editor_title_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    extra_list_editor_title_label.add_theme_font_size_override("font_size", 24)
    extra_list_editor_overlay.add_child(extra_list_editor_title_label)

    var panel: = Panel.new()
    panel.name = "ExtraListEditorPanel"
    panel.position = Vector2(18, 112)
    panel.size = Vector2(964, 574)
    panel.add_theme_stylebox_override("panel", _create_wheel_description_panel_style())
    extra_list_editor_overlay.add_child(panel)

    extra_list_editor_text_edit = TextEdit.new()
    extra_list_editor_text_edit.position = Vector2(14, 14)
    extra_list_editor_text_edit.size = Vector2(936, 494)
    extra_list_editor_text_edit.wrap_mode = TextEdit.LINE_WRAPPING_NONE
    extra_list_editor_text_edit.scroll_fit_content_height = false
    extra_list_editor_text_edit.scroll_fit_content_width = false
    extra_list_editor_text_edit.add_theme_font_size_override("font_size", 18)
    panel.add_child(extra_list_editor_text_edit)

    var button_style: = _create_wheel_description_button_style()
    extra_list_editor_save_button = Button.new()
    extra_list_editor_save_button.position = Vector2(624, 526)
    extra_list_editor_save_button.size = Vector2(156, 32)
    extra_list_editor_save_button.text = "Сохранить"
    extra_list_editor_save_button.focus_mode = Control.FOCUS_NONE
    extra_list_editor_save_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    extra_list_editor_save_button.add_theme_stylebox_override("normal", button_style)
    extra_list_editor_save_button.add_theme_stylebox_override("pressed", button_style)
    extra_list_editor_save_button.add_theme_stylebox_override("hover", button_style)
    extra_list_editor_save_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    extra_list_editor_save_button.add_theme_font_size_override("font_size", 14)
    extra_list_editor_save_button.pressed.connect(_on_extra_list_editor_save_pressed)
    panel.add_child(extra_list_editor_save_button)

    extra_list_editor_numbers_button = Button.new()
    extra_list_editor_numbers_button.position = Vector2(454, 526)
    extra_list_editor_numbers_button.size = Vector2(156, 32)
    extra_list_editor_numbers_button.text = "Крутить числа"
    extra_list_editor_numbers_button.focus_mode = Control.FOCUS_NONE
    extra_list_editor_numbers_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    extra_list_editor_numbers_button.add_theme_stylebox_override("normal", button_style)
    extra_list_editor_numbers_button.add_theme_stylebox_override("pressed", button_style)
    extra_list_editor_numbers_button.add_theme_stylebox_override("hover", button_style)
    extra_list_editor_numbers_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    extra_list_editor_numbers_button.add_theme_font_size_override("font_size", 14)
    extra_list_editor_numbers_button.pressed.connect(_on_extra_list_editor_numbers_pressed)
    panel.add_child(extra_list_editor_numbers_button)

    extra_list_editor_close_button = Button.new()
    extra_list_editor_close_button.position = Vector2(794, 526)
    extra_list_editor_close_button.size = Vector2(156, 32)
    extra_list_editor_close_button.text = "Закрыть"
    extra_list_editor_close_button.focus_mode = Control.FOCUS_NONE
    extra_list_editor_close_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    extra_list_editor_close_button.add_theme_stylebox_override("normal", button_style)
    extra_list_editor_close_button.add_theme_stylebox_override("pressed", button_style)
    extra_list_editor_close_button.add_theme_stylebox_override("hover", button_style)
    extra_list_editor_close_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    extra_list_editor_close_button.add_theme_font_size_override("font_size", 14)
    extra_list_editor_close_button.pressed.connect(_on_extra_list_editor_close_pressed)
    panel.add_child(extra_list_editor_close_button)

    extra_list_numbers_panel = Panel.new()
    extra_list_numbers_panel.name = "ExtraListNumbersPanel"
    extra_list_numbers_panel.position = Vector2(278, 188)
    extra_list_numbers_panel.size = Vector2(408, 184)
    extra_list_numbers_panel.visible = false
    extra_list_numbers_panel.add_theme_stylebox_override("panel", _create_wheel_description_panel_style())
    extra_list_editor_overlay.add_child(extra_list_numbers_panel)

    var numbers_title: = Label.new()
    numbers_title.position = Vector2(24, 18)
    numbers_title.size = Vector2(360, 32)
    numbers_title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    numbers_title.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    numbers_title.text = "Крутить числа"
    numbers_title.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    numbers_title.add_theme_font_size_override("font_size", 20)
    extra_list_numbers_panel.add_child(numbers_title)

    var from_label: = Label.new()
    from_label.position = Vector2(34, 64)
    from_label.size = Vector2(40, 28)
    from_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    from_label.text = "От"
    from_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    from_label.add_theme_font_size_override("font_size", 18)
    extra_list_numbers_panel.add_child(from_label)

    extra_list_numbers_from_input = LineEdit.new()
    extra_list_numbers_from_input.position = Vector2(76, 60)
    extra_list_numbers_from_input.size = Vector2(122, 32)
    extra_list_numbers_from_input.text_changed.connect(_on_extra_list_numbers_input_changed.bind(extra_list_numbers_from_input))
    extra_list_numbers_panel.add_child(extra_list_numbers_from_input)

    var to_label: = Label.new()
    to_label.position = Vector2(218, 64)
    to_label.size = Vector2(40, 28)
    to_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    to_label.text = "До"
    to_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    to_label.add_theme_font_size_override("font_size", 18)
    extra_list_numbers_panel.add_child(to_label)

    extra_list_numbers_to_input = LineEdit.new()
    extra_list_numbers_to_input.position = Vector2(260, 60)
    extra_list_numbers_to_input.size = Vector2(122, 32)
    extra_list_numbers_to_input.text_changed.connect(_on_extra_list_numbers_input_changed.bind(extra_list_numbers_to_input))
    extra_list_numbers_panel.add_child(extra_list_numbers_to_input)

    extra_list_numbers_apply_button = Button.new()
    extra_list_numbers_apply_button.position = Vector2(170, 128)
    extra_list_numbers_apply_button.size = Vector2(100, 28)
    extra_list_numbers_apply_button.text = "Применить"
    extra_list_numbers_apply_button.focus_mode = Control.FOCUS_NONE
    extra_list_numbers_apply_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    extra_list_numbers_apply_button.add_theme_stylebox_override("normal", button_style)
    extra_list_numbers_apply_button.add_theme_stylebox_override("pressed", button_style)
    extra_list_numbers_apply_button.add_theme_stylebox_override("hover", button_style)
    extra_list_numbers_apply_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    extra_list_numbers_apply_button.add_theme_font_size_override("font_size", 14)
    extra_list_numbers_apply_button.pressed.connect(_on_extra_list_numbers_apply_pressed)
    extra_list_numbers_panel.add_child(extra_list_numbers_apply_button)

    extra_list_numbers_cancel_button = Button.new()
    extra_list_numbers_cancel_button.position = Vector2(282, 128)
    extra_list_numbers_cancel_button.size = Vector2(92, 28)
    extra_list_numbers_cancel_button.text = "Закрыть"
    extra_list_numbers_cancel_button.focus_mode = Control.FOCUS_NONE
    extra_list_numbers_cancel_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    extra_list_numbers_cancel_button.add_theme_stylebox_override("normal", button_style)
    extra_list_numbers_cancel_button.add_theme_stylebox_override("pressed", button_style)
    extra_list_numbers_cancel_button.add_theme_stylebox_override("hover", button_style)
    extra_list_numbers_cancel_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    extra_list_numbers_cancel_button.add_theme_font_size_override("font_size", 14)
    extra_list_numbers_cancel_button.pressed.connect(_hide_extra_list_numbers_popup)
    extra_list_numbers_panel.add_child(extra_list_numbers_cancel_button)



func _create_wheel_description_panel_style() -> StyleBoxFlat:
    var style: = StyleBoxFlat.new()
    style.bg_color = Color(0.12, 0.12, 0.12, 0.96)
    style.border_width_left = 1
    style.border_width_top = 1
    style.border_width_right = 1
    style.border_width_bottom = 1
    style.border_color = Color(0.42, 0.42, 0.42, 1.0)
    return style



func _create_wheel_description_button_style() -> StyleBoxFlat:
    var style: = StyleBoxFlat.new()
    style.bg_color = Color(0.25, 0.25, 0.25, 0.96)
    style.border_width_left = 1
    style.border_width_top = 1
    style.border_width_right = 1
    style.border_width_bottom = 1
    style.border_color = Color(0.45, 0.45, 0.45, 1.0)
    return style



func _load_wheel_descriptions() -> void :
    wheel_descriptions.clear()
    wheel_description_links.clear()
    var text: = _read_text_auto(WHEEL_DESCRIPTION_LIST_PATH)
    if text.is_empty():
        return

    for raw_line in text.split("\n", false):
        var line: = raw_line.strip_edges()
        if line.is_empty():
            continue
        var parts: = line.split("|", false)
        if parts.size() < 2:
            continue
        var title: = parts[0].strip_edges()
        var description_parts: Array[String] = []
        var link_url: = ""
        for index in range(1, parts.size()):
            var part: = parts[index].strip_edges()
            if index == parts.size() - 1 and part.begins_with("lnk="):
                link_url = part.substr(4).strip_edges()
                continue
            description_parts.append(part)
        var description: = "|".join(description_parts).strip_edges()
        if not title.is_empty():
            wheel_descriptions[title] = description
            if not link_url.is_empty():
                wheel_description_links[title] = link_url



func _load_hardcore_descriptions() -> void :
    hardcore_descriptions.clear()
    var text: = _read_text_auto(HARDCORE_DESCRIPTION_LIST_PATH)
    if text.is_empty():
        return

    for raw_line in text.split("\n", false):
        var line: = raw_line.strip_edges()
        if line.is_empty():
            continue
        var separator_index: = line.find("|")
        if separator_index < 0:
            continue
        var title: = line.substr(0, separator_index).strip_edges()
        var description: = line.substr(separator_index + 1).strip_edges()
        if not title.is_empty():
            hardcore_descriptions[title] = description



func _load_lootbox_descriptions() -> void :
    lootbox_descriptions.clear()
    lootbox_description_links.clear()
    var text: = _read_text_auto(LOOTBOX_DESCRIPTION_LIST_PATH)
    if text.is_empty():
        return

    for raw_line in text.split("\n", false):
        var line: = raw_line.strip_edges()
        if line.is_empty():
            continue
        var parts: = line.split("|", false)
        if parts.size() < 2:
            continue
        var title: = parts[0].strip_edges()
        var description_parts: Array[String] = []
        var link_url: = ""
        for index in range(1, parts.size()):
            var part: = parts[index].strip_edges()
            if index == parts.size() - 1 and part.begins_with("lnk="):
                link_url = part.substr(4).strip_edges()
                continue
            description_parts.append(part)
        var description: = "|".join(description_parts).strip_edges()
        if not title.is_empty():
            lootbox_descriptions[title] = description
            if not link_url.is_empty():
                lootbox_description_links[title] = link_url



func _load_wheel_removed_entries() -> PackedStringArray:
    if not FileAccess.file_exists(WHEEL_REMOVED_ENTRIES_PATH):
        return PackedStringArray()
    var text: = _read_text_auto(WHEEL_REMOVED_ENTRIES_PATH)
    if text.is_empty():
        return PackedStringArray()
    var result: = PackedStringArray()
    for raw_line in text.split("\n", false):
        var line: = raw_line.strip_edges()
        if not line.is_empty():
            result.append(line)
    return result



func _load_extra_removed_entries() -> PackedStringArray:
    if not FileAccess.file_exists(EXTRA_REMOVED_ENTRIES_PATH):
        return PackedStringArray()
    var text: = _read_text_auto(EXTRA_REMOVED_ENTRIES_PATH)
    if text.is_empty():
        return PackedStringArray()
    var result: = PackedStringArray()
    for raw_line in text.split("\n", false):
        var line: = raw_line.strip_edges()
        if not line.is_empty():
            result.append(line)
    return result



func _save_wheel_removed_entries(entries: PackedStringArray) -> void :
    var file: = FileAccess.open(WHEEL_REMOVED_ENTRIES_PATH, FileAccess.WRITE)
    if file == null:
        return
    file.store_string("\n".join(entries))
    file.close()



func _save_extra_removed_entries(entries: PackedStringArray) -> void :
    var file: = FileAccess.open(EXTRA_REMOVED_ENTRIES_PATH, FileAccess.WRITE)
    if file == null:
        return
    file.store_string("\n".join(entries))
    file.close()



func _apply_wheel_user_removals(entries: PackedStringArray) -> PackedStringArray:
    var removed_entries: = _load_wheel_removed_entries()
    if removed_entries.is_empty():
        return entries
    var removed_counts: Dictionary = {}
    for removed_entry in removed_entries:
        removed_counts[removed_entry] = int(removed_counts.get(removed_entry, 0)) + 1
    var filtered: = PackedStringArray()
    for entry in entries:
        var remaining: = int(removed_counts.get(entry, 0))
        if remaining > 0:
            removed_counts[entry] = remaining - 1
            continue
        filtered.append(entry)
    return filtered



func _apply_extra_user_removals(entries: PackedStringArray) -> PackedStringArray:
    return entries



func _get_wheel_description(title: String) -> String:
    if wheel_descriptions.is_empty():
        _load_wheel_descriptions()
    if wheel_descriptions.has(title):
        return str(wheel_descriptions[title])
    return ""



func _get_wheel_description_link(title: String) -> String:
    if wheel_descriptions.is_empty() and wheel_description_links.is_empty():
        _load_wheel_descriptions()
    if wheel_description_links.has(title):
        return str(wheel_description_links[title])
    return ""



func _get_hardcore_description(title: String) -> String:
    if hardcore_descriptions.is_empty():
        _load_hardcore_descriptions()
    if hardcore_descriptions.has(title):
        return str(hardcore_descriptions[title])
    return ""



func _get_lootbox_description(title: String) -> String:
    if lootbox_descriptions.is_empty():
        _load_lootbox_descriptions()
    if lootbox_descriptions.has(title):
        return str(lootbox_descriptions[title])
    return ""



func _get_lootbox_description_link(title: String) -> String:
    if lootbox_descriptions.is_empty() and lootbox_description_links.is_empty():
        _load_lootbox_descriptions()
    if lootbox_description_links.has(title):
        return str(lootbox_description_links[title])
    return ""



func _show_wheel_description_for_entry(entry: String, slot_index: int = -1, speak: bool = false, include_title_in_speech: bool = false) -> void :
    var title: = _entry_to_display_text(entry)
    if title.is_empty() or title.begins_with("---"):
        return

    var description: = _get_wheel_description(title)
    var link_url: = _get_wheel_description_link(title)
    if description.is_empty():
        description = "Описание не найдено."
    wheel_description_delete_entry = entry
    wheel_description_delete_slot_index = slot_index
    _show_wheel_description_popup(title, description, link_url, true)

    if speak:
        var speech_text: = description
        if include_title_in_speech:
            speech_text = "%s. %s" % [title, description]
        _queue_tts_text_after_stop_sound(speech_text)



func _show_hardcore_description_for_entry(entry: String, speak: bool = false, include_title_in_speech: bool = false) -> void :
    var title: = _entry_to_display_text(entry)
    if title.is_empty() or title.begins_with("---"):
        return

    var description: = _get_hardcore_description(title)
    if description.is_empty():
        description = "РћРїРёСЃР°РЅРёРµ РЅРµ РЅР°Р№РґРµРЅРѕ."
    wheel_description_delete_entry = ""
    wheel_description_delete_slot_index = -1
    _show_wheel_description_popup(title, description)

    if speak:
        var speech_text: = description
        if include_title_in_speech:
            speech_text = "%s. %s" % [title, description]
        _queue_tts_text_after_stop_sound(speech_text)



func _show_lootbox_description_for_entry(entry: String, speak: bool = false, include_title_in_speech: bool = false) -> void :
    var title: = _entry_to_display_text(entry)
    if title.is_empty() or title.begins_with("---"):
        return

    var description: = _get_lootbox_description(title)
    var link_url: = _get_lootbox_description_link(title)
    if description.is_empty():
        description = "Описание не найдено."
    wheel_description_delete_entry = ""
    wheel_description_delete_slot_index = -1
    _show_wheel_description_popup(title, description, link_url)

    if speak:
        var speech_text: = description
        if include_title_in_speech:
            speech_text = "%s. %s" % [title, description]
        _queue_tts_text_after_stop_sound(speech_text)



func _show_wheel_description_popup(title: String, description: String, link_url: String = "", allow_delete: bool = false) -> void :
    if wheel_description_overlay == null:
        return
    for label in slot_labels:
        label.visible = false
    for image_node in slot_image_nodes:
        image_node.visible = false
    wheel_description_title_label.text = title
    wheel_description_item_label.text = title
    wheel_description_body_label.clear()
    wheel_description_body_label.add_text(description)
    wheel_description_link_url = link_url
    if wheel_description_delete_button != null:
        wheel_description_delete_button.visible = allow_delete and not wheel_description_delete_entry.is_empty()
    if wheel_description_link_button != null:
        wheel_description_link_button.visible = not link_url.is_empty()
    wheel_description_overlay.visible = true
    wheel_description_overlay.move_to_front()



func _hide_wheel_description_popup(stop_tts: bool = true) -> void :
    if wheel_description_overlay != null:
        wheel_description_overlay.visible = false
    wheel_description_link_url = ""
    wheel_description_delete_entry = ""
    wheel_description_delete_slot_index = -1
    if wheel_description_delete_button != null:
        wheel_description_delete_button.visible = false
    if wheel_description_link_button != null:
        wheel_description_link_button.visible = false
    for label in slot_labels:
        label.visible = true
    _render_slots()
    if stop_tts:
        _stop_tts_playback()



func _on_wheel_description_close_pressed() -> void :
    _hide_wheel_description_popup()



func _on_wheel_description_link_pressed() -> void :
    if wheel_description_link_url.is_empty():
        return
    _open_external_url(wheel_description_link_url)



func _show_wheel_info_popup(message: String) -> void :
    if wheel_info_overlay == null or wheel_info_label == null:
        return
    wheel_info_label.text = message
    wheel_info_overlay.visible = true
    wheel_info_overlay.move_to_front()



func _hide_wheel_info_popup() -> void :
    if wheel_info_overlay != null:
        wheel_info_overlay.visible = false



func _on_wheel_info_ok_pressed() -> void :
    _hide_wheel_info_popup()



func _show_wheel_restore_popup() -> void :
    if wheel_restore_overlay == null:
        return
    wheel_restore_overlay.visible = true
    wheel_restore_overlay.move_to_front()



func _hide_wheel_restore_popup() -> void :
    if wheel_restore_overlay != null:
        wheel_restore_overlay.visible = false



func _on_wheel_restore_cancel_pressed() -> void :
    _hide_wheel_restore_popup()



func _on_wheel_restore_ok_pressed() -> void :
    var absolute_removed_path: = ProjectSettings.globalize_path(WHEEL_REMOVED_ENTRIES_PATH)
    if FileAccess.file_exists(WHEEL_REMOVED_ENTRIES_PATH):
        DirAccess.remove_absolute(absolute_removed_path)
    wheel_deleted_visible_slots.clear()
    _hide_wheel_restore_popup()
    if selected_list_path == WHEEL_LIST_PATH:
        _reload_selected_list()
    _refresh_wheel_delete_button()



func _on_wheel_description_delete_pressed() -> void :
    if wheel_description_delete_entry.is_empty():
        return
    if wheel_description_delete_slot_index >= 0 and wheel_deleted_visible_slots.get(wheel_description_delete_slot_index, false):
        _show_wheel_info_popup("Пункт уже удалён")
        return
    var removed_entries: = _load_wheel_removed_entries()
    removed_entries.append(wheel_description_delete_entry)
    _save_wheel_removed_entries(removed_entries)
    if wheel_description_delete_slot_index >= 0:
        wheel_deleted_visible_slots[wheel_description_delete_slot_index] = true
    _hide_wheel_description_popup()
    if selected_list_path == WHEEL_LIST_PATH:
        _reload_selected_list()
    _refresh_wheel_delete_button()



func _delete_extra_center_entry(entry: String, slot_index: int) -> void :
    if entry.is_empty():
        return
    if slot_index >= 0 and extra_deleted_visible_slots.get(slot_index, false):
        return
    var entries: = _read_effective_extra_entries()
    var removed: = false
    for index in range(entries.size()):
        if entries[index] == entry:
            entries.remove_at(index)
            removed = true
            break
    if not removed:
        return
    _save_extra_user_entries(entries)
    if slot_index >= 0:
        extra_deleted_visible_slots[slot_index] = true
    if selected_list_path == EXTRA_LIST_PATH:
        _reload_selected_list()
    if extra_list_editor_overlay != null and extra_list_editor_overlay.visible and extra_list_editor_text_edit != null:
        extra_list_editor_text_edit.text = _build_extra_list_editor_text()
    _refresh_wheel_delete_button()



func _build_list_preview_text(path: String) -> String:
    if path.is_empty():
        return "Список не выбран."
    if not _is_web_runtime() and not _list_text_file_exists(path):
        return "Файл списка не найден."

    var text: = _read_text_auto(path)
    if text.is_empty():
        return "Список пуст или не удалось его прочитать."

    var preview_lines: Array[String] = []
    for raw_line in text.split("\n", false):
        var line: = raw_line.strip_edges()
        if line.is_empty():
            continue
        var display_text: = _entry_to_display_text(line)
        if display_text.is_empty():
            display_text = line
        preview_lines.append(display_text)

    if preview_lines.is_empty():
        return "Список пуст."

    return "\n".join(preview_lines)



func _show_list_preview_popup(list_title: String, list_path: String) -> void :
    if list_preview_overlay == null:
        return
    list_preview_title_label.text = list_title
    list_preview_body_label.clear()
    list_preview_body_label.add_text(_build_list_preview_text(list_path))
    list_preview_body_label.scroll_to_line(0)
    list_preview_overlay.visible = true
    list_preview_overlay.move_to_front()



func _hide_list_preview_popup() -> void :
    if list_preview_overlay != null:
        list_preview_overlay.visible = false



func _on_list_preview_ok_pressed() -> void :
    _hide_list_preview_popup()



func _show_extra_list_editor_popup() -> void :
    if extra_list_editor_overlay == null or extra_list_editor_text_edit == null:
        return
    extra_list_editor_text_edit.text = _build_extra_list_editor_text()
    _hide_extra_list_numbers_popup()
    extra_list_editor_overlay.visible = true
    extra_list_editor_overlay.move_to_front()



func _hide_extra_list_editor_popup() -> void :
    if extra_list_editor_overlay != null:
        extra_list_editor_overlay.visible = false
    _hide_extra_list_numbers_popup()



func _build_extra_list_editor_text() -> String:
    return _read_text_auto(EXTRA_LIST_PATH).replace("\r\n", "\n").replace("\r", "\n")



func _read_effective_extra_entries() -> PackedStringArray:
    var result: = PackedStringArray()
    var text: = _build_extra_list_editor_text()
    for raw_line in text.split("\n", false):
        var line: = raw_line.strip_edges()
        if not line.is_empty():
            result.append(line)
    return result



func _save_extra_user_entries(entries: PackedStringArray) -> void :
    var file: = FileAccess.open(EXTRA_USER_LIST_PATH, FileAccess.WRITE)
    if file == null:
        return
    file.store_string("\n".join(entries))
    file.close()
    if FileAccess.file_exists(EXTRA_REMOVED_ENTRIES_PATH):
        DirAccess.remove_absolute(ProjectSettings.globalize_path(EXTRA_REMOVED_ENTRIES_PATH))



func _on_extra_list_editor_save_pressed() -> void :
    if extra_list_editor_text_edit == null:
        return
    var text: = extra_list_editor_text_edit.text.replace("\r\n", "\n").replace("\r", "\n")
    var entries: = PackedStringArray()
    for raw_line in text.split("\n", false):
        var line: = raw_line.strip_edges()
        if not line.is_empty():
            entries.append(line)
    _save_extra_user_entries(entries)
    if selected_platform == EXTRA_LIST_ID:
        base_games = _load_list(EXTRA_LIST_PATH)
        _apply_letter_digit_filter()
        _reset_roll_slots()
    _hide_extra_list_editor_popup()



func _on_extra_list_editor_numbers_pressed() -> void :
    _show_extra_list_numbers_popup()



func _show_extra_list_numbers_popup() -> void :
    if extra_list_numbers_panel == null:
        return
    if extra_list_numbers_from_input != null:
        extra_list_numbers_from_input.text = ""
        extra_list_numbers_from_input.grab_focus()
    if extra_list_numbers_to_input != null:
        extra_list_numbers_to_input.text = ""
    extra_list_numbers_panel.visible = true
    extra_list_numbers_panel.move_to_front()



func _hide_extra_list_numbers_popup() -> void :
    if extra_list_numbers_panel != null:
        extra_list_numbers_panel.visible = false



func _on_extra_list_numbers_input_changed(_text: String, target_input: LineEdit) -> void :
    if target_input == null:
        return
    var sanitized: = ""
    for character in target_input.text:
        if character >= "0" and character <= "9":
            sanitized += character
    if sanitized.length() > 5:
        sanitized = sanitized.substr(0, 5)
    if not sanitized.is_empty():
        sanitized = str(mini(int(sanitized), 99999))
    if target_input.text != sanitized:
        target_input.text = sanitized
        target_input.caret_column = target_input.text.length()



func _on_extra_list_numbers_apply_pressed() -> void :
    var from_value: = _read_extra_numbers_input_value(extra_list_numbers_from_input)
    var to_value: = _read_extra_numbers_input_value(extra_list_numbers_to_input)
    if from_value > to_value:
        var swap_value: = from_value
        from_value = to_value
        to_value = swap_value

    var generated_lines: Array[String] = []
    for value in range(from_value, to_value + 1):
        generated_lines.append(str(value))
    var generated_text: = "\n".join(generated_lines)

    if extra_list_editor_text_edit != null:
        extra_list_editor_text_edit.text = generated_text
    _save_extra_user_entries(PackedStringArray(generated_lines))
    if selected_platform == EXTRA_LIST_ID:
        base_games = _load_list(EXTRA_LIST_PATH)
        _apply_letter_digit_filter()
        _reset_roll_slots()
    _hide_extra_list_numbers_popup()



func _read_extra_numbers_input_value(target_input: LineEdit) -> int:
    if target_input == null:
        return 0
    var text: = target_input.text.strip_edges()
    if text.is_empty():
        return 0
    return clampi(int(text), 0, 99999)



func _on_extra_list_editor_close_pressed() -> void :
    _hide_extra_list_editor_popup()



func _create_runtime_nodes() -> void :
    roll_timer = Timer.new()
    roll_timer.one_shot = false
    roll_timer.autostart = false
    roll_timer.timeout.connect(_on_roll_timer_timeout)
    add_child(roll_timer)

    finalize_timer = Timer.new()
    finalize_timer.one_shot = false
    finalize_timer.autostart = false
    finalize_timer.timeout.connect(_on_finalize_timer_timeout)
    add_child(finalize_timer)

    delay_timer = Timer.new()
    delay_timer.one_shot = true
    delay_timer.autostart = false
    delay_timer.timeout.connect(_on_delay_timer_timeout)
    add_child(delay_timer)

    ultra_delay_timer = Timer.new()
    ultra_delay_timer.one_shot = true
    ultra_delay_timer.autostart = false
    ultra_delay_timer.timeout.connect(_on_ultra_delay_timer_timeout)
    add_child(ultra_delay_timer)

    ultra_stop_timer = Timer.new()
    ultra_stop_timer.one_shot = true
    ultra_stop_timer.autostart = false
    ultra_stop_timer.timeout.connect(_on_ultra_stop_timer_timeout)
    add_child(ultra_stop_timer)

    tts_timer = Timer.new()
    tts_timer.one_shot = true
    tts_timer.autostart = false
    tts_timer.timeout.connect(_on_tts_timer_timeout)
    add_child(tts_timer)

    audio_player = AudioStreamPlayer.new()
    audio_player.finished.connect(_on_audio_player_finished)
    add_child(audio_player)

    for i in range(slot_labels.size()):
        var texture_node: = TextureRect.new()
        texture_node.mouse_filter = Control.MOUSE_FILTER_IGNORE
        texture_node.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
        texture_node.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
        texture_node.visible = false
        add_child(texture_node)
        slot_image_nodes.append(texture_node)

    var loose_chip_button: = Button.new()
    loose_chip_button.name = "LooseChipButton"
    loose_chip_button.anchor_right = 1.0
    loose_chip_button.anchor_bottom = 1.0
    loose_chip_button.focus_mode = Control.FOCUS_NONE
    loose_chip_button.flat = true
    loose_chip_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    loose_chip_button.pressed.connect(_on_loose_chip_button_pressed)
    loose_chip_left.add_child(loose_chip_button)

    var special_rolls_button: = Button.new()
    special_rolls_button.name = "SpecialRollsButton"
    special_rolls_button.anchor_right = 1.0
    special_rolls_button.anchor_bottom = 1.0
    special_rolls_button.focus_mode = Control.FOCUS_NONE
    special_rolls_button.flat = true
    special_rolls_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    special_rolls_button.pressed.connect(_on_special_rolls_chip_pressed)
    special_rolls_chip.add_child(special_rolls_button)

    var lootbox_button: = Button.new()
    lootbox_button.name = "LootboxButton"
    lootbox_button.anchor_right = 1.0
    lootbox_button.anchor_bottom = 1.0
    lootbox_button.focus_mode = Control.FOCUS_NONE
    lootbox_button.flat = true
    lootbox_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    lootbox_button.pressed.connect(_on_lootbox_chip_pressed)
    lootbox_chip.add_child(lootbox_button)

    if extra_tile != null:
        var extra_tile_button: = Button.new()
        extra_tile_button.name = "ExtraTileButton"
        extra_tile_button.anchor_right = 1.0
        extra_tile_button.anchor_bottom = 1.0
        extra_tile_button.focus_mode = Control.FOCUS_NONE
        extra_tile_button.flat = true
        extra_tile_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
        extra_tile.add_child(extra_tile_button)

    wheel_center_delete_button = TextureButton.new()
    wheel_center_delete_button.name = "WheelCenterDeleteButton"
    wheel_center_delete_button.position = Vector2(370, 530)
    wheel_center_delete_button.size = Vector2(44, 51)
    wheel_center_delete_button.ignore_texture_size = true
    wheel_center_delete_button.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
    wheel_center_delete_button.focus_mode = Control.FOCUS_NONE
    wheel_center_delete_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    wheel_center_delete_button.texture_normal = WHEEL_DELETE_ICON
    wheel_center_delete_button.texture_hover = WHEEL_DELETE_ICON
    wheel_center_delete_button.texture_pressed = WHEEL_DELETE_ICON
    wheel_center_delete_button.texture_disabled = WHEEL_ALREADY_DELETED_ICON
    wheel_center_delete_button.visible = false
    wheel_center_delete_button.pressed.connect(_on_wheel_center_delete_button_pressed)
    add_child(wheel_center_delete_button)

    wheel_restore_button = Button.new()
    wheel_restore_button.name = "WheelRestoreButton"
    wheel_restore_button.position = Vector2(18, 650)
    wheel_restore_button.size = Vector2(170, 32)
    wheel_restore_button.text = "Вернуть Колесо"
    wheel_restore_button.focus_mode = Control.FOCUS_NONE
    wheel_restore_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    var wheel_restore_style: = _create_wheel_description_button_style()
    wheel_restore_button.add_theme_stylebox_override("normal", wheel_restore_style)
    wheel_restore_button.add_theme_stylebox_override("pressed", wheel_restore_style)
    wheel_restore_button.add_theme_stylebox_override("hover", wheel_restore_style)
    wheel_restore_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    wheel_restore_button.add_theme_font_size_override("font_size", 14)
    wheel_restore_button.visible = false
    wheel_restore_button.pressed.connect(_show_wheel_restore_popup)
    add_child(wheel_restore_button)



func _create_settings_menu() -> void :
    settings_panel = Panel.new()
    settings_panel.name = "SettingsPanel"
    settings_panel.position = Vector2.ZERO
    settings_panel.size = Vector2(224, 386)
    settings_panel.visible = false
    settings_panel.z_index = 20
    settings_panel.mouse_filter = Control.MOUSE_FILTER_STOP
    settings_panel.add_theme_stylebox_override("panel", _create_wheel_description_panel_style())
    add_child(settings_panel)

    var settings_item_style: = _create_wheel_description_button_style()
    if sound_mute_button != null:
        sound_mute_button.reparent(settings_panel)
        sound_mute_button.position = Vector2(14, 12)
        sound_mute_button.size = Vector2(196, 26)
        sound_mute_button.flat = false
        sound_mute_button.add_theme_stylebox_override("normal", settings_item_style)
        sound_mute_button.add_theme_stylebox_override("pressed", settings_item_style)
        sound_mute_button.add_theme_stylebox_override("hover", settings_item_style)
    sound_volume_slider = HSlider.new()
    sound_volume_slider.name = "SoundVolumeSlider"
    sound_volume_slider.position = Vector2(14, 44)
    sound_volume_slider.size = Vector2(142, 24)
    sound_volume_slider.min_value = 0.0
    sound_volume_slider.max_value = MAX_SOUND_VOLUME_PERCENT
    sound_volume_slider.step = 1.0
    sound_volume_slider.value = sound_volume_percent
    sound_volume_slider.focus_mode = Control.FOCUS_NONE
    sound_volume_slider.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    sound_volume_slider.value_changed.connect(_on_sound_volume_slider_value_changed)
    settings_panel.add_child(sound_volume_slider)

    sound_volume_label = Label.new()
    sound_volume_label.name = "SoundVolumeLabel"
    sound_volume_label.position = Vector2(162, 44)
    sound_volume_label.size = Vector2(48, 24)
    sound_volume_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT
    sound_volume_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    sound_volume_label.add_theme_font_size_override("font_size", 12)
    settings_panel.add_child(sound_volume_label)

    if tts_button != null:
        tts_button.reparent(settings_panel)
        tts_button.position = Vector2(14, 76)
        tts_button.size = Vector2(196, 26)
        tts_button.flat = false
        tts_button.add_theme_stylebox_override("normal", settings_item_style)
        tts_button.add_theme_stylebox_override("pressed", settings_item_style)
        tts_button.add_theme_stylebox_override("hover", settings_item_style)

    tts_rate_option_button = OptionButton.new()
    tts_rate_option_button.name = "TTSRateOptionButton"
    tts_rate_option_button.position = Vector2(14, 108)
    tts_rate_option_button.size = Vector2(196, 26)
    tts_rate_option_button.focus_mode = Control.FOCUS_NONE
    tts_rate_option_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    tts_rate_option_button.add_theme_stylebox_override("normal", settings_item_style)
    tts_rate_option_button.add_theme_stylebox_override("pressed", settings_item_style)
    tts_rate_option_button.add_theme_stylebox_override("hover", settings_item_style)
    tts_rate_option_button.add_theme_font_size_override("font_size", 14)
    for i in range(TTS_RATE_LABELS.size()):
        tts_rate_option_button.add_item(TTS_RATE_LABELS[i], i)
    tts_rate_option_button.item_selected.connect(_on_tts_rate_item_selected)
    settings_panel.add_child(tts_rate_option_button)

    var background_button: = Button.new()
    background_button.name = "SettingsBackgroundButton"
    background_button.position = Vector2(14, 146)
    background_button.size = Vector2(196, 26)
    background_button.text = "Сменить фон"
    background_button.focus_mode = Control.FOCUS_NONE
    background_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    background_button.add_theme_stylebox_override("normal", settings_item_style)
    background_button.add_theme_stylebox_override("pressed", settings_item_style)
    background_button.add_theme_stylebox_override("hover", settings_item_style)
    background_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    background_button.add_theme_font_size_override("font_size", 14)
    background_button.pressed.connect(_on_settings_background_button_pressed)
    settings_panel.add_child(background_button)

    background_stretch_button = Button.new()
    background_stretch_button.name = "SettingsBackgroundStretchButton"
    background_stretch_button.position = Vector2(14, 178)
    background_stretch_button.size = Vector2(94, 24)
    background_stretch_button.text = "Растянуть"
    background_stretch_button.focus_mode = Control.FOCUS_NONE
    background_stretch_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    background_stretch_button.add_theme_stylebox_override("normal", settings_item_style)
    background_stretch_button.add_theme_stylebox_override("pressed", settings_item_style)
    background_stretch_button.add_theme_stylebox_override("hover", settings_item_style)
    background_stretch_button.add_theme_font_size_override("font_size", 12)
    background_stretch_button.pressed.connect( func() -> void : _set_custom_background_mode(CUSTOM_BACKGROUND_MODE_STRETCH))
    settings_panel.add_child(background_stretch_button)

    background_center_button = Button.new()
    background_center_button.name = "SettingsBackgroundCenterButton"
    background_center_button.position = Vector2(116, 178)
    background_center_button.size = Vector2(94, 24)
    background_center_button.text = "Как есть"
    background_center_button.focus_mode = Control.FOCUS_NONE
    background_center_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    background_center_button.add_theme_stylebox_override("normal", settings_item_style)
    background_center_button.add_theme_stylebox_override("pressed", settings_item_style)
    background_center_button.add_theme_stylebox_override("hover", settings_item_style)
    background_center_button.add_theme_font_size_override("font_size", 12)
    background_center_button.pressed.connect( func() -> void : _set_custom_background_mode(CUSTOM_BACKGROUND_MODE_CENTER))
    settings_panel.add_child(background_center_button)

    var music_button: = Button.new()
    music_button.name = "SettingsMusicButton"
    music_button.position = Vector2(14, 210)
    music_button.size = Vector2(196, 26)
    music_button.text = "Сменить музыку"
    music_button.focus_mode = Control.FOCUS_NONE
    music_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    music_button.add_theme_stylebox_override("normal", settings_item_style)
    music_button.add_theme_stylebox_override("pressed", settings_item_style)
    music_button.add_theme_stylebox_override("hover", settings_item_style)
    music_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    music_button.add_theme_font_size_override("font_size", 14)
    music_button.pressed.connect(_on_settings_music_button_pressed)
    settings_panel.add_child(music_button)

    var reset_button: = Button.new()
    reset_button.name = "SettingsResetButton"
    reset_button.position = Vector2(14, 346)
    reset_button.size = Vector2(196, 26)
    reset_button.text = "Сбросить всё"
    reset_button.focus_mode = Control.FOCUS_NONE
    reset_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    reset_button.add_theme_stylebox_override("normal", settings_item_style)
    reset_button.add_theme_stylebox_override("pressed", settings_item_style)
    reset_button.add_theme_stylebox_override("hover", settings_item_style)
    reset_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    reset_button.add_theme_font_size_override("font_size", 14)
    reset_button.pressed.connect(_on_settings_reset_button_pressed)
    settings_panel.add_child(reset_button)

    var item_color_button: = Button.new()
    item_color_button.name = "SettingsItemColorButton"
    item_color_button.position = Vector2(14, 242)
    item_color_button.size = Vector2(196, 26)
    item_color_button.text = "Цвет пунктов"
    item_color_button.focus_mode = Control.FOCUS_NONE
    item_color_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    item_color_button.add_theme_stylebox_override("normal", settings_item_style)
    item_color_button.add_theme_stylebox_override("pressed", settings_item_style)
    item_color_button.add_theme_stylebox_override("hover", settings_item_style)
    item_color_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    item_color_button.add_theme_font_size_override("font_size", 14)
    item_color_button.pressed.connect(_on_settings_item_color_button_pressed)
    settings_panel.add_child(item_color_button)

    var button_text_color_button: = Button.new()
    button_text_color_button.name = "SettingsButtonTextColorButton"
    button_text_color_button.position = Vector2(14, 274)
    button_text_color_button.size = Vector2(196, 26)
    button_text_color_button.text = "Цвет текста кнопок"
    button_text_color_button.focus_mode = Control.FOCUS_NONE
    button_text_color_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    button_text_color_button.add_theme_stylebox_override("normal", settings_item_style)
    button_text_color_button.add_theme_stylebox_override("pressed", settings_item_style)
    button_text_color_button.add_theme_stylebox_override("hover", settings_item_style)
    button_text_color_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    button_text_color_button.add_theme_font_size_override("font_size", 14)
    button_text_color_button.pressed.connect(_on_settings_button_color_button_pressed)
    settings_panel.add_child(button_text_color_button)

    var button_color_button: = Button.new()
    button_color_button.name = "SettingsButtonColorButton"
    button_color_button.position = Vector2(14, 306)
    button_color_button.size = Vector2(196, 26)
    button_color_button.text = "Цвет кнопок"
    button_color_button.focus_mode = Control.FOCUS_NONE
    button_color_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    button_color_button.add_theme_stylebox_override("normal", settings_item_style)
    button_color_button.add_theme_stylebox_override("pressed", settings_item_style)
    button_color_button.add_theme_stylebox_override("hover", settings_item_style)
    button_color_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    button_color_button.add_theme_font_size_override("font_size", 14)
    button_color_button.pressed.connect(_on_settings_button_fill_color_button_pressed)
    settings_panel.add_child(button_color_button)

    calc_button = TextureButton.new()
    calc_button.name = "CalcMenuButton"
    calc_button.position = Vector2(914, 680)
    calc_button.size = Vector2(32, 32)
    calc_button.z_index = 21
    calc_button.ignore_texture_size = true
    calc_button.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
    calc_button.focus_mode = Control.FOCUS_NONE
    calc_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    calc_button.texture_normal = CALC_BUTTON_ICON
    calc_button.texture_hover = CALC_BUTTON_ICON
    calc_button.texture_pressed = CALC_BUTTON_ICON
    calc_button.pressed.connect(_on_calc_button_pressed)
    add_child(calc_button)

    settings_button = TextureButton.new()
    settings_button.name = "SettingsMenuButton"
    settings_button.position = Vector2(954, 676)
    settings_button.size = Vector2(40, 40)
    settings_button.z_index = 21
    settings_button.ignore_texture_size = true
    settings_button.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
    settings_button.focus_mode = Control.FOCUS_NONE
    settings_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    settings_button.texture_normal = SETTINGS_BUTTON_ICON
    settings_button.texture_hover = SETTINGS_BUTTON_ICON
    settings_button.texture_pressed = SETTINGS_BUTTON_ICON
    settings_button.pressed.connect(_on_settings_button_pressed)
    add_child(settings_button)

    var panel_x: = settings_button.position.x + settings_button.size.x - settings_panel.size.x
    var panel_y: = settings_button.position.y - settings_panel.size.y - 8.0
    settings_panel.position = Vector2(max(8.0, panel_x), max(8.0, panel_y))



func _create_calculator_window() -> void :
    calc_window = Window.new()
    calc_window.name = "CalculatorWindow"
    calc_window.title = "Calculator"
    calc_window.initial_position = Window.WINDOW_INITIAL_POSITION_CENTER_MAIN_WINDOW_SCREEN
    calc_window.size = Vector2i(560, 320)
    calc_window.min_size = Vector2i(560, 320)
    calc_window.unresizable = true
    calc_window.visible = false
    calc_window.close_requested.connect(_on_calc_window_close_requested)
    add_child(calc_window)

    var content_panel: = Panel.new()
    content_panel.anchor_right = 1.0
    content_panel.anchor_bottom = 1.0
    content_panel.mouse_filter = Control.MOUSE_FILTER_STOP
    var calc_panel_style: = StyleBoxFlat.new()
    calc_panel_style.bg_color = Color(0.03, 0.03, 0.03, 0.9)
    calc_panel_style.border_width_left = 1
    calc_panel_style.border_width_top = 1
    calc_panel_style.border_width_right = 1
    calc_panel_style.border_width_bottom = 1
    calc_panel_style.border_color = Color(0.42, 0.42, 0.42, 1.0)
    content_panel.add_theme_stylebox_override("panel", calc_panel_style)
    calc_window.add_child(content_panel)

    var calc_background: = TextureRect.new()
    calc_background.position = Vector2.ZERO
    calc_background.size = Vector2(560, 320)
    calc_background.mouse_filter = Control.MOUSE_FILTER_IGNORE
    calc_background.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
    calc_background.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED
    calc_background.texture = load("res://images/calc_background.webp") as Texture2D
    content_panel.add_child(calc_background)

    var sum_label: = Label.new()
    sum_label.position = Vector2(18, 18)
    sum_label.size = Vector2(120, 34)
    sum_label.text = "Сумма"
    sum_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    sum_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    sum_label.add_theme_font_size_override("font_size", 18)
    content_panel.add_child(sum_label)

    calc_sum_input = LineEdit.new()
    calc_sum_input.position = Vector2(150, 12)
    calc_sum_input.size = Vector2(188, 34)
    content_panel.add_child(calc_sum_input)

    var current_price_label: = Label.new()
    current_price_label.position = Vector2(18, 58)
    current_price_label.size = Vector2(120, 34)
    current_price_label.text = "Текущая цена"
    current_price_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    current_price_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    current_price_label.add_theme_font_size_override("font_size", 18)
    content_panel.add_child(current_price_label)

    calc_current_price_input = LineEdit.new()
    calc_current_price_input.position = Vector2(150, 52)
    calc_current_price_input.size = Vector2(188, 34)
    content_panel.add_child(calc_current_price_input)

    var step_label: = Label.new()
    step_label.position = Vector2(18, 98)
    step_label.size = Vector2(120, 34)
    step_label.text = "Шаг"
    step_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    step_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    step_label.add_theme_font_size_override("font_size", 18)
    content_panel.add_child(step_label)

    calc_step_input = LineEdit.new()
    calc_step_input.position = Vector2(150, 92)
    calc_step_input.size = Vector2(188, 34)
    calc_step_input.text = "300"
    content_panel.add_child(calc_step_input)

    calc_wheels_label = Label.new()
    calc_wheels_label.position = Vector2(18, 136)
    calc_wheels_label.size = Vector2(120, 34)
    calc_wheels_label.text = "Колёс: 0"
    calc_wheels_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    calc_wheels_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    calc_wheels_label.add_theme_font_size_override("font_size", 18)
    content_panel.add_child(calc_wheels_label)

    var calculate_button: = Button.new()
    calculate_button.position = Vector2(150, 136)
    calculate_button.size = Vector2(188, 34)
    calculate_button.text = "Считать"
    calculate_button.focus_mode = Control.FOCUS_NONE
    calculate_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    var calc_button_style: = _create_wheel_description_button_style()
    calculate_button.add_theme_stylebox_override("normal", calc_button_style)
    calculate_button.add_theme_stylebox_override("pressed", calc_button_style)
    calculate_button.add_theme_stylebox_override("hover", calc_button_style)
    calculate_button.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    calculate_button.add_theme_font_size_override("font_size", 18)
    calculate_button.pressed.connect(_on_calc_calculate_pressed)
    content_panel.add_child(calculate_button)

    calc_result_output = TextEdit.new()
    calc_result_output.position = Vector2(340, 12)
    calc_result_output.size = Vector2(206, 292)
    calc_result_output.editable = false
    calc_result_output.wrap_mode = TextEdit.LINE_WRAPPING_BOUNDARY
    var calc_result_style: = StyleBoxFlat.new()
    calc_result_style.bg_color = Color(0.03, 0.035, 0.04, 0.78)
    calc_result_style.border_width_left = 1
    calc_result_style.border_width_top = 1
    calc_result_style.border_width_right = 1
    calc_result_style.border_width_bottom = 1
    calc_result_style.border_color = Color(0.9, 0.9, 0.92, 0.86)
    calc_result_style.corner_radius_top_left = 3
    calc_result_style.corner_radius_top_right = 3
    calc_result_style.corner_radius_bottom_left = 3
    calc_result_style.corner_radius_bottom_right = 3
    calc_result_style.content_margin_left = 8
    calc_result_style.content_margin_top = 6
    calc_result_style.content_margin_right = 8
    calc_result_style.content_margin_bottom = 6
    calc_result_style.shadow_color = Color(0.0, 0.0, 0.0, 0.35)
    calc_result_style.shadow_size = 6
    calc_result_output.add_theme_stylebox_override("normal", calc_result_style)
    calc_result_output.add_theme_stylebox_override("read_only", calc_result_style)
    calc_result_output.add_theme_stylebox_override("focus", calc_result_style)
    calc_result_output.add_theme_color_override("font_color", Color(1.0, 1.0, 1.0, 1.0))
    calc_result_output.add_theme_color_override("font_readonly_color", Color(1.0, 1.0, 1.0, 1.0))
    calc_result_output.add_theme_color_override("font_outline_color", Color(0.0, 0.0, 0.0, 1.0))
    calc_result_output.add_theme_constant_override("outline_size", 2)
    calc_result_output.add_theme_font_size_override("font_size", 16)
    content_panel.add_child(calc_result_output)

    calc_remainder_label = Label.new()
    calc_remainder_label.position = Vector2(18, 278)
    calc_remainder_label.size = Vector2(320, 24)
    calc_remainder_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    calc_remainder_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    calc_remainder_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    calc_remainder_label.add_theme_font_size_override("font_size", 16)
    content_panel.add_child(calc_remainder_label)

    var outlined_controls: Array[Control] = [
        sum_label, 
        calc_sum_input, 
        current_price_label, 
        calc_current_price_input, 
        step_label, 
        calc_step_input, 
        calc_wheels_label, 
        calculate_button, 
        calc_result_output, 
        calc_remainder_label, 
    ]
    for outlined_control in outlined_controls:
        _apply_calculator_text_outline(outlined_control)



func _create_custom_background_controls() -> void :
    if background_rect != null:
        background_image_rect = TextureRect.new()
        background_image_rect.name = "CustomBackgroundImage"
        background_image_rect.anchor_right = 1.0
        background_image_rect.anchor_bottom = 1.0
        background_image_rect.grow_horizontal = Control.GROW_DIRECTION_BOTH
        background_image_rect.grow_vertical = Control.GROW_DIRECTION_BOTH
        background_image_rect.mouse_filter = Control.MOUSE_FILTER_IGNORE
        background_image_rect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
        background_image_rect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED
        background_image_rect.visible = false
        background_rect.add_child(background_image_rect)
        background_rect.move_child(background_image_rect, 0)

    background_file_dialog = FileDialog.new()
    background_file_dialog.name = "BackgroundFileDialog"
    background_file_dialog.use_native_dialog = true
    background_file_dialog.access = FileDialog.ACCESS_FILESYSTEM
    background_file_dialog.file_mode = FileDialog.FILE_MODE_OPEN_FILE
    background_file_dialog.title = "Выбери фон"
    background_file_dialog.filters = PackedStringArray([
        "*.png, *.jpg, *.jpeg, *.webp, *.bmp ; Картинки", 
    ])
    background_file_dialog.file_selected.connect(_on_background_file_selected)
    add_child(background_file_dialog)

    music_file_dialog = FileDialog.new()
    music_file_dialog.name = "MusicFileDialog"
    music_file_dialog.use_native_dialog = true
    music_file_dialog.access = FileDialog.ACCESS_FILESYSTEM
    music_file_dialog.file_mode = FileDialog.FILE_MODE_OPEN_FILE
    music_file_dialog.title = "Выбери музыку прокрута"
    music_file_dialog.filters = PackedStringArray([
        "*.mp3 ; MP3", 
    ])
    music_file_dialog.file_selected.connect(_on_music_file_selected)
    add_child(music_file_dialog)

    item_color_dialog = ConfirmationDialog.new()
    item_color_dialog.name = "ItemColorDialog"
    item_color_dialog.title = "Цвет пунктов"
    item_color_dialog.ok_button_text = "OK"
    item_color_dialog.confirmed.connect(_on_item_color_dialog_confirmed)
    item_color_dialog.min_size = Vector2i(360, 420)
    add_child(item_color_dialog)

    item_color_picker = ColorPicker.new()
    item_color_picker.name = "ItemColorPicker"
    item_color_picker.anchor_right = 1.0
    item_color_picker.anchor_bottom = 1.0
    item_color_picker.offset_left = 12.0
    item_color_picker.offset_top = 12.0
    item_color_picker.offset_right = -12.0
    item_color_picker.offset_bottom = -48.0
    item_color_picker.color = _resolve_roll_main_color()
    item_color_dialog.add_child(item_color_picker)

    button_color_dialog = ConfirmationDialog.new()
    button_color_dialog.name = "ButtonColorDialog"
    button_color_dialog.title = "Цвет текста кнопок"
    button_color_dialog.ok_button_text = "OK"
    button_color_dialog.confirmed.connect(_on_button_color_dialog_confirmed)
    button_color_dialog.min_size = Vector2i(360, 420)
    add_child(button_color_dialog)

    button_color_picker = ColorPicker.new()
    button_color_picker.name = "ButtonColorPicker"
    button_color_picker.anchor_right = 1.0
    button_color_picker.anchor_bottom = 1.0
    button_color_picker.offset_left = 12.0
    button_color_picker.offset_top = 12.0
    button_color_picker.offset_right = -12.0
    button_color_picker.offset_bottom = -48.0
    button_color_picker.color = custom_button_color if custom_button_color_enabled else DEFAULT_UI_BUTTON_TEXT_COLOR
    button_color_dialog.add_child(button_color_picker)

    button_fill_color_dialog = ConfirmationDialog.new()
    button_fill_color_dialog.name = "ButtonFillColorDialog"
    button_fill_color_dialog.title = "Цвет кнопок"
    button_fill_color_dialog.ok_button_text = "OK"
    button_fill_color_dialog.confirmed.connect(_on_button_fill_color_dialog_confirmed)
    button_fill_color_dialog.min_size = Vector2i(360, 420)
    add_child(button_fill_color_dialog)

    button_fill_color_picker = ColorPicker.new()
    button_fill_color_picker.name = "ButtonFillColorPicker"
    button_fill_color_picker.anchor_right = 1.0
    button_fill_color_picker.anchor_bottom = 1.0
    button_fill_color_picker.offset_left = 12.0
    button_fill_color_picker.offset_top = 12.0
    button_fill_color_picker.offset_right = -12.0
    button_fill_color_picker.offset_bottom = -48.0
    button_fill_color_picker.color = custom_button_fill_color if custom_button_fill_color_enabled else _resolve_default_button_fill_color()
    button_fill_color_dialog.add_child(button_fill_color_picker)

    _load_saved_custom_background_mode()
    _load_saved_custom_background()
    _load_saved_custom_roll_music()



func _configure_roll_display() -> void :
    for i in range(slot_labels.size()):
        var label: = slot_labels[i]
        var layout: Dictionary = SLOT_TEXT_LAYOUTS[i]
        label.position = layout["position"]
        label.size = layout["size"]
        label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
        label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
        label.add_theme_font_size_override("font_size", layout["font_size"])
        label.clip_text = false
        label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART

    for i in range(slot_image_nodes.size()):
        var texture_node: = slot_image_nodes[i]
        var size: Vector2 = SLOT_IMAGE_SIZES[i]
        texture_node.position = slot_labels[i].position + (slot_labels[i].size - size) * 0.5
        texture_node.size = size



func _create_slot_click_buttons() -> void :
    for i in range(slot_labels.size()):
        var button: = Button.new()
        button.name = "SlotYoutubeButton%d" % i
        button.position = slot_labels[i].position
        button.size = slot_labels[i].size
        button.flat = true
        button.focus_mode = Control.FOCUS_NONE
        button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
        button.pressed.connect(_on_slot_result_pressed.bind(i))
        button.gui_input.connect(_on_slot_result_input.bind(i))
        add_child(button)
        slot_click_buttons.append(button)



func _create_result_link_buttons() -> void :
    var link_buttons_layer: = get_node_or_null("LinkButtons") as Control
    if link_buttons_layer != null:
        link_buttons_layer.mouse_filter = Control.MOUSE_FILTER_IGNORE
    mobygames_button = _setup_result_link_button(
        "LinkButtons/MobyGamesButton", 
        MOBYGAMES_ICON_PATH, 
        Vector2(718, 536), 
        Vector2(76, 34), 
        _on_mobygames_button_pressed
    )
    gamefaqs_button = _setup_result_link_button(
        "LinkButtons/GameFAQsButton", 
        GAMEFAQS_ICON_PATH, 
        Vector2(780, 520), 
        Vector2(168, 58), 
        _on_gamefaqs_button_pressed
    )









    rggland_button = get_node_or_null("LinkButtons/RGGLandButton") as TextureButton
    if rggland_button != null:
        rggland_button.visible = false
        rggland_button.disabled = true
        rggland_button.mouse_filter = Control.MOUSE_FILTER_IGNORE
    _refresh_result_links_visibility()



func _setup_result_link_button(node_path: String, icon_path: String, fallback_position: Vector2, fallback_size: Vector2, callback: Callable) -> TextureButton:
    var button: = get_node_or_null(node_path) as TextureButton
    if button == null:
        return _create_result_link_button(icon_path, fallback_position, fallback_size, callback)
    button.ignore_texture_size = true
    button.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
    button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    button.focus_mode = Control.FOCUS_NONE
    var texture: = _load_browser_texture(icon_path)
    if texture != null:
        button.texture_normal = texture
        button.texture_pressed = texture
        button.texture_hover = texture
    if not button.pressed.is_connected(callback):
        button.pressed.connect(callback)
    return button



func _create_result_link_button(icon_path: String, position: Vector2, size: Vector2, callback: Callable) -> TextureButton:
    var button: = TextureButton.new()
    button.visible = false
    button.position = position
    button.size = size
    button.ignore_texture_size = true
    button.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
    button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    button.focus_mode = Control.FOCUS_NONE
    button.texture_normal = _load_browser_texture(icon_path)
    button.texture_pressed = button.texture_normal
    button.texture_hover = button.texture_normal
    button.pressed.connect(callback)
    add_child(button)
    return button



func _set_result_links_active(active: bool) -> void :
    result_links_active = active
    _refresh_result_links_visibility()



func _refresh_result_links_visibility() -> void :
    var should_show: = result_links_active and not platform_browser_open and not special_roll_browser_open and not lootbox_browser_open
    if mobygames_button != null:
        mobygames_button.visible = should_show
    if gamefaqs_button != null:
        gamefaqs_button.visible = should_show
    if rggland_button != null:
        rggland_button.visible = false



func _create_platform_browser() -> void :
    platform_browser_backdrop = ColorRect.new()
    platform_browser_backdrop.color = Color(0.12, 0.12, 0.12, 0.0)
    platform_browser_backdrop.mouse_filter = Control.MOUSE_FILTER_IGNORE
    platform_browser_backdrop.anchor_right = 1.0
    platform_browser_backdrop.anchor_bottom = 1.0
    platform_browser_backdrop.visible = false
    add_child(platform_browser_backdrop)

    platform_browser_panel = Panel.new()
    platform_browser_panel.visible = false
    platform_browser_panel.position = Vector2(26, 760)
    platform_browser_panel.size = Vector2(952, 350)
    platform_browser_panel.add_theme_stylebox_override("panel", _create_platform_browser_style())
    add_child(platform_browser_panel)

    platform_browser_grid = GridContainer.new()
    platform_browser_grid.columns = 12
    platform_browser_grid.position = Vector2(6, 12)
    platform_browser_grid.size = Vector2(940, 253)
    platform_browser_grid.add_theme_constant_override("h_separation", 5)
    platform_browser_grid.add_theme_constant_override("v_separation", 5)
    platform_browser_panel.add_child(platform_browser_grid)

    platform_browser_title_label = Label.new()
    platform_browser_title_label.position = Vector2(220, 274)
    platform_browser_title_label.size = Vector2(512, 34)
    platform_browser_title_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    platform_browser_title_label.add_theme_font_size_override("font_size", 18)
    platform_browser_title_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    platform_browser_panel.add_child(platform_browser_title_label)

    platform_browser_count_label = Label.new()
    platform_browser_count_label.position = Vector2(220, 308)
    platform_browser_count_label.size = Vector2(512, 32)
    platform_browser_count_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    platform_browser_count_label.add_theme_font_size_override("font_size", 17)
    platform_browser_count_label.add_theme_color_override("font_color", Color(0.84, 0.88, 0.95, 1.0))
    platform_browser_panel.add_child(platform_browser_count_label)

    platform_browser_close_chip = Control.new()
    platform_browser_close_chip.position = Vector2(196, 282)
    platform_browser_close_chip.size = Vector2(100, 68)
    platform_browser_panel.add_child(platform_browser_close_chip)

    var close_triangle: = Polygon2D.new()
    close_triangle.position = Vector2(50, 28)
    close_triangle.color = Color(0.68, 0.68, 0.68, 1.0)
    close_triangle.polygon = PackedVector2Array([
        Vector2(-50, -28), 
        Vector2(50, -28), 
        Vector2(0, 28), 
    ])
    platform_browser_close_chip.add_child(close_triangle)

    var close_triangle_inner: = Polygon2D.new()
    close_triangle_inner.position = Vector2(50, 28)
    close_triangle_inner.color = Color(0.21, 0.21, 0.21, 1.0)
    close_triangle_inner.polygon = PackedVector2Array([
        Vector2(-38, -17), 
        Vector2(38, -17), 
        Vector2(0, 21), 
    ])
    platform_browser_close_chip.add_child(close_triangle_inner)

    var close_button: = Button.new()
    close_button.anchor_right = 1.0
    close_button.anchor_bottom = 1.0
    close_button.focus_mode = Control.FOCUS_NONE
    close_button.flat = true
    close_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    close_button.pressed.connect(_on_platform_browser_close_pressed)
    platform_browser_close_chip.add_child(close_button)

    _populate_platform_browser_grid()

    _update_platform_browser_selection(selected_list_title)



func _create_special_roll_browser() -> void :
    var special_roll_columns: = 12
    var special_roll_rows: = int(ceil(float(SPECIAL_ROLL_ITEMS.size()) / float(special_roll_columns)))
    var special_roll_grid_height: = special_roll_rows * 81 + maxi(special_roll_rows - 1, 0) * 5
    var special_roll_footer_y: = 12 + special_roll_grid_height + 5
    var special_roll_panel_height: = special_roll_footer_y + 76

    special_roll_browser_backdrop = ColorRect.new()
    special_roll_browser_backdrop.color = Color(0.12, 0.12, 0.12, 0.0)
    special_roll_browser_backdrop.mouse_filter = Control.MOUSE_FILTER_IGNORE
    special_roll_browser_backdrop.anchor_right = 1.0
    special_roll_browser_backdrop.anchor_bottom = 1.0
    special_roll_browser_backdrop.visible = false
    add_child(special_roll_browser_backdrop)

    special_roll_browser_panel = Panel.new()
    special_roll_browser_panel.visible = false
    special_roll_browser_panel.position = Vector2(26, 760)
    special_roll_browser_panel.size = Vector2(952, special_roll_panel_height)
    special_roll_browser_panel.add_theme_stylebox_override("panel", _create_platform_browser_style())
    add_child(special_roll_browser_panel)

    special_roll_browser_grid = GridContainer.new()
    special_roll_browser_grid.columns = special_roll_columns
    special_roll_browser_grid.position = Vector2(6, 12)
    special_roll_browser_grid.size = Vector2(940, special_roll_grid_height)
    special_roll_browser_grid.add_theme_constant_override("h_separation", 5)
    special_roll_browser_grid.add_theme_constant_override("v_separation", 5)
    special_roll_browser_panel.add_child(special_roll_browser_grid)

    special_roll_browser_title_label = Label.new()
    special_roll_browser_title_label.position = Vector2(250, special_roll_footer_y)
    special_roll_browser_title_label.size = Vector2(452, 32)
    special_roll_browser_title_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    special_roll_browser_title_label.add_theme_font_size_override("font_size", 18)
    special_roll_browser_title_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    special_roll_browser_panel.add_child(special_roll_browser_title_label)

    special_roll_browser_count_label = Label.new()
    special_roll_browser_count_label.position = Vector2(250, special_roll_footer_y + 36)
    special_roll_browser_count_label.size = Vector2(452, 30)
    special_roll_browser_count_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    special_roll_browser_count_label.add_theme_font_size_override("font_size", 17)
    special_roll_browser_count_label.add_theme_color_override("font_color", Color(0.84, 0.88, 0.95, 1.0))
    special_roll_browser_panel.add_child(special_roll_browser_count_label)

    special_roll_browser_close_chip = Control.new()
    special_roll_browser_close_chip.position = Vector2(700, special_roll_footer_y - 4)
    special_roll_browser_close_chip.size = Vector2(100, 68)
    special_roll_browser_panel.add_child(special_roll_browser_close_chip)

    var close_triangle: = Polygon2D.new()
    close_triangle.position = Vector2(50, 28)
    close_triangle.color = Color(0.68, 0.68, 0.68, 1.0)
    close_triangle.polygon = PackedVector2Array([
        Vector2(-50, -28), 
        Vector2(50, -28), 
        Vector2(0, 28), 
    ])
    special_roll_browser_close_chip.add_child(close_triangle)

    var close_triangle_inner: = Polygon2D.new()
    close_triangle_inner.position = Vector2(50, 28)
    close_triangle_inner.color = Color(0.21, 0.21, 0.21, 1.0)
    close_triangle_inner.polygon = PackedVector2Array([
        Vector2(-38, -17), 
        Vector2(38, -17), 
        Vector2(0, 21), 
    ])
    special_roll_browser_close_chip.add_child(close_triangle_inner)

    var close_button: = Button.new()
    close_button.anchor_right = 1.0
    close_button.anchor_bottom = 1.0
    close_button.focus_mode = Control.FOCUS_NONE
    close_button.flat = true
    close_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    close_button.pressed.connect(_on_special_roll_browser_close_pressed)
    special_roll_browser_close_chip.add_child(close_button)

    _populate_special_roll_browser_grid()

    _update_special_roll_selection(selected_list_title)



func _populate_special_roll_browser_grid() -> void :
    var columns: int = special_roll_browser_grid.columns
    var total_items: int = SPECIAL_ROLL_ITEMS.size()
    var last_row_items: int = total_items % columns
    var centered_last_row: HBoxContainer = null
    var centered_last_row_start: int = total_items
    if last_row_items > 0:
        centered_last_row_start = total_items - last_row_items
        centered_last_row = HBoxContainer.new()
        centered_last_row.alignment = BoxContainer.ALIGNMENT_CENTER
        centered_last_row.position = Vector2(6, 12 + int(centered_last_row_start / columns) * 86)
        centered_last_row.size = Vector2(940, 81)
        centered_last_row.add_theme_constant_override("separation", 5)
        special_roll_browser_panel.add_child(centered_last_row)

    for item_index in range(total_items):
        var item: Dictionary = SPECIAL_ROLL_ITEMS[item_index]
        var item_title: String = item["title"]
        var tile: = _create_special_roll_tile(item)
        if centered_last_row != null and item_index >= centered_last_row_start:
            centered_last_row.add_child(tile)
        else:
            special_roll_browser_grid.add_child(tile)
        special_roll_buttons[item_title] = tile



func _create_lootbox_browser() -> void :
    lootbox_browser_backdrop = ColorRect.new()
    lootbox_browser_backdrop.color = Color(0.12, 0.12, 0.12, 0.0)
    lootbox_browser_backdrop.mouse_filter = Control.MOUSE_FILTER_IGNORE
    lootbox_browser_backdrop.anchor_right = 1.0
    lootbox_browser_backdrop.anchor_bottom = 1.0
    lootbox_browser_backdrop.visible = false
    add_child(lootbox_browser_backdrop)

    lootbox_browser_panel = Panel.new()
    lootbox_browser_panel.visible = false
    lootbox_browser_panel.position = Vector2(26, 760)
    lootbox_browser_panel.size = Vector2(952, 430)
    lootbox_browser_panel.add_theme_stylebox_override("panel", _create_platform_browser_style())
    add_child(lootbox_browser_panel)

    lootbox_browser_grid = GridContainer.new()
    lootbox_browser_grid.columns = 9
    lootbox_browser_grid.position = Vector2(43, 12)
    lootbox_browser_grid.size = Vector2(866, 350)
    lootbox_browser_grid.add_theme_constant_override("h_separation", 7)
    lootbox_browser_grid.add_theme_constant_override("v_separation", 7)
    lootbox_browser_panel.add_child(lootbox_browser_grid)

    lootbox_browser_title_label = Label.new()
    lootbox_browser_title_label.position = Vector2(250, 362)
    lootbox_browser_title_label.size = Vector2(452, 34)
    lootbox_browser_title_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    lootbox_browser_title_label.add_theme_font_size_override("font_size", 18)
    lootbox_browser_title_label.add_theme_color_override("font_color", Color(0.96, 0.96, 0.98, 1.0))
    lootbox_browser_panel.add_child(lootbox_browser_title_label)

    lootbox_browser_count_label = Label.new()
    lootbox_browser_count_label.position = Vector2(250, 394)
    lootbox_browser_count_label.size = Vector2(452, 30)
    lootbox_browser_count_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    lootbox_browser_count_label.add_theme_font_size_override("font_size", 17)
    lootbox_browser_count_label.add_theme_color_override("font_color", Color(0.84, 0.88, 0.95, 1.0))
    lootbox_browser_panel.add_child(lootbox_browser_count_label)

    lootbox_browser_close_chip = Control.new()
    lootbox_browser_close_chip.position = Vector2(720, 358)
    lootbox_browser_close_chip.size = Vector2(100, 68)
    lootbox_browser_panel.add_child(lootbox_browser_close_chip)

    var close_triangle: = Polygon2D.new()
    close_triangle.position = Vector2(50, 28)
    close_triangle.color = Color(0.68, 0.68, 0.68, 1.0)
    close_triangle.polygon = PackedVector2Array([
        Vector2(-50, -28), 
        Vector2(50, -28), 
        Vector2(0, 28), 
    ])
    lootbox_browser_close_chip.add_child(close_triangle)

    var close_triangle_inner: = Polygon2D.new()
    close_triangle_inner.position = Vector2(50, 28)
    close_triangle_inner.color = Color(0.21, 0.21, 0.21, 1.0)
    close_triangle_inner.polygon = PackedVector2Array([
        Vector2(-38, -17), 
        Vector2(38, -17), 
        Vector2(0, 21), 
    ])
    lootbox_browser_close_chip.add_child(close_triangle_inner)

    var close_button: = Button.new()
    close_button.anchor_right = 1.0
    close_button.anchor_bottom = 1.0
    close_button.focus_mode = Control.FOCUS_NONE
    close_button.flat = true
    close_button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    close_button.pressed.connect(_on_lootbox_browser_close_pressed)
    lootbox_browser_close_chip.add_child(close_button)

    _populate_lootbox_browser_grid()
    _update_lootbox_selection(selected_list_title)



func _create_platform_browser_style() -> StyleBoxFlat:
    var style: = StyleBoxFlat.new()
    style.bg_color = Color(0.18, 0.18, 0.18, 0.95)
    style.border_width_left = 1
    style.border_width_top = 1
    style.border_width_right = 1
    style.border_width_bottom = 1
    style.border_color = Color(0.34, 0.34, 0.34, 1.0)
    return style



func _scaled_browser_rect(base_position: Vector2, base_size: Vector2) -> Rect2:
    var center: = base_position + base_size * 0.5
    var scaled_size: = base_size * BROWSER_ICON_SCALE
    return Rect2(center - scaled_size * 0.5 + Vector2(0, BROWSER_ICON_DROP), scaled_size)



func _resolve_special_roll_path(item_id: String, item_path: String) -> String:
    if item_id == "items":
        return HARDCORE_LIST_PATH
    return item_path



func _create_special_roll_tile(item: Dictionary) -> Panel:
    var item_id: String = item["id"]
    var item_title: String = item["title"]
    var item_path: String = _resolve_special_roll_path(item_id, str(item["path"]))
    var item_icon_path: String = str(SPECIAL_ROLL_ICON_PATHS.get(item_id, ""))
    var use_full_text_icon: = item_id == "73"
    var use_full_image_icon: = item_id == "metroidvania" or item_id == "nintendo" or item_id == "capcom" or item_id == "2007" or item_id == "migorei" or item_id == "rggland"
    var tile: = Panel.new()
    tile.custom_minimum_size = Vector2(74, 81)
    tile.add_theme_stylebox_override("panel", bag_tile_default_style)

    var icon_texture: = _load_browser_texture(item_icon_path)
    if use_full_text_icon:
        var icon_large: = Label.new()
        icon_large.name = "TileIconLabel"
        icon_large.position = Vector2.ZERO
        icon_large.size = Vector2(74, 81)
        icon_large.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
        icon_large.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
        icon_large.add_theme_font_size_override("font_size", 54)
        icon_large.add_theme_color_override("font_color", Color(0.9, 0.9, 0.94, 1.0))
        icon_large.text = item_title
        tile.add_child(icon_large)
    elif icon_texture != null:
        var icon_rect: = Rect2()
        if use_full_image_icon:
            icon_rect = Rect2(Vector2(4, 5), Vector2(66, 68))
        else:
            icon_rect = _scaled_browser_rect(Vector2(8, 6), Vector2(58, 24))
        var icon_sprite: = TextureRect.new()
        icon_sprite.position = icon_rect.position
        icon_sprite.size = icon_rect.size
        icon_sprite.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
        icon_sprite.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
        icon_sprite.texture = icon_texture
        tile.add_child(icon_sprite)
    else:
        var icon_rect: = _scaled_browser_rect(Vector2(10, 7), Vector2(54, 24))
        var icon: = Label.new()
        icon.name = "TileIconLabel"
        icon.position = icon_rect.position
        icon.size = icon_rect.size
        icon.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
        icon.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
        icon.add_theme_font_size_override("font_size", 27)
        icon.add_theme_color_override("font_color", Color(0.9, 0.9, 0.94, 1.0))
        icon.text = _special_roll_icon_text(item_title)
        tile.add_child(icon)

    if not use_full_text_icon and not use_full_image_icon:
        var title: = Label.new()
        title.name = "TileTitleLabel"
        title.position = Vector2(4, 41)
        title.size = Vector2(66, 36)
        title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
        title.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
        title.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
        title.add_theme_font_size_override("font_size", 10)
        title.add_theme_color_override("font_color", Color(0.92, 0.92, 0.96, 1.0))
        title.text = item_title
        tile.add_child(title)

    var button: = Button.new()
    button.anchor_right = 1.0
    button.anchor_bottom = 1.0
    button.focus_mode = Control.FOCUS_NONE
    button.flat = true
    button.tooltip_text = str(item.get("tooltip", ""))
    button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    button.pressed.connect(_on_special_roll_item_pressed.bind(item_id, item_title, item_path))
    button.gui_input.connect(_on_list_preview_input.bind(item_title, item_path))
    tile.add_child(button)

    return tile



func _special_roll_icon_text(title: String) -> String:
    var cleaned: = title.replace("'", "").replace("-", " ").replace("+", " ").split(" ", false)
    var chars: = ""
    for word in cleaned:
        if chars.length() >= 2:
            break
        chars += word.left(1).to_upper()
    return chars if not chars.is_empty() else "?"



func _create_lootbox_tile(item: Dictionary) -> Panel:
    var item_id: String = item["id"]
    var item_title: String = item["title"]
    var item_path: String = item["path"]
    var item_icon_path: String = str(LOOTBOX_ICON_PATHS.get(item_id, ""))
    var tile: = Panel.new()
    tile.custom_minimum_size = Vector2(90, 81)
    tile.add_theme_stylebox_override("panel", bag_tile_default_style)

    var icon_texture: = _load_browser_texture(item_icon_path)
    if icon_texture != null:
        var icon_rect: = _scaled_browser_rect(Vector2(12, 6), Vector2(66, 24))
        var icon_sprite: = TextureRect.new()
        icon_sprite.position = icon_rect.position
        icon_sprite.size = icon_rect.size
        icon_sprite.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
        icon_sprite.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
        icon_sprite.texture = icon_texture
        tile.add_child(icon_sprite)
    else:
        var icon_rect: = _scaled_browser_rect(Vector2(14, 7), Vector2(62, 24))
        var icon: = Label.new()
        icon.name = "TileIconLabel"
        icon.position = icon_rect.position
        icon.size = icon_rect.size
        icon.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
        icon.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
        icon.add_theme_font_size_override("font_size", 27)
        icon.add_theme_color_override("font_color", Color(0.9, 0.9, 0.94, 1.0))
        icon.text = _lootbox_icon_text(item_title)
        tile.add_child(icon)

    var title: = Label.new()
    title.name = "TileTitleLabel"
    title.position = Vector2(4, 41)
    title.size = Vector2(82, 36)
    title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    title.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    title.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
    title.add_theme_font_size_override("font_size", 10)
    title.add_theme_color_override("font_color", Color(0.92, 0.92, 0.96, 1.0))
    title.text = item_title
    tile.add_child(title)

    var button: = Button.new()
    button.anchor_right = 1.0
    button.anchor_bottom = 1.0
    button.focus_mode = Control.FOCUS_NONE
    button.flat = true
    button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    button.pressed.connect(_on_lootbox_item_pressed.bind(item_id, item_title, item_path))
    button.gui_input.connect(_on_list_preview_input.bind(item_title, item_path))
    tile.add_child(button)

    return tile



func _lootbox_icon_text(title: String) -> String:
    var cleaned: = title.replace("-", " ").split(" ", false)
    var chars: = ""
    for word in cleaned:
        if chars.length() >= 2:
            break
        chars += word.left(1).to_upper()
    return chars if not chars.is_empty() else "?"



func _populate_platform_browser_grid() -> void :
    var item_map: Dictionary = {}
    for item in PLATFORM_BROWSER_ITEMS:
        var item_title: String = item["title"]
        item_map[item_title] = item

    var row1_titles: Array[String] = [
        "Famicom / NES", 
        "Sega Master System", 
        "TurboGrafx", 
        "MegaDrive / Genesis", 
        "GameBoy / Color", 
        "GameGear", 
        "Super Famicom / SNES", 
        "Panasonic 3DO", 
        "Sega Saturn", 
        "PS1", 
        "Virtual Boy", 
        "Nintendo 64",
    ]
    var row2_titles: Array[String] = [
        "NeoGeo Pocket", 
        "Dreamcast", 
        "Wonder Swan", 
        "PS2", 
        "Gamecube", 
        "Xbox", 
        "GBA", 
        "Nintendo DS", 
        "PSP", 
        "PS3", 
        "Wii", 
        "Nintendo 3DS", 
    ]
    var row3_titles: Array[String] = [
        "Wii U",
        "ZX Spectrum", 
        "Commodore 64", 
        "MSX / MSX 2", 
        "Amstrad CPC", 
        "Commodore Amiga", 
        "Sharp X68000", 
        "DOS", 
        "Windows", 
        "ATARI", 
        "Java", 
        "Steam", 
    ]

    _add_platform_browser_row(item_map, row1_titles)
    _add_platform_browser_row(item_map, row2_titles)
    _add_platform_browser_row(item_map, row3_titles)



func _add_platform_browser_row(item_map: Dictionary, titles: Array[String]) -> void :
    for title in titles:
        if not item_map.has(title):
            platform_browser_grid.add_child(_create_platform_browser_spacer())
            continue
        var item: Dictionary = item_map[title]
        var tile: = _create_platform_browser_tile(item)
        platform_browser_grid.add_child(tile)
        platform_browser_buttons[title] = tile



func _create_platform_browser_spacer() -> Control:
    var spacer: = Control.new()
    spacer.custom_minimum_size = Vector2(74, 81)
    spacer.mouse_filter = Control.MOUSE_FILTER_IGNORE
    return spacer



func _populate_lootbox_browser_grid() -> void :
    var item_map: Dictionary = {}
    for item in LOOTBOX_ITEMS:
        var item_title: String = item["title"]
        item_map[item_title] = item

    var row1_titles: Array[String] = [
        "Бомбы", 
        "Гремлины", 
        "Живые", 
        "Крутые", 
        "Съедобные", 
        "Оружия", 
        "Предметы", 
        "Кубики", 
        "Крысы", 
    ]
    var row2_titles: Array[String] = [
        "Эпик", 
        "Легендарный", 
        "Мифический", 
        "Зелья", 
        "Монетки", 
        "Золото", 
        "Колеса", 
    ]
    var row3_titles: Array[String] = [
        "Моды", 
        "Рулетка", 
        "Спец роллы", 
    ]
    var row4_titles: Array[String] = [
        "Эффекты", 
    ]

    _add_lootbox_row(item_map, row1_titles, 0)
    _add_lootbox_row(item_map, row2_titles, 1)
    _add_lootbox_row(item_map, row3_titles, 3)
    _add_lootbox_row(item_map, row4_titles, 4)



func _add_lootbox_row(item_map: Dictionary, titles: Array[String], left_padding: int) -> void :
    for _i in range(left_padding):
        lootbox_browser_grid.add_child(_create_lootbox_spacer())

    for title in titles:
        if not item_map.has(title):
            lootbox_browser_grid.add_child(_create_lootbox_spacer())
            continue
        var item: Dictionary = item_map[title]
        var tile: = _create_lootbox_tile(item)
        lootbox_browser_grid.add_child(tile)
        lootbox_buttons[title] = tile

    var remainder: = 9 - left_padding - titles.size()
    for _i in range(maxi(remainder, 0)):
        lootbox_browser_grid.add_child(_create_lootbox_spacer())



func _create_lootbox_spacer() -> Control:
    var spacer: = Control.new()
    spacer.custom_minimum_size = Vector2(90, 81)
    spacer.mouse_filter = Control.MOUSE_FILTER_IGNORE
    return spacer



func _create_platform_browser_tile(item: Dictionary) -> Panel:
    var item_id: String = item["id"]
    var item_title: String = item["title"]
    var item_path: String = item["path"]
    var item_icon_path: String = item.get("icon_path", "")
    var use_full_icon: = item_title == "ATARI" or item_title == "Java"
    var tile: = Panel.new()
    tile.custom_minimum_size = Vector2(74, 81)
    tile.add_theme_stylebox_override("panel", bag_tile_default_style)

    var icon_texture: = _load_browser_texture(item_icon_path)
    if icon_texture != null:
        var icon_rect: = Rect2()
        if use_full_icon:
            icon_rect = Rect2(Vector2(1, 7), Vector2(72, 72))
        else:
            icon_rect = _scaled_browser_rect(Vector2(10, 6), Vector2(54, 24))
        var icon_sprite: = TextureRect.new()
        icon_sprite.position = icon_rect.position
        icon_sprite.size = icon_rect.size
        icon_sprite.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
        icon_sprite.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
        icon_sprite.texture = icon_texture
        tile.add_child(icon_sprite)
    else:
        var icon_rect: = _scaled_browser_rect(Vector2(10, 7), Vector2(54, 24))
        var icon: = Label.new()
        icon.name = "TileIconLabel"
        icon.position = icon_rect.position
        icon.size = icon_rect.size
        icon.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
        icon.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
        icon.add_theme_font_size_override("font_size", 27)
        icon.add_theme_color_override("font_color", Color(0.9, 0.9, 0.94, 1.0))
        icon.text = _platform_icon_text(item_title)
        tile.add_child(icon)

    if not use_full_icon:
        var title: = Label.new()
        title.name = "TileTitleLabel"
        title.position = Vector2(4, 41)
        title.size = Vector2(66, 36)
        title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
        title.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
        title.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
        title.add_theme_font_size_override("font_size", 10)
        title.add_theme_color_override("font_color", Color(0.92, 0.92, 0.96, 1.0))
        title.text = item_title
        tile.add_child(title)

    var button: = Button.new()
    button.anchor_right = 1.0
    button.anchor_bottom = 1.0
    button.focus_mode = Control.FOCUS_NONE
    button.flat = true
    button.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
    button.pressed.connect(_on_platform_browser_item_pressed.bind(item_id, item_title, item_path))
    button.gui_input.connect(_on_list_preview_input.bind(item_title, item_path))
    tile.add_child(button)

    return tile



func _platform_icon_text(title: String) -> String:
    var words: = title.replace("/", " ").replace("-", " ").split(" ", false)
    var chars: = ""
    for word in words:
        if chars.length() >= 2:
            break
        chars += word.left(1).to_upper()
    return chars if not chars.is_empty() else "?"



func _load_browser_texture(path: String) -> Texture2D:
    if path.is_empty():
        return null
    if not ResourceLoader.exists(path):
        return null
    return load(path) as Texture2D



func _toggle_platform_browser(force_state: int = -1) -> void :
    var should_open: = not platform_browser_open
    if force_state == 0:
        should_open = false
    elif force_state == 1:
        should_open = true
    if should_open == platform_browser_open:
        return
    if should_open and special_roll_browser_open:
        _toggle_special_roll_browser(0)

    platform_browser_open = should_open

    if platform_browser_tween != null:
        platform_browser_tween.kill()

    if should_open:
        _apply_platform_browser_layout(true)
        platform_browser_backdrop.visible = true
        platform_browser_panel.visible = true
        platform_browser_panel.position = Vector2(26, 760)
        platform_browser_tween = create_tween()
        platform_browser_tween.set_parallel(true)
        platform_browser_tween.tween_property(platform_browser_backdrop, "color", Color(0.12, 0.12, 0.12, 0.28), PLATFORM_BROWSER_TOGGLE_WAIT)
        platform_browser_tween.tween_property(platform_browser_panel, "position", Vector2(26, 300), PLATFORM_BROWSER_TOGGLE_WAIT)
        return

    platform_browser_tween = create_tween()
    platform_browser_tween.set_parallel(true)
    platform_browser_tween.tween_property(platform_browser_backdrop, "color", Color(0.12, 0.12, 0.12, 0.0), PLATFORM_BROWSER_TOGGLE_WAIT)
    platform_browser_tween.tween_property(platform_browser_panel, "position", Vector2(26, 760), PLATFORM_BROWSER_TOGGLE_WAIT)
    platform_browser_tween.finished.connect(_finish_platform_browser_close)



func _toggle_special_roll_browser(force_state: int = -1) -> void :
    var should_open: = not special_roll_browser_open
    if force_state == 0:
        should_open = false
    elif force_state == 1:
        should_open = true
    if should_open == special_roll_browser_open:
        return
    if should_open and platform_browser_open:
        _toggle_platform_browser(0)
    if should_open and lootbox_browser_open:
        _toggle_lootbox_browser(0)

    special_roll_browser_open = should_open

    if special_roll_browser_tween != null:
        special_roll_browser_tween.kill()

    if should_open:
        _apply_special_roll_browser_layout(true)
        special_roll_browser_backdrop.visible = true
        special_roll_browser_panel.visible = true
        special_roll_browser_panel.position = Vector2(26, 760)
        var open_y: = maxf(8.0, get_viewport_rect().size.y - special_roll_browser_panel.size.y + 2.0)
        special_roll_browser_tween = create_tween()
        special_roll_browser_tween.set_parallel(true)
        special_roll_browser_tween.tween_property(special_roll_browser_backdrop, "color", Color(0.12, 0.12, 0.12, 0.28), SPECIAL_ROLL_BROWSER_TOGGLE_WAIT)
        special_roll_browser_tween.tween_property(special_roll_browser_panel, "position", Vector2(26, open_y), SPECIAL_ROLL_BROWSER_TOGGLE_WAIT)
        return

    special_roll_browser_tween = create_tween()
    special_roll_browser_tween.set_parallel(true)
    special_roll_browser_tween.tween_property(special_roll_browser_backdrop, "color", Color(0.12, 0.12, 0.12, 0.0), SPECIAL_ROLL_BROWSER_TOGGLE_WAIT)
    special_roll_browser_tween.tween_property(special_roll_browser_panel, "position", Vector2(26, 760), SPECIAL_ROLL_BROWSER_TOGGLE_WAIT)
    special_roll_browser_tween.finished.connect(_finish_special_roll_browser_close)



func _toggle_lootbox_browser(force_state: int = -1) -> void :
    var should_open: = not lootbox_browser_open
    if force_state == 0:
        should_open = false
    elif force_state == 1:
        should_open = true
    if should_open == lootbox_browser_open:
        return
    if should_open and platform_browser_open:
        _toggle_platform_browser(0)
    if should_open and special_roll_browser_open:
        _toggle_special_roll_browser(0)

    lootbox_browser_open = should_open

    if lootbox_browser_tween != null:
        lootbox_browser_tween.kill()

    if should_open:
        _apply_lootbox_browser_layout(true)
        lootbox_browser_backdrop.visible = true
        lootbox_browser_panel.visible = true
        lootbox_browser_panel.position = Vector2(26, 760)
        lootbox_browser_tween = create_tween()
        lootbox_browser_tween.set_parallel(true)
        lootbox_browser_tween.tween_property(lootbox_browser_backdrop, "color", Color(0.12, 0.12, 0.12, 0.28), LOOTBOX_BROWSER_TOGGLE_WAIT)
        lootbox_browser_tween.tween_property(lootbox_browser_panel, "position", Vector2(26, 300), LOOTBOX_BROWSER_TOGGLE_WAIT)
        return

    lootbox_browser_tween = create_tween()
    lootbox_browser_tween.set_parallel(true)
    lootbox_browser_tween.tween_property(lootbox_browser_backdrop, "color", Color(0.12, 0.12, 0.12, 0.0), LOOTBOX_BROWSER_TOGGLE_WAIT)
    lootbox_browser_tween.tween_property(lootbox_browser_panel, "position", Vector2(26, 760), LOOTBOX_BROWSER_TOGGLE_WAIT)
    lootbox_browser_tween.finished.connect(_finish_lootbox_browser_close)



func _apply_platform_browser_layout(is_open: bool) -> void :
    roll_button.visible = not is_open
    letter_input.visible = not is_open
    digits_checkbox.visible = not is_open
    ultra_button.visible = not is_open
    if is_open:
        _set_settings_menu_open(false)
    else:
        _refresh_settings_menu_visibility()
    selected_list_label.visible = not is_open
    list_count_label.visible = not is_open
    bottom_placeholder_1.visible = not is_open
    bottom_placeholder_2.visible = not is_open
    bottom_bar.visible = not is_open
    _refresh_result_links_visibility()



func _apply_special_roll_browser_layout(is_open: bool) -> void :
    roll_button.visible = not is_open
    letter_input.visible = not is_open
    digits_checkbox.visible = not is_open
    ultra_button.visible = not is_open
    if is_open:
        _set_settings_menu_open(false)
    else:
        _refresh_settings_menu_visibility()
    selected_list_label.visible = not is_open
    list_count_label.visible = not is_open
    bottom_placeholder_1.visible = not is_open
    bottom_placeholder_2.visible = not is_open
    bottom_bar.visible = not is_open
    _refresh_result_links_visibility()



func _apply_lootbox_browser_layout(is_open: bool) -> void :
    roll_button.visible = not is_open
    letter_input.visible = not is_open
    digits_checkbox.visible = not is_open
    ultra_button.visible = not is_open
    if is_open:
        _set_settings_menu_open(false)
    else:
        _refresh_settings_menu_visibility()
    selected_list_label.visible = not is_open
    list_count_label.visible = not is_open
    bottom_placeholder_1.visible = not is_open
    bottom_placeholder_2.visible = not is_open
    bottom_bar.visible = not is_open
    _refresh_result_links_visibility()



func _finish_platform_browser_close() -> void :
    if platform_browser_open:
        return
    platform_browser_backdrop.visible = false
    platform_browser_panel.visible = false
    _apply_platform_browser_layout(false)



func _finish_special_roll_browser_close() -> void :
    if special_roll_browser_open:
        return
    special_roll_browser_backdrop.visible = false
    special_roll_browser_panel.visible = false
    _apply_special_roll_browser_layout(false)



func _finish_lootbox_browser_close() -> void :
    if lootbox_browser_open:
        return
    lootbox_browser_backdrop.visible = false
    lootbox_browser_panel.visible = false
    _apply_lootbox_browser_layout(false)



func _update_platform_browser_selection(title: String) -> void :
    if platform_browser_title_label == null or platform_browser_count_label == null:
        return

    var has_platform_entry: = platform_browser_buttons.has(title)
    platform_browser_title_label.text = title if has_platform_entry else ""
    platform_browser_count_label.text = list_count_label.text if has_platform_entry else ""

    for key_variant in platform_browser_buttons.keys():
        var key: String = key_variant
        var tile: Panel = platform_browser_buttons[key]
        if key == title:
            tile.add_theme_stylebox_override("panel", bag_tile_active_style)
        else:
            tile.add_theme_stylebox_override("panel", bag_tile_default_style)



func _update_special_roll_selection(title: String) -> void :
    if special_roll_browser_title_label == null or special_roll_browser_count_label == null:
        return

    var has_special_entry: = special_roll_buttons.has(title)
    special_roll_browser_title_label.text = title if has_special_entry else ""
    special_roll_browser_count_label.text = list_count_label.text if has_special_entry else ""

    for key_variant in special_roll_buttons.keys():
        var key: String = key_variant
        var tile: Panel = special_roll_buttons[key]
        if key == title:
            tile.add_theme_stylebox_override("panel", bag_tile_active_style)
        else:
            tile.add_theme_stylebox_override("panel", bag_tile_default_style)



func _update_lootbox_selection(title: String) -> void :
    if lootbox_browser_title_label == null or lootbox_browser_count_label == null:
        return

    var has_lootbox_entry: = lootbox_buttons.has(title)
    lootbox_browser_title_label.text = title if has_lootbox_entry else ""
    lootbox_browser_count_label.text = list_count_label.text if has_lootbox_entry else ""

    for key_variant in lootbox_buttons.keys():
        var key: String = key_variant
        var tile: Panel = lootbox_buttons[key]
        if key == title:
            tile.add_theme_stylebox_override("panel", bag_tile_active_style)
        else:
            tile.add_theme_stylebox_override("panel", bag_tile_default_style)



func _on_platform_browser_item_pressed(list_id: String, title: String, path: String) -> void :
    if path.is_empty():
        return
    _select_list(list_id, title, path, platforms_tile)



func _on_platform_browser_close_pressed() -> void :
    _toggle_platform_browser(0)



func _on_special_roll_item_pressed(list_id: String, title: String, path: String) -> void :
    if path.is_empty():
        return
    if list_id == "mario":
        _play_sound(MARIO_SPECIAL_ROLL_SOUND_CANDIDATES)
    elif list_id == "sonic":
        _play_sound(SONIC_SPECIAL_ROLL_SOUND_CANDIDATES)
    elif list_id == "megaman":
        _play_sound(MEGAMAN_SPECIAL_ROLL_SOUND_CANDIDATES)
    elif list_id == "castlevania":
        _play_sound(CASTLEVANIA_SPECIAL_ROLL_SOUND_CANDIDATES)
    elif list_id == "playstation":
        _play_sound(PLAYSTATION_SPECIAL_ROLL_SOUND_CANDIDATES)
    elif list_id == "capcom":
        _play_sound(CAPCOM_SPECIAL_ROLL_SOUND_CANDIDATES)
    elif list_id == "konami":
        _play_sound(KONAMI_SPECIAL_ROLL_SOUND_CANDIDATES)
    _select_list(list_id, title, path)



func _on_special_roll_browser_close_pressed() -> void :
    _toggle_special_roll_browser(0)



func _on_lootbox_item_pressed(list_id: String, title: String, path: String) -> void :
    if path.is_empty():
        return
    _select_list(list_id, title, path)



func _on_lootbox_browser_close_pressed() -> void :
    _toggle_lootbox_browser(0)



func _load_list(path: String) -> PackedStringArray:
    if not _is_web_runtime() and not _list_text_file_exists(path):
        selected_list_label.text = "Файл списка не найден"
        list_count_label.text = "0"
        center_placeholder.text = "ошибка"
        return PackedStringArray()

    var text: = _read_text_auto(path)
    if text.is_empty():
        selected_list_label.text = "Не удалось открыть список"
        list_count_label.text = "0"
        center_placeholder.text = "ошибка"
        return PackedStringArray()

    var result: = PackedStringArray()
    for raw_line in text.split("\n", false):
        var line: = raw_line.strip_edges()
        if not line.is_empty():
            result.append(line)

    if path == WHEEL_LIST_PATH:
        return _apply_wheel_user_removals(result)
    if path == EXTRA_LIST_PATH:
        return _apply_extra_user_removals(result)
    return result



func _create_active_tile_style() -> StyleBoxFlat:
    var style: = StyleBoxFlat.new()
    style.bg_color = Color(0.3, 0.3, 0.3, 0.98)
    style.border_width_left = 1
    style.border_width_top = 1
    style.border_width_right = 1
    style.border_width_bottom = 1
    style.border_color = Color(0.93, 0.67, 0.23, 1.0)
    style.corner_radius_top_left = 2
    style.corner_radius_top_right = 2
    style.corner_radius_bottom_right = 2
    style.corner_radius_bottom_left = 2
    return style



func _decode_utf16_bytes(bytes: PackedByteArray, little_endian: bool, start_index: int) -> String:
    var decoded: = ""
    var i: = start_index
    while i + 1 < bytes.size():
        var high_byte: = int(bytes[i + 1])
        var low_byte: = int(bytes[i])
        if not little_endian:
            high_byte = int(bytes[i])
            low_byte = int(bytes[i + 1])
        var code_unit: = (high_byte << 8) | low_byte
        i += 2

        if code_unit >= 55296 and code_unit <= 56319 and i + 1 < bytes.size():
            var next_high_byte: = int(bytes[i + 1])
            var next_low_byte: = int(bytes[i])
            if not little_endian:
                next_high_byte = int(bytes[i])
                next_low_byte = int(bytes[i + 1])
            var next_code_unit: = (next_high_byte << 8) | next_low_byte
            if next_code_unit >= 56320 and next_code_unit <= 57343:
                var code_point: = 65536 + ((code_unit - 55296) << 10) + (next_code_unit - 56320)
                decoded += String.chr(code_point)
                i += 2
                continue

        decoded += String.chr(code_unit)
    return decoded



func _decode_text_bytes(bytes: PackedByteArray, use_native_utf16: bool = false) -> String:
    if bytes.is_empty():
        return ""

    var decoded: = ""
    if bytes.size() >= 2:
        if bytes[0] == 255 and bytes[1] == 254:
            decoded = bytes.get_string_from_utf16() if use_native_utf16 else _decode_utf16_bytes(bytes, true, 2)
        elif bytes[0] == 254 and bytes[1] == 255:
            decoded = _decode_utf16_bytes(bytes, false, 2)

    if decoded.is_empty():
        if bytes.size() >= 3 and bytes[0] == 239 and bytes[1] == 187 and bytes[2] == 191:
            decoded = bytes.slice(3).get_string_from_utf8()
        else:
            decoded = bytes.get_string_from_utf8()

    if not decoded.is_empty() and decoded.unicode_at(0) == 65279:
        decoded = decoded.substr(1)
    return decoded



func _read_text_auto(path: String) -> String:
    var runtime_path: = _resolve_runtime_list_path(path)
    if runtime_path.begins_with("user://"):
        if not FileAccess.file_exists(runtime_path):
            return ""
        return _decode_text_bytes(FileAccess.get_file_as_bytes(runtime_path), true)
    if _is_web_runtime():
        return _read_web_text(runtime_path)
    var debug_path: = _debug_local_list_path(runtime_path)
    if not debug_path.is_empty():
        return _decode_text_bytes(FileAccess.get_file_as_bytes(debug_path), true)
    return _decode_text_bytes(FileAccess.get_file_as_bytes(runtime_path), true)
