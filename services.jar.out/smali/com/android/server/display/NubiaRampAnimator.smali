.class final Lcom/android/server/display/NubiaRampAnimator;
.super Ljava/lang/Object;
.source "NubiaRampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/NubiaRampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final SCREEN_ALL:I = 0x3ea

.field public static final SCREEN_BACK:I = 0x3e9

.field private static final SCREEN_BRIGHTNESS_PROCESS_BAR_BACK:Ljava/lang/String; = "screen_brightness_process_bar_back"

.field public static final SCREEN_FRONT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field public static mCurrentValue:I

.field public static mTargetValue:I


# instance fields
.field private final APP_SET_BRIGHTNESS:Ljava/lang/String;

.field private final APP_SET_BRIGHTNESS_URI:Landroid/net/Uri;

.field private final COLOR_REVERSAL_STR:Ljava/lang/String;

.field private final COLOR_REVERSAL_SWITCH_URI:Landroid/net/Uri;

.field private DC_SET_ALPHA_THRESHOLD:I

.field private final DC_SWITCH_STR:Ljava/lang/String;

.field private final DC_SWITCH_URI:Landroid/net/Uri;

.field private final MSG_TIMEOUT_INIT_BRIGHT_AND_ALPHA:I

.field private final MSG_UPDATE_BRIGHT_AND_ALPHA:I

.field private final MSG_UPDATE_DC_FUN_ACCORING_TO_COLOR_REVERSAL:I

.field private dcLayerBinder:Landroid/os/IBinder;

.field private dcLayerSer:Lcom/android/server/display/INubiaLayerService;

.field private isSupportBrightPreResearch:Z

.field private is_629_project:Z

.field private lastBrightness:I

.field private lastCallDcLayer:Z

.field private lights:Lcom/android/server/lights/LightsManager;

.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mAppSetBrightObserver:Landroid/database/ContentObserver;

.field private mAutomatic:Z

.field private mBackScreen:Z

.field private mBacklight:Lcom/android/server/lights/Light;

.field private mChangeProcessBarEnable:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mColorReversalSwitch:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentProcessBar:I

.field private mDcChangeAlphaStart:Z

.field private mDcChangeDevStart:Z

.field private mDcSetAlphaLastFrameTimeNanos:J

.field private mDcSetAlphaRate:I

.field private mDcSetBrightAndAlphaAnimating:Z

.field private mDcSetBrightRate:I

.field private final mDcSetBrightnessAnimationCallback:Ljava/lang/Runnable;

.field private mDcSwitch:Z

.field private final mDcSwitchObserver:Landroid/database/ContentObserver;

.field private mDcSwitchOfAlphaCurValue:I

.field private mDcSwitchOfAlphaTarValue:I

.field private mDcSwitchOfDevCurValue:I

.field private mDcSwitchOfDevTarValue:I

.field private mFirstTime:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/NubiaRampAnimator$Listener;

.field private mMinBrightness:I

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-class v0, Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/NubiaRampAnimator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mFirstTime:Z

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/NubiaRampAnimator;->lastBrightness:I

    .line 87
    const/16 v2, 0x960

    iput v2, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    .line 89
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->is_629_project:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->lastCallDcLayer:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightAndAlphaAnimating:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeDevStart:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeAlphaStart:Z

    .line 103
    iput v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetAlphaRate:I

    .line 104
    iput v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightRate:I

    .line 106
    const-string/jumbo v2, "nubia_flash_eye_protection"

    iput-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SWITCH_STR:Ljava/lang/String;

    .line 107
    const-string/jumbo v2, "nubia_flash_eye_protection"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SWITCH_URI:Landroid/net/Uri;

    .line 108
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    .line 110
    const-string v2, "accessibility_display_inversion_enabled"

    iput-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->COLOR_REVERSAL_STR:Ljava/lang/String;

    .line 111
    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->COLOR_REVERSAL_SWITCH_URI:Landroid/net/Uri;

    .line 112
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mColorReversalSwitch:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->isSupportBrightPreResearch:Z

    .line 117
    const/16 v2, 0x150

    iput v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mMinBrightness:I

    .line 118
    iput v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentProcessBar:I

    .line 119
    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mChangeProcessBarEnable:Z

    .line 123
    const-string v2, "app_set_brightness"

    iput-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->APP_SET_BRIGHTNESS:Ljava/lang/String;

    .line 124
    const-string v2, "app_set_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->APP_SET_BRIGHTNESS_URI:Landroid/net/Uri;

    .line 128
    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->MSG_UPDATE_BRIGHT_AND_ALPHA:I

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->MSG_UPDATE_DC_FUN_ACCORING_TO_COLOR_REVERSAL:I

    .line 130
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->MSG_TIMEOUT_INIT_BRIGHT_AND_ALPHA:I

    .line 131
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mBackScreen:Z

    .line 223
    new-instance v0, Lcom/android/server/display/NubiaRampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaRampAnimator$1;-><init>(Lcom/android/server/display/NubiaRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mHandler:Landroid/os/Handler;

    .line 288
    new-instance v0, Lcom/android/server/display/NubiaRampAnimator$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/NubiaRampAnimator$2;-><init>(Lcom/android/server/display/NubiaRampAnimator;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchObserver:Landroid/database/ContentObserver;

    .line 533
    new-instance v0, Lcom/android/server/display/NubiaRampAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaRampAnimator$3;-><init>(Lcom/android/server/display/NubiaRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightnessAnimationCallback:Ljava/lang/Runnable;

    .line 680
    new-instance v0, Lcom/android/server/display/NubiaRampAnimator$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/NubiaRampAnimator$4;-><init>(Lcom/android/server/display/NubiaRampAnimator;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mAppSetBrightObserver:Landroid/database/ContentObserver;

    .line 805
    new-instance v0, Lcom/android/server/display/NubiaRampAnimator$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaRampAnimator$5;-><init>(Lcom/android/server/display/NubiaRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 136
    iput-object p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    .line 137
    iput-object p2, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 138
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 139
    return-void
.end method

.method private NubiaRampAnimatorInit()V
    .locals 5

    .line 149
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->lastCallDcLayer:Z

    .line 150
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "629"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 151
    iput-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->is_629_project:Z

    .line 152
    sget-object v1, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    const-string v2, "NubiaLayer ro.product.name 629"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->isSupportBrightPreResearch:Z

    .line 157
    :goto_0
    const-string/jumbo v1, "persist.sys.brightness.dcSetBrightness.threshold"

    const/16 v2, 0x960

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    .line 158
    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mColorReversalSwitch:Z

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_process_bar"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentProcessBar:I

    .line 165
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 167
    .local v1, "screenBrightnessSettingMinimum":I
    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 169
    .local v2, "increaseMininumBrightness":I
    sget v3, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    add-int v4, v1, v2

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/NubiaRampAnimator;->mMinBrightness:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "screenBrightnessSettingMinimum":I
    .end local v2    # "increaseMininumBrightness":I
    goto :goto_1

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/16 v2, 0x150

    iput v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mMinBrightness:I

    .line 172
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 178
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateDcSwitch()Z

    .line 179
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateColorReversalSwitch()Z

    .line 180
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateDcFunAccoringToColorReversal()V

    .line 181
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SWITCH_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->COLOR_REVERSAL_SWITCH_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    goto :goto_2

    .line 189
    :catch_1
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    const-string v3, "NubiaLayer register url failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_set_brightness"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->APP_SET_BRIGHTNESS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/display/NubiaRampAnimator;->mAppSetBrightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    iput-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->lights:Lcom/android/server/lights/LightsManager;

    .line 198
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->lights:Lcom/android/server/lights/LightsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mBacklight:Lcom/android/server/lights/Light;

    .line 201
    sget-object v0, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NubiaLayer mDcSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mColorReversalSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mColorReversalSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " DC_SET_ALPHA_THRESHOLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMinBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mMinBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/NubiaRampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightAndAlphaAnimating:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/NubiaRampAnimator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->sendOnceMsg(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/NubiaRampAnimator;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->COLOR_REVERSAL_SWITCH_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/NubiaRampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/NubiaRampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-wide v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetAlphaLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/NubiaRampAnimator;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # J

    .line 57
    iput-wide p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetAlphaLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/display/NubiaRampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeDevStart:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/display/NubiaRampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeDevStart:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/NubiaRampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightRate:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/NubiaRampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfDevTarValue:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/NubiaRampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfDevCurValue:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/display/NubiaRampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfDevCurValue:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/NubiaRampAnimator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/NubiaRampAnimator;)Landroid/util/IntProperty;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/NubiaRampAnimator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->removeMsg(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/NubiaRampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeAlphaStart:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/NubiaRampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeAlphaStart:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/NubiaRampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetAlphaRate:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/NubiaRampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfAlphaTarValue:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/NubiaRampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfAlphaCurValue:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/NubiaRampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfAlphaCurValue:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/display/NubiaRampAnimator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/NubiaRampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->postDcSetAlphaAnimationCallback()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/NubiaRampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-wide v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/server/display/NubiaRampAnimator;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # J

    .line 57
    iput-wide p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/display/NubiaRampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/display/NubiaRampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # F

    .line 57
    iput p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/display/NubiaRampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->isSupportBrightPreResearch:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/NubiaRampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/NubiaRampAnimator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->forceStopDcBrightAndAlphaAnimating(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/display/NubiaRampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/display/NubiaRampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mRate:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/display/NubiaRampAnimator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->setBrightness(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/NubiaRampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->getOptimizdDarkeningRate()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/server/display/NubiaRampAnimator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/NubiaRampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/server/display/NubiaRampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/display/NubiaRampAnimator;)Lcom/android/server/display/NubiaRampAnimator$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mListener:Lcom/android/server/display/NubiaRampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/NubiaRampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateDevBrightAndDcAlpha()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/NubiaRampAnimator;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/NubiaRampAnimator;->sendOnceMsgDelay(IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/NubiaRampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateDcFunAccoringToColorReversal()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/NubiaRampAnimator;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SWITCH_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/NubiaRampAnimator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/NubiaRampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 57
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    return v0
.end method

.method private cancelAnimationCallback()V
    .locals 4

    .line 802
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 803
    return-void
.end method

.method private cancelDcSetAlphaAnimationCallback()V
    .locals 4

    .line 489
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightAndAlphaAnimating:Z

    .line 490
    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeDevStart:Z

    .line 491
    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeAlphaStart:Z

    .line 492
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightnessAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 493
    return-void
.end method

.method private forceStopDcBrightAndAlphaAnimating(Z)V
    .locals 4
    .param p1, "initFinish"    # Z

    .line 496
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->cancelDcSetAlphaAnimationCallback()V

    .line 515
    if-nez p1, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateDcSwitch()Z

    .line 519
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    if-eqz v0, :cond_0

    .line 520
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    .line 521
    .local v0, "dcSwitchOfDevTarValue":I
    sget v1, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .local v1, "dcSwitchOfAlphaTarValue":I
    goto :goto_0

    .line 523
    .end local v0    # "dcSwitchOfDevTarValue":I
    .end local v1    # "dcSwitchOfAlphaTarValue":I
    :cond_0
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .line 524
    .restart local v0    # "dcSwitchOfDevTarValue":I
    iget v1, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    .line 526
    .restart local v1    # "dcSwitchOfAlphaTarValue":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 527
    invoke-direct {p0, v1}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    .line 529
    .end local v0    # "dcSwitchOfDevTarValue":I
    .end local v1    # "dcSwitchOfAlphaTarValue":I
    :cond_1
    sget-object v0, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcSetBrightnessAnimationCallback initFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " run finish!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method private getOptimizdDarkeningRate()I
    .locals 4

    .line 890
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mRate:I

    .line 891
    .local v0, "optimizdRate":I
    sget v1, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    sget v2, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    const/16 v3, 0x28

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_0

    .line 892
    sget v1, Landroid/os/PowerManager;->INTERNAL_RATE_LOW_BRIGHTNESS:I

    sget v2, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    mul-int/2addr v1, v2

    .end local v0    # "optimizdRate":I
    .local v1, "optimizdRate":I
    :goto_0
    goto :goto_1

    .line 895
    .end local v1    # "optimizdRate":I
    .restart local v0    # "optimizdRate":I
    :cond_0
    sget v1, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    const v2, 0x3dd91687    # 0.106f

    mul-float/2addr v1, v2

    sget v2, Landroid/os/PowerManager;->INTERNAL_ADJ_COEFFICIENT:F

    mul-float/2addr v1, v2

    .line 896
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 899
    .end local v0    # "optimizdRate":I
    .restart local v1    # "optimizdRate":I
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->is_629_project:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    if-nez v0, :cond_1

    .line 900
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    const/16 v2, 0x780

    if-gt v0, v2, :cond_1

    .line 901
    const/16 v1, 0x1f4

    .line 904
    :cond_1
    return v1
.end method

.method private postAnimationCallback()V
    .locals 4

    .line 798
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 799
    return-void
.end method

.method private postDcSetAlphaAnimationCallback()V
    .locals 4

    .line 483
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightAndAlphaAnimating:Z

    .line 484
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetAlphaLastFrameTimeNanos:J

    .line 485
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightnessAnimationCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method private removeMsg(I)V
    .locals 1
    .param p1, "cmd"    # I

    .line 220
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    return-void
.end method

.method private sendOnceMsg(I)V
    .locals 2
    .param p1, "cmd"    # I

    .line 206
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->removeMsg(I)V

    .line 207
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    return-void
.end method

.method private sendOnceMsgDelay(IJ)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "delay"    # J

    .line 213
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->removeMsg(I)V

    .line 214
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 217
    return-void
.end method

.method private setBrightness(I)V
    .locals 5
    .param p1, "value"    # I

    .line 600
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->isSupportBrightPreResearch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mChangeProcessBarEnable:Z

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mMinBrightness:I

    if-lt p1, v0, :cond_1

    .line 602
    int-to-float v0, p1

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 603
    .local v0, "processBarValue":I
    iget v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentProcessBar:I

    if-eq v0, v1, :cond_1

    .line 604
    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentProcessBar:I

    .line 605
    iget-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mBackScreen:Z

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "screen_brightness_process_bar_back"

    iget v4, p0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentProcessBar:I

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "screen_brightness_process_bar"

    iget v4, p0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentProcessBar:I

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 618
    .end local v0    # "processBarValue":I
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightAndAlphaAnimating:Z

    if-eqz v0, :cond_4

    .line 619
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mRate:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 620
    nop

    .line 620
    .local v1, "i":I
    :goto_1
    move v0, v1

    .line 620
    .end local v1    # "i":I
    .local v0, "i":I
    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 622
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    goto :goto_2

    .line 623
    :catch_0
    move-exception v1

    .line 625
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightAndAlphaAnimating:Z

    if-nez v1, :cond_2

    .line 625
    .end local v0    # "i":I
    goto :goto_3

    .line 620
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 620
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 628
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/display/NubiaRampAnimator;->forceStopDcBrightAndAlphaAnimating(Z)V

    .line 632
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    if-nez v0, :cond_5

    .line 633
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 634
    iput p1, p0, Lcom/android/server/display/NubiaRampAnimator;->lastBrightness:I

    .line 635
    return-void

    .line 637
    :cond_5
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->lastBrightness:I

    if-eqz v0, :cond_a

    if-nez p1, :cond_6

    goto :goto_5

    .line 656
    :cond_6
    if-lez p1, :cond_9

    .line 657
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    if-gt p1, v0, :cond_8

    .line 658
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 659
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-virtual {v0, v1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    goto :goto_4

    .line 661
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    goto :goto_4

    .line 663
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 664
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    .line 667
    :cond_9
    :goto_4
    iput p1, p0, Lcom/android/server/display/NubiaRampAnimator;->lastBrightness:I

    .line 670
    return-void

    .line 638
    :cond_a
    :goto_5
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    if-ge p1, v0, :cond_d

    if-nez p1, :cond_b

    goto :goto_7

    .line 642
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 644
    const-wide/16 v0, 0x20

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 647
    goto :goto_6

    .line 645
    :catch_1
    move-exception v0

    .line 648
    :goto_6
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-virtual {v0, v1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    goto :goto_8

    .line 650
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    goto :goto_8

    .line 639
    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 640
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    .line 652
    :goto_8
    iput p1, p0, Lcom/android/server/display/NubiaRampAnimator;->lastBrightness:I

    .line 653
    return-void
.end method

.method private setDcLayerAlpha(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 460
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    const/4 v0, 0x1

    move v1, v0

    .line 462
    .local v1, "ret":Z
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->lastCallDcLayer:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->dcLayerBinder:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->dcLayerSer:Lcom/android/server/display/INubiaLayerService;

    if-nez v2, :cond_1

    .line 463
    :cond_0
    const-string v2, "NubiaLayerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->dcLayerBinder:Landroid/os/IBinder;

    .line 464
    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->dcLayerBinder:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/server/display/INubiaLayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/display/INubiaLayerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->dcLayerSer:Lcom/android/server/display/INubiaLayerService;

    .line 465
    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->lastCallDcLayer:Z

    .line 467
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->isSupportBrightPreResearch:Z

    if-eqz v0, :cond_3

    .line 468
    const/16 v0, 0x960

    if-lt p1, v0, :cond_2

    const/16 p1, 0x960

    .line 469
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/NubiaRampAnimator;->getDoubleScreenMode()I

    move-result v0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_3

    .line 470
    add-int/lit16 p1, p1, 0x1000

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->dcLayerSer:Lcom/android/server/display/INubiaLayerService;

    invoke-interface {v0, p1}, Lcom/android/server/display/INubiaLayerService;->setAlpha(I)V

    .line 473
    sget-boolean v0, Lcom/android/server/display/NubiaRampAnimator;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call ok NubiaLayerService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_4
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    const-string v3, "NubiaLayer call fail NubiaLayerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->lastCallDcLayer:Z

    .line 477
    const/4 v1, 0x0

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private updateColorReversalSwitch()Z
    .locals 5

    .line 419
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    const/4 v0, 0x0

    move v1, v0

    .line 421
    .local v1, "color_reversal_switch":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    const-string v4, "NubiaLayer get url accessibility_display_inversion_enabled failed!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 426
    iput-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mColorReversalSwitch:Z

    goto :goto_1

    .line 428
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mColorReversalSwitch:Z

    .line 429
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mColorReversalSwitch:Z

    return v0
.end method

.method private updateDcFunAccoringToColorReversal()V
    .locals 3

    .line 434
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateColorReversalSwitch()Z

    .line 435
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateDcSwitch()Z

    .line 436
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mColorReversalSwitch:Z

    if-eqz v0, :cond_0

    .line 437
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    if-eqz v0, :cond_3

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    .line 439
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    .line 440
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    sget v2, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    invoke-virtual {v0, v1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    goto :goto_0

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    if-eqz v0, :cond_2

    .line 444
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    iget v1, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    if-lt v0, v1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    sget v2, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    invoke-virtual {v0, v1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 446
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-virtual {v0, v1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 449
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    sget v2, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    invoke-virtual {v0, v1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 453
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    .line 456
    :cond_3
    :goto_0
    return-void
.end method

.method private updateDcSwitch()Z
    .locals 5

    .line 350
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    const/4 v0, 0x0

    move v1, v0

    .line 352
    .local v1, "dc_switch":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nubia_flash_eye_protection"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 355
    goto :goto_0

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    const-string v4, "NubiaLayer get url nubia_flash_eye_protection failed!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 357
    iput-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    goto :goto_1

    .line 359
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    .line 360
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    return v0
.end method

.method private updateDevBrightAndDcAlpha()V
    .locals 4

    .line 365
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mColorReversalSwitch:Z

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    .line 367
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .line 368
    .local v0, "dcSwitchOfDevTarValue":I
    iget v1, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    .line 369
    .local v1, "dcSwitchOfAlphaTarValue":I
    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 370
    invoke-direct {p0, v1}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    .line 371
    return-void

    .line 373
    .end local v0    # "dcSwitchOfDevTarValue":I
    .end local v1    # "dcSwitchOfAlphaTarValue":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateDcSwitch()Z

    .line 374
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->cancelDcSetAlphaAnimationCallback()V

    .line 376
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    if-eqz v0, :cond_1

    .line 377
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfDevCurValue:I

    .line 378
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfDevTarValue:I

    .line 380
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfAlphaCurValue:I

    .line 381
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfAlphaTarValue:I

    goto :goto_0

    .line 383
    :cond_1
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfDevCurValue:I

    .line 384
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfDevTarValue:I

    .line 386
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfAlphaCurValue:I

    .line 387
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitchOfAlphaTarValue:I

    .line 390
    :goto_0
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    iget v1, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    if-ge v0, v1, :cond_2

    .line 391
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeDevStart:Z

    .line 392
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcChangeAlphaStart:Z

    .line 408
    const-string/jumbo v0, "persist.sys.brightness.dcSetBrightnessSwitch.dev.rate"

    const/16 v1, 0xff0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetBrightRate:I

    .line 409
    const-string/jumbo v0, "persist.sys.brightness.dcSetBrightnessSwitch.alpha.rate"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSetAlphaRate:I

    .line 410
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->postDcSetAlphaAnimationCallback()V

    goto :goto_1

    .line 412
    :cond_2
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    .line 414
    :goto_1
    sget-object v0, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NubiaLayer updateDevBrightAndDcAlpha mDcSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 1
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .line 706
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mAutomatic:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/NubiaRampAnimator;->animateTo(IIZ)Z

    move-result v0

    return v0
.end method

.method public animateTo(IIZ)Z
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "automatic"    # Z

    .line 721
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mFirstTime:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimating:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mRate:I

    if-gt p2, v0, :cond_2

    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-gt p1, v0, :cond_1

    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    sget v3, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    if-le v0, v3, :cond_2

    :cond_1
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    sget v3, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-gt v0, v3, :cond_3

    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-gt v0, p1, :cond_3

    .line 765
    :cond_2
    iput p2, p0, Lcom/android/server/display/NubiaRampAnimator;->mRate:I

    .line 768
    :cond_3
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    if-eq v0, p1, :cond_4

    move v2, v1

    nop

    :cond_4
    move v0, v2

    .line 769
    .local v0, "changed":Z
    sput p1, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    .line 770
    iput-boolean p3, p0, Lcom/android/server/display/NubiaRampAnimator;->mAutomatic:Z

    .line 773
    iget-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimating:Z

    if-nez v2, :cond_5

    sget v2, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_5

    .line 774
    iput-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimating:Z

    .line 775
    sget v1, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimatedValue:F

    .line 776
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mLastFrameTimeNanos:J

    .line 777
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->postAnimationCallback()V

    .line 780
    :cond_5
    return v0

    .line 722
    .end local v0    # "changed":Z
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mFirstTime:Z

    if-nez v0, :cond_9

    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-eq p1, v0, :cond_7

    goto :goto_1

    .line 741
    :cond_7
    if-nez p2, :cond_8

    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    if-ne p1, v0, :cond_8

    .line 742
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->isSupportBrightPreResearch:Z

    if-eqz v0, :cond_8

    .line 743
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->setBrightness(I)V

    .line 744
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimating:Z

    if-eqz v0, :cond_8

    .line 745
    iput-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimating:Z

    .line 746
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->cancelAnimationCallback()V

    .line 751
    :cond_8
    return v2

    .line 723
    :cond_9
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mFirstTime:Z

    .line 724
    iput v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mRate:I

    .line 725
    sput p1, Lcom/android/server/display/NubiaRampAnimator;->mTargetValue:I

    .line 726
    sput p1, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .line 728
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaRampAnimator;->setBrightness(I)V

    .line 731
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimating:Z

    if-eqz v0, :cond_a

    .line 732
    iput-boolean v2, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimating:Z

    .line 733
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->cancelAnimationCallback()V

    .line 735
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mListener:Lcom/android/server/display/NubiaRampAnimator$Listener;

    if-eqz v0, :cond_b

    .line 736
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mListener:Lcom/android/server/display/NubiaRampAnimator$Listener;

    invoke-interface {v0}, Lcom/android/server/display/NubiaRampAnimator$Listener;->onAnimationEnd()V

    .line 738
    :cond_b
    return v1
.end method

.method public changeProcessBarEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 674
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mChangeProcessBarEnable:Z

    if-eq v0, p1, :cond_0

    .line 675
    iput-boolean p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mChangeProcessBarEnable:Z

    .line 676
    :cond_0
    return-void
.end method

.method public disableDcBright()V
    .locals 3

    .line 320
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    sget v2, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    invoke-virtual {v0, v1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 322
    iget v0, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    .line 324
    sget-object v0, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    const-string v1, "disableDcBright"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    return-void
.end method

.method public getCurrentValue()I
    .locals 1

    .line 909
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    return v0
.end method

.method public getCurrentValueFromRamp()I
    .locals 1

    .line 252
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    return v0
.end method

.method public getDoubleScreenMode()I
    .locals 8

    .line 269
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/kernel/lcd_enhance/nubia_mode"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 270
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 272
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 273
    .local v4, "i":I
    sget-boolean v5, Lcom/android/server/display/NubiaRampAnimator;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDoubleScreenMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :cond_0
    const/16 v2, 0x3e8

    if-lt v4, v2, :cond_1

    const/16 v2, 0x3ea

    if-gt v4, v2, :cond_1

    .line 275
    nop

    .line 279
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 275
    return v4

    .line 277
    :cond_1
    nop

    .line 279
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 277
    return v0

    .line 279
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 282
    .end local v1    # "br":Ljava/io/BufferedReader;
    nop

    .line 283
    return v0

    .line 279
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 269
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :goto_0
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 787
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mAnimating:Z

    return v0
.end method

.method public isWorkingOnFrontScreen()Z
    .locals 3

    .line 259
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->isSupportBrightPreResearch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 260
    return v1

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/NubiaRampAnimator;->getDoubleScreenMode()I

    move-result v0

    .line 262
    .local v0, "nubia_mode":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3ea

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    return v1

    .line 263
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public modifyCurrentValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 255
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    sput p1, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .line 256
    return-void
.end method

.method public resetDcBright()V
    .locals 6

    .line 328
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mColorReversalSwitch:Z

    if-eqz v0, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    .line 332
    .local v0, "lastDcSwitch":Z
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->updateDcSwitch()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 335
    iget-boolean v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    if-eqz v1, :cond_1

    .line 336
    iget v1, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    .line 337
    .local v1, "dcSwitchOfDevTarValue":I
    sget v2, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .line 337
    .local v2, "dcSwitchOfAlphaTarValue":I
    goto :goto_0

    .line 339
    .end local v1    # "dcSwitchOfDevTarValue":I
    .end local v2    # "dcSwitchOfAlphaTarValue":I
    :cond_1
    sget v1, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    .line 340
    .restart local v1    # "dcSwitchOfDevTarValue":I
    iget v2, p0, Lcom/android/server/display/NubiaRampAnimator;->DC_SET_ALPHA_THRESHOLD:I

    .line 342
    .restart local v2    # "dcSwitchOfAlphaTarValue":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/NubiaRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 343
    invoke-direct {p0, v2}, Lcom/android/server/display/NubiaRampAnimator;->setDcLayerAlpha(I)Z

    .line 344
    sget-object v3, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetDcBright mDcSwitch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/display/NubiaRampAnimator;->mDcSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0    # "lastDcSwitch":Z
    .end local v1    # "dcSwitchOfDevTarValue":I
    .end local v2    # "dcSwitchOfAlphaTarValue":I
    :cond_2
    return-void
.end method

.method public setBackScreenBrightness(I)V
    .locals 3
    .param p1, "value"    # I

    .line 692
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    sget-object v0, Lcom/android/server/display/NubiaRampAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackScreenBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->isSupportBrightPreResearch:Z

    if-eqz v0, :cond_1

    .line 694
    const/16 v0, 0x1000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1ff0

    if-gt p1, v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mBacklight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0

    .line 697
    :cond_0
    const/16 v0, 0x2000

    if-lt p1, v0, :cond_1

    const/16 v0, 0x2ff0

    if-gt p1, v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mBacklight:Lcom/android/server/lights/Light;

    add-int/lit16 v1, p1, -0x2000

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 702
    :cond_1
    :goto_0
    return-void
.end method

.method public setBrightnessProcessBar(I)V
    .locals 5
    .param p1, "value"    # I

    .line 587
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/NubiaRampAnimator;->isSupportBrightPreResearch:Z

    if-eqz v0, :cond_0

    .line 588
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 589
    move v0, p1

    .line 590
    .local v0, "processBarValue":I
    iget v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentProcessBar:I

    if-eq v0, v1, :cond_0

    .line 591
    iput v0, p0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentProcessBar:I

    .line 592
    iget-object v1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_process_bar"

    iget v3, p0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentProcessBar:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 597
    .end local v0    # "processBarValue":I
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mContext:Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Lcom/android/server/display/NubiaRampAnimator;->NubiaRampAnimatorInit()V

    .line 145
    return-void
.end method

.method public setListener(Lcom/android/server/display/NubiaRampAnimator$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/display/NubiaRampAnimator$Listener;

    .line 794
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mListener:Lcom/android/server/display/NubiaRampAnimator$Listener;

    .line 795
    return-void
.end method

.method setScreenState(Z)V
    .locals 0
    .param p1, "isBackScreen"    # Z

    .line 919
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator;, "Lcom/android/server/display/NubiaRampAnimator<TT;>;"
    iput-boolean p1, p0, Lcom/android/server/display/NubiaRampAnimator;->mBackScreen:Z

    .line 920
    return-void
.end method
