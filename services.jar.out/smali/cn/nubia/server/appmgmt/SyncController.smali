.class public Lcn/nubia/server/appmgmt/SyncController;
.super Ljava/lang/Object;
.source "SyncController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;,
        Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncController"


# instance fields
.field private mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

.field private mBatteryChangedReceiver:Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mScreenOn:Z

.field private mScreenStateReceiver:Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;

.field private mScreenUnlock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/AppLevelController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "appLevelController"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    .line 26
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    .line 27
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenOn:Z

    .line 28
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mCharging:Z

    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SyncController;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcn/nubia/server/appmgmt/SyncController;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object p3, p0, Lcn/nubia/server/appmgmt/SyncController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    .line 35
    new-instance v0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;-><init>(Lcn/nubia/server/appmgmt/SyncController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenStateReceiver:Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;

    .line 36
    new-instance v0, Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;-><init>(Lcn/nubia/server/appmgmt/SyncController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mBatteryChangedReceiver:Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/SyncController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SyncController;

    .line 17
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/SyncController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SyncController;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/SyncController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SyncController;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$302(Lcn/nubia/server/appmgmt/SyncController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SyncController;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/SyncController;->mCharging:Z

    return p1
.end method


# virtual methods
.method public allowBackgroundSyncToRun(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 44
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mInternationalFeature:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 45
    return v1

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mCharging:Z

    if-eqz v0, :cond_2

    .line 49
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "SyncController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charging: allow background sync to run for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    return v1

    .line 55
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->getAppLevelMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 56
    .local v0, "appLevelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 57
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isSpecialApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 58
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    .line 59
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v2, :cond_3

    .line 60
    const-string v2, "SyncController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App power level is less than 3. Allow background sync to run for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_3
    return v1

    .line 64
    :cond_4
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    if-eqz v2, :cond_c

    .line 65
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v2, :cond_5

    .line 66
    const-string v2, "SyncController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App power level is 3. Allow background sync to run for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " when screen unlock."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_5
    return v1

    .line 72
    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_8

    .line 73
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenOn:Z

    if-eqz v2, :cond_c

    .line 74
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v2, :cond_7

    .line 75
    const-string v2, "SyncController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App power level is 0 or 1. Allow background sync to run for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " when screen on."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_7
    return v1

    .line 80
    :cond_8
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    if-eqz v2, :cond_c

    .line 81
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v2, :cond_9

    .line 82
    const-string v2, "SyncController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App power level is 2 or 3. Allow background sync to run for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " when screen unlock."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_9
    return v1

    .line 89
    :cond_a
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    if-eqz v2, :cond_c

    .line 90
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v2, :cond_b

    .line 91
    const-string v2, "SyncController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen unlocked: allow background sync to run for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_b
    return v1

    .line 97
    :cond_c
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v1, :cond_d

    .line 98
    const-string v1, "SyncController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallow background sync to run for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 150
    const-string v0, "==========Sync controller=========="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen is unlocked"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "screen is locked"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenOn:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "screen is on"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "screen is off"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mCharging:Z

    if-eqz v0, :cond_2

    const-string v0, "battery is charing"

    goto :goto_2

    :cond_2
    const-string v0, "battery is not charing"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 155
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 40
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    .line 41
    return-void
.end method
