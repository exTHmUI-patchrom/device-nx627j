.class public Lcom/android/server/wm/WindowManagerDebugConfig;
.super Ljava/lang/Object;
.source "WindowManagerDebugConfig.java"


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_ORIENTATION:Z = false

.field public static DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_BOOT:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_DIM_LAYER:Z = false

.field static final DEBUG_DISPLAY:Z = false

.field static final DEBUG_DRAG:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_FOCUS_LIGHT:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_KEEP_SCREEN_ON:Z = false

.field static final DEBUG_KEYGUARD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field public static DEBUG_LAYOUT:Z = false

.field public static DEBUG_LAYOUT_REPEATS:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_POWER:Z = false

.field static final DEBUG_RECENTS_ANIMATIONS:Z = false

.field static final DEBUG_REMOTE_ANIMATIONS:Z

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_SCREENSHOT:Z = false

.field static final DEBUG_SCREEN_ON:Z = false

.field static final DEBUG_STACK:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_STARTING_WINDOW_VERBOSE:Z = false

.field static final DEBUG_TASK_MOVEMENT:Z = false

.field static final DEBUG_TASK_POSITIONING:Z = false

.field static final DEBUG_TOKEN_MOVEMENT:Z = false

.field static final DEBUG_UNKNOWN_APP_VISIBILITY:Z = false

.field public static DEBUG_VISIBILITY:Z = false

.field public static DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WALLPAPER_LIGHT:Z

.field static final DEBUG_WINDOW_CROP:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEBUG_WINDOW_TRACE:Z = false

.field static final SHOW_LIGHT_TRANSACTIONS:Z

.field static final SHOW_STACK_CRAWLS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field public static SHOW_TRANSACTIONS:Z = false

.field static final SHOW_VERBOSE_TRANSACTIONS:Z

.field static final TAG_KEEP_SCREEN_ON:Ljava/lang/String; = "DebugKeepScreenOn"

.field static final TAG_WITH_CLASS_NAME:Z = false

.field static final TAG_WM:Ljava/lang/String; = "WindowManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    .line 47
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 53
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    .line 56
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    .line 57
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    .line 62
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    .line 71
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    .line 72
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    .line 73
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    .line 78
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
