;;; `cfs--custom-set-fonts-names' 列表有三个子列表，第一个为英文字体列表，第二个为中文字体列表，
;;; 第三个列表的字体用于显示不常用汉字，每一个字体列表中，*第一个* *系统存在* 的字体将被使用。
;;; 1. 设置默认字体列表，按`C-c C-c'测试字体显示效果。
;;; 2. 你可以使用命令: `describe-char' 来了解光标处字符使用什么字体。
;;;    也可以运行`(print (font-family-list))'来获得当前可用的字体的名称列表。
;;; 3. 在windows操作系统下，chinese-fonts-setup 无法识别许多中文字体，已知可以
;;;    识别的中文字体有：华文仿宋 华文中宋 华文细黑 微软雅黑 文泉驿正黑。
;;;    而windows自带的方正系列以及Sim系列的中文字体都无法识别，原因未知。
(setq cfs--custom-set-fonts-names
      '(
        ("Consolas" "Source Code Pro" "Ubuntu Mono" "DejaVu Sans Mono" "Inconsolata" "Courier New")
        ("文泉驿等宽微米黑" "微软雅黑" "华文中宋" "仿宋_GB2312" "宋体" "新宋体" "黑体" "Microsoft Yahei" "Microsoft_Yahei"  "Hiragino Sans GB" "文泉驿等宽正黑" "文泉驿正黑" "文泉驿点阵正黑" "楷体_GB2312" "幼圆" "隶书" "方正姚体" "方正舒体" "方正粗圆_GBK" "华文仿宋" "华文彩云" "华文新魏" "华文细黑" "华文行楷")
        ("HanaMinB" "SimSun-ExtB" "MingLiU-ExtB" "PMingLiU-ExtB" "MingLiU_HKSCS-ExtB")
       ))

;;; 1. 为每个字号(9 10.5 11.5 12.5 14 16 18 20 22)设置中文调整系数，使中英文等宽。
;;; 2. 将光标移动到 `cfs--custom-set-fonts-scales' 列表中各个数字上：
;;;    1. C-c C-c 查看光标处scale值的对齐效果。
;;;    2. C-<up> 增大光标处 scale 的值，同时显示对齐效果。
;;;    3. C-<down> 减小光标处 scale 的值, 同时显示对齐效果。
(setq cfs--custom-set-fonts-scales
       '(1.05 1.05 1.10 1.1 1.1 1.05 1.0 1.05 1.05))
