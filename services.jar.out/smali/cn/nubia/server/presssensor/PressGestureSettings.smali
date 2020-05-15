.class public Lcn/nubia/server/presssensor/PressGestureSettings;
.super Ljava/lang/Object;
.source "PressGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_THREADHOLD:I = 0x6a4

.field private static final DOUBLE_HOLD_INDEX:Ljava/lang/String; = "hold_grip_package_index"

.field private static final DOUBLE_HOLD_SWITCH:Ljava/lang/String; = "nubia_hold_grip_switch"

.field private static final LONG_HOLD_INDEX:Ljava/lang/String; = "long_grip_package_index"

.field private static final LONG_HOLD_SWITCH:Ljava/lang/String; = "nubia_long_grip_switch"

.field public static final PRESS_SENSOR_THRESHOLD:Ljava/lang/String; = "nubia_press_threshold"

.field public static final PRESS_SENSOR_THRESHOLD_RANK:Ljava/lang/String; = "nubia_press_threshold_rank"

.field private static final SHORT_HOLD_INDEX:Ljava/lang/String; = "short_grip_package_index"

.field private static final SHORT_HOLD_SWITCH:Ljava/lang/String; = "nubia_short_grip_switch"

.field private static final SUB_TAG:Ljava/lang/String; = "[Settings] "


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDoubleHoldFunction:Ljava/lang/String;

.field private mFunctionObserver:Landroid/database/ContentObserver;

.field private mGestureEnableCallback:Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsDoubleHoldEnable:Z

.field private mIsGestureEnable:Z

.field private mIsLongHoldEnable:Z

.field private mIsShortHoldEnable:Z

.field private mLongHoldFunction:Ljava/lang/String;

.field private mShortHoldFunction:Ljava/lang/String;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mThreshold:I

    .line 46
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mHandler:Landroid/os/Handler;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureSettings$1;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/presssensor/PressGestureSettings$1;-><init>(Lcn/nubia/server/presssensor/PressGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 55
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureSettings$2;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/presssensor/PressGestureSettings$2;-><init>(Lcn/nubia/server/presssensor/PressGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mFunctionObserver:Landroid/database/ContentObserver;

    .line 61
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureSettings;->registerContentObserver()V

    .line 62
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureSettings;->registerFunctionObserver()V

    .line 63
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureSettings;->updateSettings()V

    .line 64
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureSettings;->updateFunctionSettings()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/presssensor/PressGestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureSettings;->updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/presssensor/PressGestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureSettings;->updateFunctionSettings()V

    return-void
.end method

.method private registerContentObserver()V
    .locals 7

    .line 72
    const-string/jumbo v0, "nubia_short_grip_switch"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    .local v0, "uriShortHold":Landroid/net/Uri;
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    const-string/jumbo v1, "nubia_hold_grip_switch"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 76
    .local v1, "uriDoubleHold":Landroid/net/Uri;
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    const-string/jumbo v2, "nubia_long_grip_switch"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 79
    .local v2, "uriLongHold":Landroid/net/Uri;
    iget-object v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    const-string/jumbo v4, "nubia_press_threshold"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 82
    .local v4, "uriThreshold":Landroid/net/Uri;
    iget-object v5, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    return-void
.end method

.method private registerFunctionObserver()V
    .locals 6

    .line 87
    const-string/jumbo v0, "short_grip_package_index"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, "uriShortHoldFuction":Landroid/net/Uri;
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mFunctionObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    const-string v1, "hold_grip_package_index"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 91
    .local v1, "uriDoubleHoldFuction":Landroid/net/Uri;
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mFunctionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    const-string/jumbo v2, "long_grip_package_index"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 94
    .local v2, "uriLongHoldFuction":Landroid/net/Uri;
    iget-object v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mFunctionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    return-void
.end method

.method private updateFunctionSettings()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "short_grip_package_index"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mShortHoldFunction:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hold_grip_package_index"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mDoubleHoldFunction:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "long_grip_package_index"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mLongHoldFunction:Ljava/lang/String;

    .line 140
    const-string v0, "PressSensorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Settings] short function : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mShortHoldFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", double function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mDoubleHoldFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", long function : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mLongHoldFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method private updateSettings()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nubia_short_grip_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsShortHoldEnable:Z

    .line 101
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_hold_grip_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsDoubleHoldEnable:Z

    .line 103
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_long_grip_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsLongHoldEnable:Z

    .line 105
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nubia_press_threshold"

    const/16 v2, 0x6a4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "threshold":I
    invoke-virtual {p0, v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->isValidThreshold(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    iput v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mThreshold:I

    goto :goto_2

    .line 109
    :cond_3
    iget v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mThreshold:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 110
    iput v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mThreshold:I

    .line 111
    const-string v1, "PressSensorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Settings] Invalid threshold is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", so set to default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 114
    :cond_4
    const-string v1, "PressSensorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Settings] Invalid threshold is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureSettings;->isGestureEnable()Z

    move-result v1

    .line 117
    .local v1, "gestureEnable":Z
    iget-boolean v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsGestureEnable:Z

    if-eq v2, v1, :cond_6

    .line 118
    iput-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsGestureEnable:Z

    .line 119
    sget-boolean v2, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 120
    const-string v2, "PressSensorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Settings] gesture enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsGestureEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mGestureEnableCallback:Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5
    const-string v2, "PressSensorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Settings] gesture enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsGestureEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mGestureEnableCallback:Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;

    if-eqz v2, :cond_6

    .line 125
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mGestureEnableCallback:Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;

    iget-boolean v3, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsGestureEnable:Z

    invoke-interface {v2, v3}, Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;->onGestureEnable(Z)V

    .line 128
    :cond_6
    const-string v2, "PressSensorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Settings] short : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsShortHoldEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", double:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsDoubleHoldEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", long:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsLongHoldEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", threshold:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 184
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  short hold enable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsShortHoldEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  double hold enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsDoubleHoldEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  long hold enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsLongHoldEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  threshold :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  short function  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mShortHoldFunction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  double function  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mDoubleHoldFunction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  long function  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mLongHoldFunction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public getDoubleHoldFunction()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mDoubleHoldFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getLongHoldFunction()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mLongHoldFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getShortHoldFunction()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mShortHoldFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .line 162
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mThreshold:I

    return v0
.end method

.method public isDoubleHoldEnable()Z
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public isGestureEnable()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsShortHoldEnable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsDoubleHoldEnable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsLongHoldEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLongHoldEnable()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsLongHoldEnable:Z

    return v0
.end method

.method public isShortHoldEnable()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mIsShortHoldEnable:Z

    return v0
.end method

.method public isValidThreshold(I)Z
    .locals 1
    .param p1, "threshold"    # I

    .line 180
    const/16 v0, 0x320

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGestureEnableCallback(Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;

    .line 68
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureSettings;->mGestureEnableCallback:Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;

    .line 69
    return-void
.end method
