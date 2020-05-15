.class public Lcom/android/server/wifi/SoftApManager;
.super Ljava/lang/Object;
.source "SoftApManager.java"

# interfaces
.implements Lcom/android/server/wifi/ActiveModeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    }
.end annotation


# static fields
.field private static final MIN_SOFT_AP_TIMEOUT_DELAY_MS:I = 0x927c0

.field public static final SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "SoftApManager Soft AP Send Message Timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SoftApManager"


# instance fields
.field private expectedStop:Z

.field private mApConfig:Landroid/net/wifi/WifiConfiguration;

.field private mApInterfaceName:Ljava/lang/String;

.field private final mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Ljava/lang/String;

.field private mDataInterfaceName:Ljava/lang/String;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mIfaceIsUp:Z

.field private final mMode:I

.field private mNumAssociatedStations:I

.field private mQCNumAssociatedStations:I

.field private mReportedBandwidth:I

.field private mReportedFrequency:I

.field private final mSarManager:Lcom/android/server/wifi/SarManager;

.field private final mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

.field private final mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

.field private mTimeoutEnabled:Z

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mdualApInterfaces:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Landroid/net/wifi/WifiManager$SoftApCallback;Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/server/wifi/SoftApModeConfiguration;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/SarManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "framework"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p5, "countryCode"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .param p7, "wifiApConfigStore"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p8, "apConfig"    # Lcom/android/server/wifi/SoftApModeConfiguration;
    .param p9, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p10, "sarManager"    # Lcom/android/server/wifi/SarManager;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mReportedFrequency:I

    .line 92
    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mReportedBandwidth:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mNumAssociatedStations:I

    .line 95
    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    .line 96
    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->expectedStop:Z

    .line 105
    new-instance v0, Lcom/android/server/wifi/SoftApManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SoftApManager$1;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 141
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 143
    iput-object p4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 144
    iput-object p5, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    .line 145
    iput-object p6, p0, Lcom/android/server/wifi/SoftApManager;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 146
    iput-object p7, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 147
    invoke-virtual {p8}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mMode:I

    .line 148
    invoke-virtual {p8}, Lcom/android/server/wifi/SoftApModeConfiguration;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 149
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    .line 152
    :cond_0
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 154
    :goto_0
    iput-object p9, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 155
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mdualApInterfaces:[Ljava/lang/String;

    .line 156
    iput-object p10, p0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    .line 157
    new-instance v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/SoftApManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/SoftApManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/SoftApManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wifi/SoftApManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mNumAssociatedStations:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mNumAssociatedStations:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mMode:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    return p1
.end method

.method static synthetic access$2208(Lcom/android/server/wifi/SoftApManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    return v0
.end method

.method static synthetic access$2210(Lcom/android/server/wifi/SoftApManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mReportedFrequency:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mReportedFrequency:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mReportedBandwidth:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mReportedBandwidth:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mDataInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mDataInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SoftApManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->expectedStop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mdualApInterfaces:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 60
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/SoftApManager;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    return-void
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 212
    .local v0, "currentState":Lcom/android/internal/util/IState;
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 216
    :cond_0
    const-string v1, "StateMachine not active"

    return-object v1
.end method

.method private startSoftAp(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 249
    const/4 v0, 0x2

    if-eqz p1, :cond_6

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 255
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v1, v2, :cond_2

    .line 257
    const-string v1, "SoftApManager"

    const-string v2, "Invalid country code, required for setting up soft ap in 5GHz"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 264
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v1, v2, :cond_2

    .line 267
    const-string v1, "SoftApManager"

    const-string v2, "Failed to set country code, required for setting up soft ap in 5GHz"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v0

    .line 275
    :cond_2
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 277
    .local v1, "localConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 279
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiApConfigStore;->getAllowed2GChannel()Ljava/util/ArrayList;

    move-result-object v4

    .line 277
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 281
    .local v2, "result":I
    if-eqz v2, :cond_3

    .line 282
    const-string v0, "SoftApManager"

    const-string v3, "Failed to update AP band and channel"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v2

    .line 286
    :cond_3
    iget-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_4

    .line 287
    const-string v3, "SoftApManager"

    const-string v4, "SoftAP is a hidden network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/wifi/WifiNative;->startSoftAp(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 290
    const-string v3, "SoftApManager"

    const-string v4, "Soft AP start failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v0

    .line 293
    :cond_5
    const-string v0, "SoftApManager"

    const-string v3, "Soft AP is started"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x0

    return v0

    .line 250
    .end local v1    # "localConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "result":I
    :cond_6
    :goto_0
    const-string v1, "SoftApManager"

    const-string v2, "Unable to start soft AP without valid configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v0
.end method

.method private stopSoftAp()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getDualSapStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mdualApInterfaces:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mdualApInterfaces:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 307
    const-string v0, "SoftApManager"

    const-string v1, "Soft AP is stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method private updateApState(III)V
    .locals 3
    .param p1, "newState"    # I
    .param p2, "currentState"    # I
    .param p3, "reason"    # I

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1, p3}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStateChanged(II)V

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    const-string v1, "wifi_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    const-string v1, "previous_wifi_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    const/16 v1, 0xe

    if-ne p1, v1, :cond_0

    .line 235
    const-string v1, "wifi_ap_error_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    :cond_0
    const-string v1, "wifi_ap_interface_name"

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "wifi_ap_mode"

    iget v2, p0, Lcom/android/server/wifi/SoftApManager;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 241
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 189
    const-string v0, "--Dump of SoftApManager--"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current StateMachine mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIfaceIsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SoftApManager;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApConfig.SSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApConfig.apBand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApConfig.hiddenSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    const-string v0, "mApConfig: null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumAssociatedStations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SoftApManager;->mNumAssociatedStations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReportedFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SoftApManager;->mReportedFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReportedBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SoftApManager;->mReportedBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public start()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method public stop()V
    .locals 3

    .line 171
    const-string v0, "SoftApManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " currentstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->expectedStop:Z

    .line 173
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 175
    const/16 v0, 0xd

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    goto :goto_0

    .line 178
    :cond_0
    const/16 v0, 0xc

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    .line 182
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->quitNow()V

    .line 183
    return-void
.end method
