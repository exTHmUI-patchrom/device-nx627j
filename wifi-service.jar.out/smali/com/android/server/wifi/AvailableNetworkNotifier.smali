.class public Lcom/android/server/wifi/AvailableNetworkNotifier;
.super Ljava/lang/Object;
.source "AvailableNetworkNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;,
        Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;,
        Lcom/android/server/wifi/AvailableNetworkNotifier$State;
    }
.end annotation


# static fields
.field static final DEFAULT_REPEAT_DELAY_SEC:I = 0x384
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final STATE_CONNECTED_NOTIFICATION:I = 0x3

.field private static final STATE_CONNECTING_IN_NOTIFICATION:I = 0x2

.field private static final STATE_CONNECT_FAILED_NOTIFICATION:I = 0x4

.field private static final STATE_NO_NOTIFICATION:I = 0x0

.field private static final STATE_SHOWING_RECOMMENDATION_NOTIFICATION:I = 0x1

.field private static final TIME_TO_SHOW_CONNECTED_MILLIS:I = 0x1388

.field private static final TIME_TO_SHOW_CONNECTING_MILLIS:I = 0x2710

.field private static final TIME_TO_SHOW_FAILED_MILLIS:I = 0x1388


# instance fields
.field private final mBlacklistedSsids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mConnectionStateCallback:Landroid/os/Handler$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotificationBuilder:Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

.field private final mNotificationRepeatDelay:J

.field private mNotificationRepeatTime:J

.field private mRecommendedNetwork:Landroid/net/wifi/ScanResult;

.field private mScreenOn:Z

.field private mSettingEnabled:Z

.field private final mSrcMessenger:Landroid/os/Messenger;

.field private mState:I

.field private final mStoreDataIdentifier:Ljava/lang/String;

.field private final mSystemMessageNotificationId:I

.field private final mTag:Ljava/lang/String;

.field private final mToggleSettingsName:Ljava/lang/String;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;)V
    .locals 20
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "storeDataIdentifier"    # Ljava/lang/String;
    .param p3, "toggleSettingsName"    # Ljava/lang/String;
    .param p4, "notificationIdentifier"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "framework"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p8, "clock"    # Lcom/android/server/wifi/Clock;
    .param p9, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p10, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p11, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p12, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p13, "connectToNetworkNotificationBuilder"    # Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    .line 193
    new-instance v4, Lcom/android/server/wifi/AvailableNetworkNotifier$1;

    invoke-direct {v4, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier$1;-><init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    iput-object v4, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$uFi1H-bLBjC8591OGivQMgKmiaU;

    invoke-direct {v4, v0}, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$uFi1H-bLBjC8591OGivQMgKmiaU;-><init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    iput-object v4, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mConnectionStateCallback:Landroid/os/Handler$Callback;

    .line 157
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    .line 158
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mStoreDataIdentifier:Ljava/lang/String;

    .line 159
    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mToggleSettingsName:Ljava/lang/String;

    .line 160
    move/from16 v7, p4

    iput v7, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mSystemMessageNotificationId:I

    .line 161
    iput-object v1, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mContext:Landroid/content/Context;

    .line 162
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mHandler:Landroid/os/Handler;

    .line 163
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 164
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 165
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mClock:Lcom/android/server/wifi/Clock;

    .line 166
    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 167
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 168
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationBuilder:Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

    .line 169
    iput-boolean v3, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mScreenOn:Z

    .line 170
    new-instance v3, Landroid/os/Messenger;

    new-instance v14, Landroid/os/Handler;

    iget-object v15, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mConnectionStateCallback:Landroid/os/Handler$Callback;

    invoke-direct {v14, v2, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, v14}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mSrcMessenger:Landroid/os/Messenger;

    .line 172
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mBlacklistedSsids:Ljava/util/Set;

    .line 173
    new-instance v3, Lcom/android/server/wifi/SsidSetStoreData;

    iget-object v14, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mStoreDataIdentifier:Ljava/lang/String;

    new-instance v15, Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;

    const/4 v2, 0x0

    invoke-direct {v15, v0, v2}, Lcom/android/server/wifi/AvailableNetworkNotifier$AvailableNetworkNotifierStoreData;-><init>(Lcom/android/server/wifi/AvailableNetworkNotifier;Lcom/android/server/wifi/AvailableNetworkNotifier$1;)V

    invoke-direct {v3, v14, v15}, Lcom/android/server/wifi/SsidSetStoreData;-><init>(Ljava/lang/String;Lcom/android/server/wifi/SsidSetStoreData$DataSource;)V

    move-object/from16 v14, p11

    invoke-virtual {v14, v3}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    .line 177
    iget-object v3, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string v15, "wifi_networks_available_repeat_delay"

    const/16 v2, 0x384

    invoke-virtual {v3, v1, v15, v2}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v16, 0x3e8

    mul-long v2, v2, v16

    iput-wide v2, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationRepeatDelay:J

    .line 180
    new-instance v2, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;

    iget-object v3, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v0, v3}, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/wifi/AvailableNetworkNotifier;Landroid/os/Handler;)V

    .line 182
    .local v2, "settingObserver":Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;
    invoke-virtual {v2}, Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;->register()V

    .line 184
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v15, "com.android.server.wifi.ConnectToNetworkNotification.USER_DISMISSED_NOTIFICATION"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v15, "com.android.server.wifi.ConnectToNetworkNotification.CONNECT_TO_NETWORK"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v15, "com.android.server.wifi.ConnectToNetworkNotification.PICK_WIFI_NETWORK"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v15, "com.android.server.wifi.ConnectToNetworkNotification.PICK_NETWORK_AFTER_FAILURE"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v15, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mHandler:Landroid/os/Handler;

    .end local v2    # "settingObserver":Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;
    .local v18, "settingObserver":Lcom/android/server/wifi/AvailableNetworkNotifier$NotificationEnabledSettingObserver;
    const/4 v0, 0x0

    invoke-virtual {v15, v1, v3, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/AvailableNetworkNotifier;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/wifi/AvailableNetworkNotifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mSettingEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->handleUserDismissedAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->handleConnectToNetworkAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->handleSeeAllNetworksAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->handlePickWifiNetworkAfterConnectFailure()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mBlacklistedSsids:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/AvailableNetworkNotifier;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/AvailableNetworkNotifier;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mToggleSettingsName:Ljava/lang/String;

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private handleConnectToNetworkAction()V
    .locals 6

    .line 413
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectToNetworkNotificationAction(Ljava/lang/String;II)V

    .line 415
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 416
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationBuilder:Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->createNetworkConnectingNotification(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->postNotification(Landroid/app/Notification;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectToNetworkNotification(Ljava/lang/String;I)V

    .line 423
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User initiated connection to recommended network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->createRecommendedNetworkConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 426
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 427
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x25001

    iput v2, v1, Landroid/os/Message;->what:I

    .line 428
    const/4 v2, -0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 429
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 430
    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 431
    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 433
    iput v3, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    .line 434
    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$oTSUi0JYUdNLPt_-Lt-_qgMDQE8;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$oTSUi0JYUdNLPt_-Lt-_qgMDQE8;-><init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    return-void
.end method

.method private handleConnectionAttemptFailedToSend()V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->handleConnectionFailure()V

    .line 464
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumNetworkConnectMessageFailedToSend(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private handlePickWifiNetworkAfterConnectFailure()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectToNetworkNotificationAction(Ljava/lang/String;II)V

    .line 471
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->startWifiSettings()V

    .line 472
    return-void
.end method

.method private handleSeeAllNetworksAction()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectToNetworkNotificationAction(Ljava/lang/String;II)V

    .line 450
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->startWifiSettings()V

    .line 451
    return-void
.end method

.method private handleUserDismissedAction()V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User dismissed notification with state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectToNetworkNotificationAction(Ljava/lang/String;II)V

    .line 478
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    if-ne v0, v3, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mBlacklistedSsids:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mBlacklistedSsids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->setNetworkRecommenderBlacklistSize(Ljava/lang/String;I)V

    .line 482
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 483
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network is added to the network notification blacklist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->resetStateAndDelayNotification()V

    .line 487
    return-void
.end method

.method private isControllerEnabled()Z
    .locals 3

    .line 260
    iget-boolean v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mSettingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_config_wifi"

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0
.end method

.method public static synthetic lambda$handleConnectToNetworkAction$3(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 2

    .line 436
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->handleConnectionFailure()V

    .line 439
    :cond_0
    return-void
.end method

.method public static synthetic lambda$handleConnectionFailure$2(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 2

    .line 374
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->clearPendingNotification(Z)V

    .line 377
    :cond_0
    return-void
.end method

.method public static synthetic lambda$handleWifiConnected$1(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 2

    .line 352
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->clearPendingNotification(Z)V

    .line 355
    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wifi/AvailableNetworkNotifier;Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 230
    const-string v0, "AvailableNetworkNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :pswitch_0
    goto :goto_0

    .line 227
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->handleConnectionAttemptFailedToSend()V

    .line 228
    nop

    .line 232
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x25002
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private postInitialNotification(Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "recommendedNetwork"    # Landroid/net/wifi/ScanResult;

    .line 386
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 387
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationBuilder:Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->createConnectToAvailableNetworkNotification(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->postNotification(Landroid/app/Notification;)V

    .line 394
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectToNetworkNotification(Ljava/lang/String;I)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiMetrics;->incrementNumNetworkRecommendationUpdates(Ljava/lang/String;)V

    .line 400
    :goto_0
    iput v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    .line 401
    iput-object p1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    .line 402
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationRepeatDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationRepeatTime:J

    .line 403
    return-void
.end method

.method private postNotification(Landroid/app/Notification;)V
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .line 407
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "use_custom_icon"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mSystemMessageNotificationId:I

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 410
    return-void
.end method

.method private resetStateAndDelayNotification()V
    .locals 4

    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationRepeatDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationRepeatTime:J

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    .line 493
    return-void
.end method

.method private startWifiSettings()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 456
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->clearPendingNotification(Z)V

    .line 460
    return-void
.end method


# virtual methods
.method public clearPendingNotification(Z)V
    .locals 3
    .param p1, "resetRepeatTime"    # Z

    .line 241
    if-eqz p1, :cond_0

    .line 242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationRepeatTime:J

    .line 245
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    if-eqz v0, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mSystemMessageNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification with state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was cleared for recommended network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    .line 257
    :cond_2
    return-void
.end method

.method createRecommendedNetworkConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "recommendedNetwork"    # Landroid/net/wifi/ScanResult;

    .line 444
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->createNetworkFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSettingEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mSettingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationRepeatTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationRepeatTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBlacklistedSsids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mBlacklistedSsids:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public handleConnectionFailure()V
    .locals 4

    .line 363
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 364
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationBuilder:Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->createNetworkFailedNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->postNotification(Landroid/app/Notification;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User failed to connect to recommended network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectToNetworkNotification(Ljava/lang/String;I)V

    .line 371
    iput v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$td7RNeapolv8UxSAWhbB9B3dpLc;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$td7RNeapolv8UxSAWhbB9B3dpLc;-><init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    return-void
.end method

.method public handleScanResults(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p1, "availableNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->isControllerEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->clearPendingNotification(Z)V

    .line 272
    return-void

    .line 274
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    if-ne v0, v1, :cond_1

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/AvailableNetworkNotifier;->clearPendingNotification(Z)V

    .line 276
    return-void

    .line 280
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mClock:Lcom/android/server/wifi/Clock;

    .line 281
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationRepeatTime:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 282
    return-void

    .line 286
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mScreenOn:Z

    if-nez v0, :cond_3

    .line 287
    return-void

    .line 291
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    if-ne v0, v1, :cond_6

    .line 293
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mBlacklistedSsids:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 294
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->recommendNetwork(Ljava/util/List;Ljava/util/Set;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 296
    .local v0, "recommendation":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_5

    .line 297
    invoke-direct {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->postInitialNotification(Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 299
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/AvailableNetworkNotifier;->clearPendingNotification(Z)V

    .line 302
    .end local v0    # "recommendation":Landroid/net/wifi/ScanResult;
    :cond_6
    :goto_0
    return-void
.end method

.method public handleScreenStateChanged(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .line 329
    iput-boolean p1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mScreenOn:Z

    .line 330
    return-void
.end method

.method public handleWifiConnected()V
    .locals 4

    .line 338
    iget v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->clearPendingNotification(Z)V

    .line 340
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mNotificationBuilder:Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->createNetworkConnectedNotification(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->postNotification(Landroid/app/Notification;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User connected to recommended network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mRecommendedNetwork:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mTag:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->incrementConnectToNetworkNotification(Ljava/lang/String;I)V

    .line 349
    iput v2, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mState:I

    .line 350
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$fIUenOK3XCnkKxNOfiG4FqrVP9c;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$fIUenOK3XCnkKxNOfiG4FqrVP9c;-><init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method public recommendNetwork(Ljava/util/List;Ljava/util/Set;)Landroid/net/wifi/ScanResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 310
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p2, "blacklistedSsids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 311
    .local v0, "result":Landroid/net/wifi/ScanResult;
    const/high16 v1, -0x80000000

    .line 312
    .local v1, "highestRssi":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .line 313
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 315
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    iget v5, v4, Landroid/net/wifi/ScanResult;->level:I

    if-le v5, v1, :cond_0

    .line 316
    move-object v0, v4

    .line 317
    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 319
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    goto :goto_0

    .line 321
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    const/4 v0, 0x0

    .line 324
    :cond_2
    return-object v0
.end method
