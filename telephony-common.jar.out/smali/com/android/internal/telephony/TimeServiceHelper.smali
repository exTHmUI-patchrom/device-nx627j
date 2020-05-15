.class public Lcom/android/internal/telephony/TimeServiceHelper;
.super Ljava/lang/Object;
.source "TimeServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TimeServiceHelper$Listener;
    }
.end annotation


# static fields
.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private mListener:Lcom/android/internal/telephony/TimeServiceHelper$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    .line 63
    return-void
.end method

.method static isTimeZoneSettingInitializedStatic()Z
    .locals 2

    .line 177
    const-string v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "timeZoneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static setDeviceTimeZoneStatic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zoneId"    # Ljava/lang/String;

    .line 186
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 187
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 192
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isTimeDetectionEnabled()Z
    .locals 3

    .line 120
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v0
.end method

.method public isTimeZoneDetectionEnabled()Z
    .locals 3

    .line 131
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v0
.end method

.method public isTimeZoneSettingInitialized()Z
    .locals 1

    .line 111
    invoke-static {}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeZoneSettingInitializedStatic()Z

    move-result v0

    return v0
.end method

.method public setDeviceTime(J)V
    .locals 3
    .param p1, "time"    # J

    .line 154
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 159
    return-void
.end method

.method public setDeviceTimeZone(Ljava/lang/String;)V
    .locals 1
    .param p1, "zoneId"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TimeServiceHelper;->setDeviceTimeZoneStatic(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setListener(Lcom/android/internal/telephony/TimeServiceHelper$Listener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/internal/telephony/TimeServiceHelper$Listener;

    .line 70
    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mListener:Lcom/android/internal/telephony/TimeServiceHelper$Listener;

    if-nez v0, :cond_0

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mListener:Lcom/android/internal/telephony/TimeServiceHelper$Listener;

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    .line 78
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/TimeServiceHelper$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, p1}, Lcom/android/internal/telephony/TimeServiceHelper$1;-><init>(Lcom/android/internal/telephony/TimeServiceHelper;Landroid/os/Handler;Lcom/android/internal/telephony/TimeServiceHelper$Listener;)V

    .line 77
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/TimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time_zone"

    .line 85
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/TimeServiceHelper$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4, p1}, Lcom/android/internal/telephony/TimeServiceHelper$2;-><init>(Lcom/android/internal/telephony/TimeServiceHelper;Landroid/os/Handler;Lcom/android/internal/telephony/TimeServiceHelper$Listener;)V

    .line 84
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
