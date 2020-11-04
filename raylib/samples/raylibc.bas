unit raylibc

export const CAMERA_CUSTOM = 0
export const CAMERA_FREE = 1
export const CAMERA_ORBITAL = 2
export const CAMERA_FIRST_PERSON = 3
export const CAMERA_THIRD_PERSON = 4

export const FLAG_RESERVED           = 1
export const FLAG_FULLSCREEN_MODE    = 2
export const FLAG_WINDOW_RESIZABLE   = 4
export const FLAG_WINDOW_UNDECORATED = 8
export const FLAG_WINDOW_TRANSPARENT = 16
export const FLAG_WINDOW_HIDDEN      = 128
export const FLAG_WINDOW_ALWAYS_RUN  = 256
export const FLAG_MSAA_4X_HINT       = 32
export const FLAG_VSYNC_HINT         = 64
export const FLAG_INTERLACED_HINT    = 512

export const MOUSE_LEFT_BUTTON   = 0
export const MOUSE_RIGHT_BUTTON  = 1
export const MOUSE_MIDDLE_BUTTON = 2

export const BLEND_ALPHA = 0
export const BLEND_ADDITIVE = 1
export const BLEND_MULTIPLIED = 2
export const BLEND_ADD_COLORS = 3
export const BLEND_SUBTRACT_COLORS = 4
export const BLEND_CUSTOM = 5

export const UNCOMPRESSED_GRAYSCALE = 1
export const UNCOMPRESSED_GRAY_ALPHA = 2
export const UNCOMPRESSED_R5G6B5 = 3
export const UNCOMPRESSED_R8G8B8 = 4
export const UNCOMPRESSED_R5G5B5A1 = 5
export const UNCOMPRESSED_R4G4B4A4 = 6
export const UNCOMPRESSED_R8G8B8A8 = 7
export const UNCOMPRESSED_R32 = 8
export const UNCOMPRESSED_R32G32B32 = 9
export const UNCOMPRESSED_R32G32B32A32 = 10

export const LIGHTGRAY  = [200, 200, 200]
export const GRAY       = [130, 130, 130]
export const DARKGRAY   = [80, 80, 80]
export const YELLOW     = [253, 249, 0]
export const GOLD       = [255, 203, 0]
export const ORANGE     = [255, 161, 0]
export const PINK       = [255, 109, 194]
export const RED        = [230, 41, 55]
export const MAROON     = [190, 33, 55]
export const GREEN      = [0, 228, 48]
export const LIME       = [0, 158, 47]
export const DARKGREEN  = [0, 117, 44]
export const SKYBLUE    = [102, 191, 255]
export const BLUE       = [0, 121, 241]
export const DARKBLUE   = [0, 82, 172]
export const PURPLE     = [200, 122, 255]
export const VIOLET     = [135, 60, 190]
export const DARKPURPLE = [112, 31, 126]
export const BEIGE      = [211, 176, 131]
export const BROWN      = [127, 106, 79]
export const DARKBROWN  = [76, 63, 47]
export const WHITE      = [255, 255, 255]
export const BLACK      = [0, 0, 0]
export const BLANK      = [0, 0, 0, 0]
export const MAGENTA    = [255, 0, 255]
export const RAYWHITE   = [245, 245, 245]

export const KEY_APOSTROPHE      = 39
export const KEY_COMMA           = 44
export const KEY_MINUS           = 45
export const KEY_PERIOD          = 46
export const KEY_SLASH           = 47
export const KEY_ZERO            = 48
export const KEY_ONE             = 49
export const KEY_TWO             = 50
export const KEY_THREE           = 51
export const KEY_FOUR            = 52
export const KEY_FIVE            = 53
export const KEY_SIX             = 54
export const KEY_SEVEN           = 55
export const KEY_EIGHT           = 56
export const KEY_NINE            = 57
export const KEY_SEMICOLON       = 59
export const KEY_EQUAL           = 61
export const KEY_A               = 65
export const KEY_B               = 66
export const KEY_C               = 67
export const KEY_D               = 68
export const KEY_E               = 69
export const KEY_F               = 70
export const KEY_G               = 71
export const KEY_H               = 72
export const KEY_I               = 73
export const KEY_J               = 74
export const KEY_K               = 75
export const KEY_L               = 76
export const KEY_M               = 77
export const KEY_N               = 78
export const KEY_O               = 79
export const KEY_P               = 80
export const KEY_Q               = 81
export const KEY_R               = 82
export const KEY_S               = 83
export const KEY_T               = 84
export const KEY_U               = 85
export const KEY_V               = 86
export const KEY_W               = 87
export const KEY_X               = 88
export const KEY_Y               = 89
export const KEY_Z               = 90
export const KEY_SPACE           = 32
export const KEY_ESCAPE          = 256
export const KEY_ENTER    = 257
export const KEY_TAB             = 258
export const KEY_BACKSPACE       = 259
export const KEY_INSERT          = 260
export const KEY_DELETE          = 261
export const KEY_RIGHT           = 262
export const KEY_LEFT            = 263
export const KEY_DOWN            = 264
export const KEY_UP              = 265
export const KEY_PAGE_UP         = 266
export const KEY_PAGE_DOWN       = 267
export const KEY_HOME            = 268
export const KEY_END             = 269
export const KEY_CAPS_LOCK       = 280
export const KEY_SCROLL_LOCK     = 281
export const KEY_NUM_LOCK        = 282
export const KEY_PRINT_SCREEN    = 283
export const KEY_PAUSE           = 284
export const KEY_F1              = 290
export const KEY_F2              = 291
export const KEY_F3              = 292
export const KEY_F4              = 293
export const KEY_F5              = 294
export const KEY_F6              = 295
export const KEY_F7              = 296
export const KEY_F8              = 297
export const KEY_F9              = 298
export const KEY_F10             = 299
export const KEY_F11             = 300
export const KEY_F12             = 301
export const KEY_LEFT_SHIFT      = 340
export const KEY_LEFT_CONTROL    = 341
export const KEY_LEFT_ALT        = 342
export const KEY_LEFT_SUPER      = 343
export const KEY_RIGHT_SHIFT     = 344
export const KEY_RIGHT_CONTROL   = 345
export const KEY_RIGHT_ALT       = 346
export const KEY_RIGHT_SUPER     = 347
export const KEY_KB_MENU         = 348
export const KEY_LEFT_BRACKET    = 91
export const KEY_BACKSLASH       = 92
export const KEY_RIGHT_BRACKET   = 93
export const KEY_GRAVE           = 96
export const KEY_KP_0            = 320
export const KEY_KP_1            = 321
export const KEY_KP_2            = 322
export const KEY_KP_3            = 323
export const KEY_KP_4            = 324
export const KEY_KP_5            = 325
export const KEY_KP_6            = 326
export const KEY_KP_7            = 327
export const KEY_KP_8            = 328
export const KEY_KP_9            = 329
export const KEY_KP_DECIMAL      = 330
export const KEY_KP_DIVIDE       = 331
export const KEY_KP_MULTIPLY     = 332
export const KEY_KP_SUBTRACT     = 333
export const KEY_KP_ADD          = 334
export const KEY_KP_ENTER        = 335
export const KEY_KP_EQUAL        = 336
