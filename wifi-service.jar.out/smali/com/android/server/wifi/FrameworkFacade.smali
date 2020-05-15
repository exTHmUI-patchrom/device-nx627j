.class public Lcom/android/server/wifi/FrameworkFacade;
.super Ljava/lang/Object;
.source "FrameworkFacade.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FrameworkFacade"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .line 120
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryService()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    .line 109
    const-string v0, "batterystats"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .line 113
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getConfigWiFiDisableInECBM(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const-string v0, "carrier_config"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 131
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "config_wifi_disable_in_ecbm"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 136
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # J

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 144
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 101
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 140
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public inStorageManagerCryptKeeperBounce()Z
    .locals 1

    .line 178
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v0

    return v0
.end method

.method public isAppForeground(I)Z
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v0

    return v0
.end method

.method public makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;)Landroid/net/ip/IpClient;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpClient$Callback;

    .line 149
    new-instance v0, Landroid/net/ip/IpClient;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/ip/IpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;)V

    return-object v0
.end method

.method public makeNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 198
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public makeSupplicantStateTracker(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/server/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Handler;)V

    return-object v0
.end method

.method public makeWifiAsyncChannel(Ljava/lang/String;)Lcom/android/server/wifi/util/WifiAsyncChannel;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/server/wifi/util/WifiAsyncChannel;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/util/WifiAsyncChannel;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "notifyForDescendants"    # Z
    .param p4, "contentObserver"    # Landroid/database/ContentObserver;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    return-void
.end method

.method public setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentObserver"    # Landroid/database/ContentObserver;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    return-void
.end method
