vim9script

var home = 'D:/REPO/vim/'

export var config = {}

## 插件安装地址
config.plugin_install_path = home .. 'init/plugins/repos'

## 插件配置目录
config.plugin_config_dir = home .. 'init/plugins'

## 缓存目录
config.global_cache_dir = home .. '.cache'

## coc 缓存目录
config.coc_cache_dir = home .. '.cache/coc'
## coc config 地址
config.coc_config_dir = home .. 'init/coc'

## session 缓存目录
config.session_cache_dir = home .. '.cache/session'

## LeaderF 缓存目录 & gtags config 文件地址
config.leaderf_cache_dir = home .. '.cache/leaderf'
config.gtags_config_path = 'D:/APP/Develop/Vim/vim90/gtags/share/gtags/gtags.conf'



