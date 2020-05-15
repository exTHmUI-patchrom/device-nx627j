.class public Lcom/android/server/wifi/WifiApConfigStore;
.super Ljava/lang/Object;
.source "WifiApConfigStore.java"


# static fields
.field public static final ACTION_HOTSPOT_CONFIG_USER_TAPPED_CONTENT:Ljava/lang/String; = "com.android.server.wifi.WifiApConfigStoreUtil.HOTSPOT_CONFIG_USER_TAPPED_CONTENT"

.field static final AP_CHANNEL_DEFAULT:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final AP_CONFIG_FILE_VERSION:I = 0x2

.field private static final DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

.field static final PSK_MAX_LEN:I = 0x3f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PSK_MIN_LEN:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RAND_SSID_INT_MAX:I = 0x270f

.field private static final RAND_SSID_INT_MIN:I = 0x3e8

.field static final SSID_MAX_LEN:I = 0x20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SSID_MIN_LEN:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"


# instance fields
.field private mAllowed2GChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApConfigFile:Ljava/lang/String;

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private mBridgeInterfaceName:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDualSapStatus:Z

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mHandler:Landroid/os/Handler;

.field private mRequiresApBandConversion:Z

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p4, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 102
    sget-object v5, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/FrameworkFacade;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/FrameworkFacade;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p4, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p5, "apConfigFile"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 86
    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mRequiresApBandConversion:Z

    .line 96
    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBridgeInterfaceName:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDualSapStatus:Z

    .line 151
    new-instance v2, Lcom/android/server/wifi/WifiApConfigStore$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiApConfigStore$1;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 111
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 113
    iput-object p4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 114
    iput-object p5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040168

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "ap2GChannelListStr":Ljava/lang/String;
    const-string v3, "WifiApConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2G band allowed channels are:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz v2, :cond_0

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    .line 122
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "channelList":[Ljava/lang/String;
    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 124
    .local v5, "tmp":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v5    # "tmp":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v3    # "channelList":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x11200db

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mRequiresApBandConversion:Z

    .line 132
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 133
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_1

    .line 135
    const-string v1, "WifiApConfigStore"

    const-string v3, "Fallback to use default AP configuration"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 139
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 142
    :cond_1
    const-string v1, "persist.vendor.wifi.softap.bridge.interface"

    const-string v3, "wifi_br0"

    .line 143
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBridgeInterfaceName:Ljava/lang/String;

    .line 145
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.android.server.wifi.WifiApConfigStoreUtil.HOTSPOT_CONFIG_USER_TAPPED_CONTENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .line 56
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->handleUserHotspotConfigTappedContent()V

    return-void
.end method

.method private apBandCheckConvert(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 252
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mRequiresApBandConversion:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 255
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v0, v3, :cond_1

    .line 256
    const-string v0, "WifiApConfigStore"

    const-string v3, "Supplied ap config band was 5GHz only, converting to ANY"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 258
    .local v0, "convertedConfig":Landroid/net/wifi/WifiConfiguration;
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 259
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 260
    return-object v0

    .line 264
    .end local v0    # "convertedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v0, v2, :cond_1

    .line 265
    const-string v0, "WifiApConfigStore"

    const-string v2, "Supplied ap config band was ANY, converting to 5GHz"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 267
    .restart local v0    # "convertedConfig":Landroid/net/wifi/WifiConfiguration;
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 268
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 269
    return-object v0

    .line 272
    .end local v0    # "convertedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-object p1
.end method

.method private createConversionNotification()Landroid/app/Notification;
    .locals 7

    .line 228
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v1, 0x10406e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 229
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v2, 0x10406ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 230
    .local v1, "contentSummary":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v3, 0x10406e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 231
    .local v2, "content":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1060156

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 234
    .local v3, "color":I
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    const v5, 0x10804fc

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 236
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v6, "sys"

    .line 237
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 238
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 239
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v6, "com.android.server.wifi.WifiApConfigStoreUtil.HOTSPOT_CONFIG_USER_TAPPED_CONTENT"

    .line 240
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiApConfigStore;->getPrivateBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 241
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 242
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 243
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 244
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 245
    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 246
    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 247
    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 245
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 248
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 234
    return-object v4
.end method

.method public static generateLocalOnlyHotspotConfig(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 397
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 399
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-static {}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomIntForDefaultSsid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 403
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 404
    const/4 v2, -0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 405
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "randomUUID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x8

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    const/16 v4, 0xd

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 408
    return-object v0
.end method

.method private getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .line 360
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDeviceApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 362
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "randomUUID":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 365
    return-object v0
.end method

.method private getDeviceApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 370
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 371
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v1, "persist.sys.devicename"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 372
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "ro.config.devicename"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 374
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 376
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v2, 0x10406eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 381
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const-string v2, "persist.softap_key_management"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 383
    return-object v0
.end method

.method private getPrivateBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .line 537
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 538
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/server/wifi/FrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getRandomIntForDefaultSsid()I
    .locals 2

    .line 388
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 389
    .local v0, "random":Ljava/util/Random;
    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method private handleUserHotspotConfigTappedContent()V
    .locals 2

    .line 530
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->startSoftApSettings()V

    .line 531
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 532
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 533
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 534
    return-void
.end method

.method private static loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    move-object v2, v1

    .line 288
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v0, v3

    .line 289
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 292
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 293
    .local v3, "version":I
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    .line 294
    const-string v4, "WifiApConfigStore"

    const-string v5, "Bad version on hotspot configuration file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    nop

    .line 313
    nop

    .line 315
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    goto :goto_0

    .line 316
    :catch_0
    move-exception v4

    .line 317
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "WifiApConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing hotspot configuration during read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 297
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 299
    if-lt v3, v5, :cond_1

    .line 300
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 301
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 304
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 305
    .local v1, "authType":I
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 306
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    .end local v1    # "authType":I
    .end local v3    # "version":I
    :cond_2
    nop

    .line 315
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 318
    :goto_1
    goto :goto_3

    .line 316
    :catch_1
    move-exception v1

    .line 317
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "WifiApConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v5, "Error closing hotspot configuration during read"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 313
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 309
    :catch_2
    move-exception v1

    .line 310
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v3, "WifiApConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading hotspot configuration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    const/4 v0, 0x0

    .line 313
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 315
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 316
    :catch_3
    move-exception v1

    .line 317
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "WifiApConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 321
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    return-object v0

    .line 313
    :goto_4
    if-eqz v2, :cond_4

    .line 315
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 318
    goto :goto_5

    .line 316
    :catch_4
    move-exception v3

    .line 317
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing hotspot configuration during read"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiApConfigStore"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    throw v1
.end method

.method private persistConfigAndTriggerBackupManagerProxy(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 276
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 278
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    .line 279
    return-void
.end method

.method private startSoftApSettings()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.WIFI_TETHER_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 524
    return-void
.end method

.method private static validateApConfigPreSharedKey(Ljava/lang/String;)Z
    .locals 4
    .param p0, "preSharedKey"    # Ljava/lang/String;

    .line 442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x3f

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    nop

    .line 454
    const/4 v0, 0x1

    return v0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WifiApConfigStore"

    const-string v3, "softap network password verification failed: malformed string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v1

    .line 443
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    const-string v0, "WifiApConfigStore"

    const-string v2, "softap network password string size must be at least 8 and no more than 63"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return v1
.end method

.method private static validateApConfigSsid(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ssid"    # Ljava/lang/String;

    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "WifiApConfigStore"

    const-string v2, "SSID for softap configuration must be set."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v1

    .line 423
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 430
    :cond_1
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    nop

    .line 435
    return v2

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WifiApConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "softap config SSID verification failed: malformed string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v1

    .line 424
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_0
    const-string v0, "WifiApConfigStore"

    const-string v2, "SSID for softap configuration string size must be at least 1 and not more than 32"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v1
.end method

.method static validateApWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .param p0, "apConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 469
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->validateApConfigSsid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 471
    return v1

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v0, :cond_1

    .line 476
    const-string v0, "WifiApConfigStore"

    const-string v2, "softap config key management bitset was null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v1

    .line 480
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 481
    .local v0, "preSharedKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 485
    .local v2, "hasPreSharedKey":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .local v4, "authType":I
    nop

    .line 488
    nop

    .line 491
    if-nez v4, :cond_2

    .line 493
    if-eqz v2, :cond_4

    .line 494
    const-string v3, "WifiApConfigStore"

    const-string v5, "open softap network should not have a password"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return v1

    .line 497
    :cond_2
    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 499
    if-nez v2, :cond_3

    .line 500
    const-string v3, "WifiApConfigStore"

    const-string v5, "softap network password must be set"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return v1

    .line 504
    :cond_3
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->validateApConfigPreSharedKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 506
    return v1

    .line 514
    :cond_4
    return v3

    .line 510
    :cond_5
    const-string v3, "WifiApConfigStore"

    const-string v5, "softap configs must either be open or WPA2 PSK networks"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return v1

    .line 486
    .end local v4    # "authType":I
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get AuthType for softap config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v1
.end method

.method private static writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 329
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "out":Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 331
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 332
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 333
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 334
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 335
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    .line 336
    .local v2, "authType":I
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 337
    if-eqz v2, :cond_0

    .line 338
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .end local v2    # "authType":I
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 342
    .end local v0    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 340
    .restart local v0    # "out":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    :goto_0
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v0    # "out":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WifiApConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing hotspot configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method


# virtual methods
.method public getAllowed2GChannel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiApConfigStore;->apBandCheckConvert(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 187
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eq v1, v0, :cond_0

    .line 188
    const-string v1, "WifiApConfigStore"

    const-string v2, "persisted config was converted, need to resave it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 190
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->persistConfigAndTriggerBackupManagerProxy(Landroid/net/wifi/WifiConfiguration;)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 185
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiApConfigStore;
    throw v0
.end method

.method public declared-synchronized getBridgeInterface()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBridgeInterfaceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiApConfigStore;
    throw v0
.end method

.method public declared-synchronized getDualSapStatus()Z
    .locals 1

    monitor-enter p0

    .line 175
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDualSapStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiApConfigStore;
    throw v0
.end method

.method public notifyUserOfApBandConversion(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 220
    const-string v0, "WifiApConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ready to post notification - triggered by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->createConversionNotification()Landroid/app/Notification;

    move-result-object v0

    .line 222
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 223
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 224
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/16 v2, 0x32

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 225
    return-void
.end method

.method public declared-synchronized setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    monitor-enter p0

    .line 202
    if-nez p1, :cond_0

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    .line 201
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 205
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->apBandCheckConvert(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiApConfigStore;->persistConfigAndTriggerBackupManagerProxy(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 201
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiApConfigStore;
    throw p1
.end method

.method public declared-synchronized setDualSapStatus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 179
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDualSapStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 178
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiApConfigStore;
    throw p1
.end method
