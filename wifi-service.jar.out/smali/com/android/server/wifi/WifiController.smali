.class public Lcom/android/server/wifi/WifiController;
.super Lcom/android/internal/util/StateMachine;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiController$QcStaDisablingState;,
        Lcom/android/server/wifi/WifiController$DeviceActiveState;,
        Lcom/android/server/wifi/WifiController$EcmState;,
        Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;,
        Lcom/android/server/wifi/WifiController$StaEnabledState;,
        Lcom/android/server/wifi/WifiController$StaDisabledState;,
        Lcom/android/server/wifi/WifiController$DefaultState;,
        Lcom/android/server/wifi/WifiController$ClientModeCallback;,
        Lcom/android/server/wifi/WifiController$ScanOnlyCallback;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x26000

.field static final CMD_AIRPLANE_TOGGLED:I = 0x26009

.field static final CMD_AP_START_FAILURE:I = 0x2600d

.field static final CMD_AP_STOPPED:I = 0x2600f

.field static final CMD_DEFERRED_TOGGLE:I = 0x2600b

.field static final CMD_DELAY_DISCONNECT:I = 0x2601e

.field static final CMD_EMERGENCY_CALL_STATE_CHANGED:I = 0x2600e

.field static final CMD_EMERGENCY_MODE_CHANGED:I = 0x26001

.field static final CMD_RECOVERY_DISABLE_WIFI:I = 0x26013

.field static final CMD_RECOVERY_RESTART_WIFI:I = 0x26011

.field private static final CMD_RECOVERY_RESTART_WIFI_CONTINUE:I = 0x26012

.field static final CMD_SCANNING_STOPPED:I = 0x26015

.field static final CMD_SCAN_ALWAYS_MODE_CHANGED:I = 0x26007

.field static final CMD_SET_AP:I = 0x2600a

.field static final CMD_STA_START_FAILURE:I = 0x26010

.field static final CMD_STA_STOPPED:I = 0x26014

.field static final CMD_USER_PRESENT:I = 0x2600c

.field static final CMD_WIFI_TOGGLED:I = 0x26008

.field private static final DBG:Z = false

.field private static final DEFAULT_REENABLE_DELAY_MS:J = 0x1f4L

.field private static final DEFER_MARGIN_MS:J = 0x5L

.field private static final TAG:Ljava/lang/String; = "WifiController"


# instance fields
.field private mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

.field private mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

.field private mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mFirstUserSignOnSeen:Z

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mQcStaDisablingState:Lcom/android/server/wifi/WifiController$QcStaDisablingState;

.field private mReEnableDelayMillis:J

.field private mScanOnlyModeCallback:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

.field private final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

.field private mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

.field private mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiControllerReady:Z

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private final mWifiStateMachineLooper:Landroid/os/Looper;

.field private final mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Lcom/android/server/wifi/WifiSettingsStore;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiStateMachineLooper"    # Landroid/os/Looper;
    .param p4, "wss"    # Lcom/android/server/wifi/WifiSettingsStore;
    .param p5, "wifiServiceLooper"    # Landroid/os/Looper;
    .param p6, "f"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p7, "wsmp"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 119
    const-string v0, "WifiController"

    invoke-direct {p0, v0, p5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mWifiControllerReady:Z

    .line 62
    new-instance v1, Landroid/net/NetworkInfo;

    const-string v2, "WIFI"

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 74
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 105
    new-instance v1, Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$DefaultState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    .line 106
    new-instance v1, Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$StaEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    .line 107
    new-instance v1, Lcom/android/server/wifi/WifiController$StaDisabledState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$StaDisabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    .line 108
    new-instance v1, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    .line 109
    new-instance v1, Lcom/android/server/wifi/WifiController$DeviceActiveState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$DeviceActiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    .line 110
    new-instance v1, Lcom/android/server/wifi/WifiController$EcmState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$EcmState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    .line 111
    new-instance v1, Lcom/android/server/wifi/WifiController$QcStaDisablingState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$QcStaDisablingState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mQcStaDisablingState:Lcom/android/server/wifi/WifiController$QcStaDisablingState;

    .line 113
    new-instance v1, Lcom/android/server/wifi/WifiController$ScanOnlyCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiController$ScanOnlyCallback;-><init>(Lcom/android/server/wifi/WifiController;Lcom/android/server/wifi/WifiController$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyModeCallback:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    .line 114
    new-instance v1, Lcom/android/server/wifi/WifiController$ClientModeCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiController$ClientModeCallback;-><init>(Lcom/android/server/wifi/WifiController;Lcom/android/server/wifi/WifiController$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

    .line 120
    iput-object p6, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 121
    iput-object p1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 123
    iput-object p3, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachineLooper:Landroid/os/Looper;

    .line 124
    iput-object p7, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 125
    iput-object p4, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 126
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mWifiControllerReady:Z

    .line 127
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 129
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;)V

    .line 130
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 131
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 132
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 133
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 134
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mQcStaDisablingState:Lcom/android/server/wifi/WifiController$QcStaDisablingState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v1

    .line 139
    .local v1, "isAirplaneModeOn":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    .line 140
    .local v2, "isWifiEnabled":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v3

    .line 141
    .local v3, "isScanningAlwaysAvailable":Z
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiSettingsStore;->getLocationModeSetting(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    .line 145
    .local v4, "isLocationModeActive":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAirplaneModeOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isWifiEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isScanningAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isLocationModeActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkScanOnlyModeAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 156
    :goto_1
    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setLogRecSize(I)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->setLogOnlyTransitions(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyModeCallback:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiStateMachinePrime;->registerScanOnlyCallback(Lcom/android/server/wifi/ScanOnlyModeManager$Listener;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiStateMachinePrime;->registerClientModeCallback(Lcom/android/server/wifi/ClientModeManager$Listener;)V

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v5, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/wifi/WifiController$1;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$1;-><init>(Lcom/android/server/wifi/WifiController;)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiReEnableDelay()V

    .line 196
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkScanOnlyModeAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mWifiControllerReady:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mWifiControllerReady:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # I

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # I

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$QcStaDisablingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mQcStaDisablingState:Lcom/android/server/wifi/WifiController$QcStaDisablingState;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiController;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachineLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    return-object v0
.end method

.method private checkScanOnlyModeAvailable()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->getLocationModeSetting(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method private getNextWifiState()Lcom/android/internal/util/State;
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    return-object v0

    .line 644
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkScanOnlyModeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    return-object v0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    return-object v0
.end method

.method private readWifiReEnableDelay()V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    const-string v2, "wifi_reenable_delay"

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    .line 252
    return-void
.end method

.method private updateBatteryWorkSource()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 256
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 257
    return-void
.end method
