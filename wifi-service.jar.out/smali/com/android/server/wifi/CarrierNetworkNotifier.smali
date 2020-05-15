.class public Lcom/android/server/wifi/CarrierNetworkNotifier;
.super Lcom/android/server/wifi/AvailableNetworkNotifier;
.source "CarrierNetworkNotifier.java"


# static fields
.field private static final STORE_DATA_IDENTIFIER:Ljava/lang/String; = "CarrierNetworkNotifierBlacklist"

.field public static final TAG:Ljava/lang/String; = "WifiCarrierNetworkNotifier"

.field private static final TOGGLE_SETTINGS_NAME:Ljava/lang/String; = "wifi_carrier_networks_available_notification_on"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "framework"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p6, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p7, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p8, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p9, "connectToNetworkNotificationBuilder"    # Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;

    .line 52
    const-string v1, "WifiCarrierNetworkNotifier"

    const-string v2, "CarrierNetworkNotifierBlacklist"

    const-string v3, "wifi_carrier_networks_available_notification_on"

    const/16 v4, 0x2e

    move-object v0, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wifi/AvailableNetworkNotifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;)V

    .line 56
    return-void
.end method


# virtual methods
.method createRecommendedNetworkConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "recommendedNetwork"    # Landroid/net/wifi/ScanResult;

    .line 60
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->createNetworkFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 62
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    iget v1, p1, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 63
    .local v1, "eapMethod":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 64
    :cond_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 65
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 66
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 67
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget v3, p1, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 68
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 69
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 72
    :cond_1
    return-object v0
.end method
