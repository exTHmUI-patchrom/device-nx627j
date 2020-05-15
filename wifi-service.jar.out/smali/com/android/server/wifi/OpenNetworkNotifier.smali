.class public Lcom/android/server/wifi/OpenNetworkNotifier;
.super Lcom/android/server/wifi/AvailableNetworkNotifier;
.source "OpenNetworkNotifier.java"


# static fields
.field private static final STORE_DATA_IDENTIFIER:Ljava/lang/String; = "OpenNetworkNotifierBlacklist"

.field public static final TAG:Ljava/lang/String; = "WifiOpenNetworkNotifier"

.field private static final TOGGLE_SETTINGS_NAME:Ljava/lang/String; = "wifi_networks_available_notification_on"


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

    .line 46
    const-string v1, "WifiOpenNetworkNotifier"

    const-string v2, "OpenNetworkNotifierBlacklist"

    const-string v3, "wifi_networks_available_notification_on"

    const v4, 0x1080703

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

    .line 50
    return-void
.end method
