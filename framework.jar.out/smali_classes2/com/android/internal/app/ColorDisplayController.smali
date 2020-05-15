.class public final Lcom/android/internal/app/ColorDisplayController;
.super Ljava/lang/Object;
.source "ColorDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ColorDisplayController$Callback;,
        Lcom/android/internal/app/ColorDisplayController$ColorMode;,
        Lcom/android/internal/app/ColorDisplayController$AutoMode;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM:I = 0x1

.field public static final AUTO_MODE_DISABLED:I = 0x0

.field public static final AUTO_MODE_TWILIGHT:I = 0x2

.field public static final COLOR_MODE_AUTOMATIC:I = 0x3

.field public static final COLOR_MODE_BOOSTED:I = 0x1

.field public static final COLOR_MODE_NATURAL:I = 0x0

.field public static final COLOR_MODE_SATURATED:I = 0x2

.field private static final DEBUG:Z = false

.field private static final EYEPRO_TIMER_SWITCH_LAST_STATUS:Ljava/lang/String; = "eyepro_timer_switch_last_status"

.field private static final NIGHT_DISPLAY_ACTIVED_AUTO:Ljava/lang/String; = "night_display_actived_automatic"

.field private static final NIGHT_DISPLAY_INACTIVED_MANUALLY:Ljava/lang/String; = "night_display_inactived_manually"

.field private static final NIGHT_DISPLAY_LAST_STATUS:Ljava/lang/String; = "night_display_last_status"

.field private static final TAG:Ljava/lang/String; = "ColorDisplayController"


# instance fields
.field private mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    .line 131
    iput p2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 133
    new-instance v0, Lcom/android/internal/app/ColorDisplayController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ColorDisplayController$1;-><init>(Lcom/android/internal/app/ColorDisplayController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ColorDisplayController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ColorDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/app/ColorDisplayController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentColorModeFromSystemProperties()I
    .locals 5

    .line 375
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 376
    .local v0, "displayColorSetting":I
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 377
    const-string v3, "1.0"

    const-string/jumbo v4, "persist.sys.sf.color_saturation"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    goto :goto_0

    .line 377
    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 379
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v2, :cond_2

    .line 380
    return v1

    .line 381
    :cond_2
    if-ne v0, v1, :cond_3

    .line 382
    const/4 v1, 0x3

    return v1

    .line 384
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isColorModeAvailable(I)Z
    .locals 5
    .param p1, "colorMode"    # I

    .line 389
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 391
    .local v0, "availableColorModes":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 392
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 393
    .local v4, "mode":I
    if-ne v4, p1, :cond_0

    .line 394
    const/4 v1, 0x1

    return v1

    .line 392
    .end local v4    # "mode":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_1
    return v1
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v0, :cond_1

    .line 495
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "night_display_custom_start_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "display_color_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "night_display_activated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "night_display_color_temperature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "night_display_custom_end_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "night_display_auto_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 516
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAccessibilityTransformActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onAccessibilityTransformChanged(Z)V

    goto :goto_1

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onDisplayColorModeChanged(I)V

    .line 513
    goto :goto_1

    .line 509
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onColorTemperatureChanged(I)V

    .line 510
    goto :goto_1

    .line 506
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 507
    goto :goto_1

    .line 503
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 504
    goto :goto_1

    .line 500
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onAutoModeChanged(I)V

    .line 501
    goto :goto_1

    .line 497
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ColorDisplayController$Callback;->onActivated(Z)V

    .line 498
    nop

    .line 520
    :cond_1
    :goto_1
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x797bb571 -> :sswitch_7
        -0x6900ebe5 -> :sswitch_6
        -0x39c8c50c -> :sswitch_5
        -0x28f198ce -> :sswitch_4
        -0x20db1ad9 -> :sswitch_3
        0x2fb0ca2d -> :sswitch_2
        0x5d15789c -> :sswitch_1
        0x5e128274 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAccessibilityTransformActivated()Z
    .locals 5

    .line 481
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 482
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "accessibility_display_inversion_enabled"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 483
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 485
    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    move v2, v3

    goto :goto_1

    .line 485
    :cond_1
    :goto_0
    nop

    .line 482
    :goto_1
    return v2
.end method

.method public getAutoMode()I
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 201
    .local v0, "autoMode":I
    if-ne v0, v3, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 209
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 212
    const-string v1, "ColorDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid autoMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    .line 216
    :cond_1
    return v0
.end method

.method public getAutoModeRaw()I
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getColorMode()I
    .locals 6

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAccessibilityTransformActivated()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 406
    invoke-direct {p0, v2}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    return v2

    .line 408
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    return v1

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_color_mode"

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v5, -0x1

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 415
    .local v0, "colorMode":I
    if-ne v0, v5, :cond_2

    .line 418
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getCurrentColorModeFromSystemProperties()I

    move-result v0

    .line 423
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 424
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 425
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :cond_3
    if-ne v0, v2, :cond_4

    .line 427
    invoke-direct {p0, v1}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 428
    const/4 v0, 0x3

    goto :goto_0

    .line 429
    :cond_4
    if-ne v0, v1, :cond_5

    .line 430
    invoke-direct {p0, v2}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 431
    const/4 v0, 0x2

    goto :goto_0

    .line 433
    :cond_5
    const/4 v0, -0x1

    .line 437
    :cond_6
    :goto_0
    return v0
.end method

.method public getColorTemperature()I
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_color_temperature"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 340
    .local v0, "colorTemperature":I
    if-ne v0, v3, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getDefaultColorTemperature()I

    move-result v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getMinimumColorTemperature()I

    move-result v1

    .line 348
    .local v1, "minimumTemperature":I
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getMaximumColorTemperature()I

    move-result v2

    .line 349
    .local v2, "maximumTemperature":I
    if-ge v0, v1, :cond_1

    .line 350
    move v0, v1

    goto :goto_0

    .line 351
    :cond_1
    if-le v0, v2, :cond_2

    .line 352
    move v0, v2

    .line 355
    :cond_2
    :goto_0
    return v0
.end method

.method public getCustomEndTime()Ljava/time/LocalTime;
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_end_time"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 303
    .local v0, "endTimeValue":I
    if-ne v0, v3, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 312
    :cond_0
    div-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getCustomStartTime()Ljava/time/LocalTime;
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_start_time"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 265
    .local v0, "startTimeValue":I
    if-ne v0, v3, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 274
    :cond_0
    div-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultColorTemperature()I
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getEyeProSwitchLastStatus()I
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "eyepro_timer_switch_last_status"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastActivatedTime()Ljava/time/LocalDateTime;
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "night_display_last_activated_time"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "lastActivatedTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    invoke-static {v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 182
    :catch_0
    move-exception v2

    .line 185
    nop

    .line 186
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 187
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    .line 185
    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 188
    :catch_1
    move-exception v2

    .line 190
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getMaximumColorTemperature()I
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumColorTemperature()I
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getNDClosedManuallyFlag()I
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_inactived_manually"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNDLastStatus()I
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_last_status"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNDOpendAutomaticlly()I
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_actived_automatic"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isActivated()Z
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_activated"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method public recoverNightDisplay()V
    .locals 6

    .line 591
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_screen_switch_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    return-void

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getNDLastStatus()I

    move-result v0

    .line 595
    .local v0, "nightDisplayLastStatus":I
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getEyeProSwitchLastStatus()I

    move-result v1

    .line 596
    .local v1, "eyeProTimerSwitchLastStatus":I
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getNDOpendAutomaticlly()I

    move-result v2

    .line 597
    .local v2, "nightAutoOpen":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    .line 598
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    .line 599
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ColorDisplayController;->setEyeProSwitchLastStatus(I)V

    goto :goto_0

    .line 600
    :cond_1
    if-ne v1, v4, :cond_2

    .line 601
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    .line 602
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ColorDisplayController;->setEyeProSwitchLastStatus(I)V

    .line 604
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 605
    if-ne v0, v4, :cond_3

    .line 606
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 609
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ColorDisplayController;->setNDOpendAutomaticlly(I)V

    .line 610
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ColorDisplayController;->setNDLastStatus(I)V

    .line 611
    return-void
.end method

.method public resetNightDisplay()V
    .locals 4

    .line 573
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_screen_switch_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    return-void

    .line 576
    :cond_0
    const-string v0, "ColorDisplayController"

    const-string/jumbo v1, "reset night display"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 579
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ColorDisplayController;->setNDLastStatus(I)V

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 582
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    .line 583
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ColorDisplayController;->setEyeProSwitchLastStatus(I)V

    goto :goto_0

    .line 584
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 585
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    .line 586
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ColorDisplayController;->setEyeProSwitchLastStatus(I)V

    .line 588
    :cond_3
    :goto_0
    return-void
.end method

.method public setActivated(Z)Z
    .locals 4
    .param p1, "activated"    # Z

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_last_activated_time"

    .line 164
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 162
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_activated"

    .line 168
    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 167
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setAutoMode(I)Z
    .locals 4
    .param p1, "autoMode"    # I

    .line 237
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_last_activated_time"

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 248
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 250
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 251
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setColorMode(I)V
    .locals 3
    .param p1, "colorMode"    # I

    .line 446
    invoke-direct {p0, p1}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_color_mode"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 451
    return-void

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid colorMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorTemperature(I)Z
    .locals 3
    .param p1, "colorTemperature"    # I

    .line 365
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_color_temperature"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setCustomEndTime(Ljava/time/LocalTime;)Z
    .locals 4
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 323
    if-eqz p1, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 328
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x1

    .line 329
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_end_time"

    .line 331
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 330
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomStartTime(Ljava/time/LocalTime;)Z
    .locals 4
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 285
    if-eqz p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 290
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x0

    .line 291
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_start_time"

    .line 293
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 292
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEyeProSwitchLastStatus(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 614
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "eyepro_timer_switch_last_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    return-void
.end method

.method public setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/internal/app/ColorDisplayController$Callback;

    .line 526
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    .line 527
    .local v0, "oldCallback":Lcom/android/internal/app/ColorDisplayController$Callback;
    if-eq v0, p1, :cond_1

    .line 528
    iput-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    .line 530
    if-nez p1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 533
    :cond_0
    if-nez v0, :cond_1

    .line 535
    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 536
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 538
    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 540
    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 542
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 544
    const-string/jumbo v2, "night_display_color_temperature"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 546
    const-string v2, "display_color_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 548
    const-string v2, "accessibility_display_inversion_enabled"

    .line 549
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 548
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 551
    const-string v2, "accessibility_display_daltonizer_enabled"

    .line 552
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 551
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 556
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void
.end method

.method public setNDClosedManuallyFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 627
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_inactived_manually"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    return-void
.end method

.method public setNDLastStatus(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 621
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_last_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    return-void
.end method

.method public setNDOpendAutomaticlly(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 633
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_actived_automatic"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 634
    return-void
.end method
