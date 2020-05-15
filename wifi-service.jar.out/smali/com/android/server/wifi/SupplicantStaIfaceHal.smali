.class public Lcom/android/server/wifi/SupplicantStaIfaceHal;
.super Ljava/lang/Object;
.source "SupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;,
        Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;,
        Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SupplicantStaIfaceHal"

.field private static final WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentNetworkLocalConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNetworkRemoteHandles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/SupplicantStaNetworkHal;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

.field private mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

.field private mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mISupplicantStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

.field private mISupplicantVendorStaIfaceCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mISupplicantVendorStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private final mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-string v0, "^(\\d{1,2})-([0-9a-fA-F]{8})-(\\d{1,2})$"

    .line 112
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "monitor"    # Lcom/android/server/wifi/WifiMonitor;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaceCallbacks:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    .line 133
    new-instance v0, Lcom/android/server/wifi/SupplicantStaIfaceHal$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal$1;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 150
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$HYy_ivRYb5h7sLwkHNoi3DEuZxA;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$HYy_ivRYb5h7sLwkHNoi3DEuZxA;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 158
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$MsPuzKcT4xAfuigKAAOs1rYm9CU;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$MsPuzKcT4xAfuigKAAOs1rYm9CU;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 166
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$0ZCupb06_ol_oER89JKkser7esc;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$0ZCupb06_ol_oER89JKkser7esc;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 175
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initSupplicantService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(I)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "x0"    # I

    .line 105
    invoke-static {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantHidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .param p1, "x1"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkLocalConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private addIfaceV1_1(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_0
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 579
    .local v1, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iput-object p1, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    .line 580
    const/4 v2, 0x0

    iput v2, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    .line 581
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .local v2, "supplicantIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v3

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ptZh_ElUcnHE2OStZwGew9iqP2w;

    invoke-direct {v4, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ptZh_ElUcnHE2OStZwGew9iqP2w;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, v1, v4}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->addInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$addInterfaceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    nop

    .line 597
    :try_start_2
    iget-object v3, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    monitor-exit v0

    return-object v3

    .line 592
    :catch_0
    move-exception v3

    .line 593
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicant.addInterface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v4, "addInterface"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 595
    const/4 v4, 0x0

    monitor-exit v0

    return-object v4

    .line 598
    .end local v1    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    .end local v2    # "supplicantIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private addNetwork(Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1285
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_0
    const-string v1, "addNetwork"

    .line 1287
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "addNetwork"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1288
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v3

    .line 1289
    :cond_0
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    .local v4, "newNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$SAhW2awoE8NJ68XrUoFFWBy8_Qs;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$SAhW2awoE8NJ68XrUoFFWBy8_Qs;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    goto :goto_0

    .line 1297
    :catch_0
    move-exception v5

    .line 1298
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "addNetwork"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1300
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 1301
    iget-object v3, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1303
    invoke-interface {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    move-result-object v3

    .line 1301
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaNetworkMockable(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1305
    :cond_1
    monitor-exit v0

    return-object v3

    .line 1307
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "newNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private addNetworkAndSaveConfig(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/SupplicantStaNetworkHal;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_0
    const-string v1, "addSupplicantStaNetwork via HIDL"

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logi(Ljava/lang/String;)V

    .line 893
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 894
    const-string v2, "Cannot add NULL network!"

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 895
    monitor-exit v0

    return-object v1

    .line 897
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addNetwork(Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v2

    .line 898
    .local v2, "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v2, :cond_1

    .line 899
    const-string v3, "Failed to add a network!"

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 900
    monitor-exit v0

    return-object v1

    .line 902
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getId()Z

    .line 903
    nop

    .line 904
    invoke-virtual {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getNetworkId()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorNetwork(Ljava/lang/String;I)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    move-result-object v3

    .line 903
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorStaNetwork(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    const/4 v3, 0x0

    .line 907
    .local v3, "saveSuccess":Z
    :try_start_1
    invoke-virtual {v2, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 910
    goto :goto_0

    .line 908
    :catch_0
    move-exception v4

    .line 909
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v5, "SupplicantStaIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while saving config params: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-nez v3, :cond_3

    .line 912
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save variables for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 914
    const-string v4, "Failed to remove all networks on failure."

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 916
    :cond_2
    monitor-exit v0

    return-object v1

    .line 918
    :cond_3
    new-instance v1, Landroid/util/Pair;

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, p2}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 919
    .end local v2    # "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .end local v3    # "saveSuccess":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private addRxFilter(Ljava/lang/String;B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # B

    .line 2029
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2030
    :try_start_0
    const-string v1, "addRxFilter"

    .line 2031
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "addRxFilter"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2032
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2034
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2035
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "addRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2036
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2037
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "addRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2038
    monitor-exit v0

    return v3

    .line 2040
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2614
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2615
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 2616
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2619
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 2620
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2624
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 2541
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2542
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v1, :cond_0

    .line 2543
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ISupplicant is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2546
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2568
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2569
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v1

    .line 2570
    .local v1, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v1, :cond_0

    .line 2571
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ISupplicantStaIface is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2574
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2575
    .end local v1    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2598
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2599
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkRemoteHandle(Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 2600
    .local v1, "networkHal":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    .line 2601
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", SupplicantStaNetwork is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2604
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2605
    .end local v1    # "networkHal":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantVendorAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 2554
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2555
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    if-nez v1, :cond_0

    .line 2556
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ISupplicantVendor is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2559
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2583
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2584
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorStaIface(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v1

    .line 2585
    .local v1, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v1, :cond_0

    .line 2586
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ISupplicantVendorStaIface is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2589
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2590
    .end local v1    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSupplicantVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2633
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2634
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 2635
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2638
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 2639
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2643
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2652
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2653
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 2654
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2657
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 2658
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearState()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 689
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 690
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 691
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 692
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 693
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 694
    monitor-exit v0

    .line 695
    return-void

    .line 694
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentNetworkId(Ljava/lang/String;)I
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkLocalConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 354
    .local v1, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_0

    .line 355
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 357
    :cond_0
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    monitor-exit v0

    return v2

    .line 358
    .end local v1    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentNetworkLocalConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method private getCurrentNetworkRemoteHandle(Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 872
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;

    return-object v0
.end method

.method private getIfaceV1_0(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .locals 10
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    const-string v1, "getIfaceV1_0"

    .line 526
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v2, "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    const-string v3, "getIfaceV1_0"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 529
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$W95W86gqaF0yeVqSkcF8ivnWjzA;

    invoke-direct {v5, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$W95W86gqaF0yeVqSkcF8ivnWjzA;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v3, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    nop

    .line 542
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 543
    const-string v3, "SupplicantStaIfaceHal"

    const-string v5, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    monitor-exit v0

    return-object v4

    .line 546
    :cond_1
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 547
    .local v3, "supplicantIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 548
    .local v6, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iget v7, v6, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    if-nez v7, :cond_2

    iget-object v7, v6, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    .line 550
    :try_start_3
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v7, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$XREdKpo9EwOT4iuHOP2R4gyeoZ8;

    invoke-direct {v7, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$XREdKpo9EwOT4iuHOP2R4gyeoZ8;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6, v7}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 562
    goto :goto_1

    .line 558
    :catch_0
    move-exception v5

    .line 559
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "SupplicantStaIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISupplicant.getInterface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v7, "getInterface"

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 561
    monitor-exit v0

    return-object v4

    .line 565
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    :cond_2
    goto :goto_0

    .line 566
    :cond_3
    :goto_1
    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    monitor-exit v0

    return-object v4

    .line 537
    .end local v3    # "supplicantIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    :catch_1
    move-exception v3

    .line 538
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "SupplicantStaIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicant.listInterfaces exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v5, "listInterfaces"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 540
    monitor-exit v0

    return-object v4

    .line 567
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private getNetwork(Ljava/lang/String;I)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1356
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1357
    :try_start_0
    const-string v1, "getNetwork"

    .line 1358
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getNetwork"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1359
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v3

    .line 1360
    :cond_0
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    .local v4, "gotNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$fNWywgsDA2XDTHRXSCdi7qa9O5Q;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$fNWywgsDA2XDTHRXSCdi7qa9O5Q;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, p2, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    goto :goto_0

    .line 1367
    :catch_0
    move-exception v5

    .line 1368
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "getNetwork"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1370
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 1371
    iget-object v3, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1373
    invoke-interface {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    move-result-object v3

    .line 1371
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaNetworkMockable(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1375
    :cond_1
    monitor-exit v0

    return-object v3

    .line 1377
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "gotNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 857
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    return-object v0
.end method

.method private getVendorIfaceV2_0(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;
    .locals 9
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .local v1, "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "listVendorInterfaces"

    .line 474
    .local v3, "methodStr":Ljava/lang/String;
    const-string v4, "listVendorInterfaces"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 475
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$DQmbNdkqNl30LE4cJ9LAv3SpWTA;

    invoke-direct {v5, p0, v1}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$DQmbNdkqNl30LE4cJ9LAv3SpWTA;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/util/ArrayList;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->listVendorInterfaces(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$listVendorInterfacesCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    .end local v3    # "methodStr":Ljava/lang/String;
    nop

    .line 487
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 488
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "Got zero HIDL supplicant vendor ifaces. Stopping supplicant vendor HIDL startup."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    monitor-exit v0

    return-object v2

    .line 491
    :cond_1
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 492
    .local v3, "supplicantVendorIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 493
    .local v5, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iget v6, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    if-nez v6, :cond_3

    iget-object v6, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_3

    .line 495
    :try_start_5
    const-string v4, "getVendorInterface"

    .line 496
    .local v4, "methodStr":Ljava/lang/String;
    const-string v6, "getVendorInterface"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_2

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v2

    .line 497
    :cond_2
    :try_start_7
    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    new-instance v7, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$N3f9v3tZzzrucC85xo2Q_qG8kJg;

    invoke-direct {v7, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$N3f9v3tZzzrucC85xo2Q_qG8kJg;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v6, v5, v7}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->getVendorInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$getVendorInterfaceCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 508
    .end local v4    # "methodStr":Ljava/lang/String;
    goto :goto_1

    .line 504
    :catch_0
    move-exception v4

    .line 505
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v6, "SupplicantStaIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ISupplicantVendor.getInterface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V

    .line 507
    monitor-exit v0

    return-object v2

    .line 511
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    :cond_3
    goto :goto_0

    .line 512
    :cond_4
    :goto_1
    iget-object v2, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    monitor-exit v0

    return-object v2

    .line 482
    .end local v3    # "supplicantVendorIface":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;>;"
    :catch_1
    move-exception v3

    .line 483
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantVendor.listInterfaces exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V

    .line 485
    monitor-exit v0

    return-object v2

    .line 513
    .end local v1    # "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method private getVendorNetwork(Ljava/lang/String;I)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1385
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_0
    const-string v1, "getVendorNetwork"

    .line 1387
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getVendorNetwork"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v2

    .line 1388
    .local v2, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v3

    .line 1389
    :cond_0
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    .local v4, "gotNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;>;"
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$iuvFX4Bnum5LO3fXP4Qi-TebQaI;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$iuvFX4Bnum5LO3fXP4Qi-TebQaI;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, p2, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->getVendorNetwork(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface$getVendorNetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1398
    goto :goto_0

    .line 1396
    :catch_0
    move-exception v5

    .line 1397
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "getVendorNetwork"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1399
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 1400
    iget-object v3, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorStaNetworkMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1402
    :cond_1
    monitor-exit v0

    return-object v3

    .line 1404
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .end local v4    # "gotNetwork":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getVendorStaIface(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 864
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    return-object v0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Landroid/os/RemoteException;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 2678
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2679
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->clearState()V

    .line 2680
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2681
    monitor-exit v0

    .line 2682
    return-void

    .line 2681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSupplicantService()Z
    .locals 6

    .line 289
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    nop

    .line 297
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v2, :cond_0

    .line 298
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Got null ISupplicant service. Stopping supplicant HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v0

    return v1

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToSupplicantDeath()Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    monitor-exit v0

    return v1

    .line 304
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initSupplicantVendorService()Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    const-string v0, "SupplicantStaIfaceHal"

    const-string v1, "Failed to init SupplicantVendor service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 304
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    monitor-exit v0

    return v1

    .line 304
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initSupplicantVendorService()Z
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantVendorMockable()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 315
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    if-eqz v2, :cond_0

    .line 316
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Discover ISupplicantVendor service successfull"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_0
    nop

    .line 322
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    if-nez v2, :cond_1

    .line 323
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Got null ISupplicantVendor service. Stopping supplicantVendor HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    monitor-exit v0

    return v1

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToSupplicantVendorDeath()Z

    move-result v2

    if-nez v2, :cond_2

    .line 328
    monitor-exit v0

    return v1

    .line 330
    :cond_2
    monitor-exit v0

    .line 331
    const/4 v0, 0x1

    return v0

    .line 330
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantVendor.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    monitor-exit v0

    return v1

    .line 330
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initiateAnqpQuery(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1882
    .local p3, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .local p4, "subTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1883
    :try_start_0
    const-string v1, "initiateAnqpQuery"

    .line 1884
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateAnqpQuery"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1885
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1887
    :cond_0
    :try_start_1
    invoke-interface {v2, p2, p3, p4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1889
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateAnqpQuery"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1890
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1891
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateAnqpQuery"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1892
    monitor-exit v0

    return v3

    .line 1894
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B
    .param p3, "fileName"    # Ljava/lang/String;

    .line 1920
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1921
    :try_start_0
    const-string v1, "initiateHs20IconQuery"

    .line 1922
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateHs20IconQuery"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1923
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1925
    :cond_0
    :try_start_1
    invoke-interface {v2, p2, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1926
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateHs20IconQuery"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1927
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1928
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateHs20IconQuery"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1929
    monitor-exit v0

    return v3

    .line 1931
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initiateTdlsDiscover(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B

    .line 1774
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1775
    :try_start_0
    const-string v1, "initiateTdlsDiscover"

    .line 1776
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateTdlsDiscover"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1777
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1779
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsDiscover([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1780
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateTdlsDiscover"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1781
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1782
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateTdlsDiscover"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1783
    monitor-exit v0

    return v3

    .line 1785
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initiateTdlsSetup(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B

    .line 1807
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1808
    :try_start_0
    const-string v1, "initiateTdlsSetup"

    .line 1809
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateTdlsSetup"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1810
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1812
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsSetup([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1813
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateTdlsSetup"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1814
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1815
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateTdlsSetup"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1816
    monitor-exit v0

    return v3

    .line 1818
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initiateTdlsTeardown(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # [B

    .line 1841
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1842
    :try_start_0
    const-string v1, "initiateTdlsTeardown"

    .line 1843
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "initiateTdlsTeardown"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1844
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1846
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsTeardown([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1847
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "initiateTdlsTeardown"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1848
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1849
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "initiateTdlsTeardown"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1850
    monitor-exit v0

    return v3

    .line 1852
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isV1_1()Z
    .locals 6

    .line 826
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    :try_start_1
    monitor-exit v0

    return v1

    .line 834
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 829
    :catch_0
    move-exception v2

    .line 830
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string v3, "getSupplicantMockable"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 832
    monitor-exit v0

    return v1

    .line 834
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isVendor_2_0()Z
    .locals 6

    .line 842
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantVendorMockable()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    :try_start_1
    monitor-exit v0

    return v1

    .line 850
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v2

    .line 846
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantVendor.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 848
    monitor-exit v0

    return v1

    .line 850
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$addIfaceV1_1$7(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3
    .param p0, "supplicantIface"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 585
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 587
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void

    .line 590
    :cond_0
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 591
    return-void
.end method

.method public static synthetic lambda$addNetwork$8(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 1
    .param p1, "newNetwork"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "network"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1293
    const-string v0, "addNetwork"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1296
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppAddBootstrapQrCode$15(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3280
    const-string v0, "dppAddBootstrapQrCode"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3281
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3283
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppBootstrapGenerate$16(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3318
    const-string v0, "dppBootstrapGenerate"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3319
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3321
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppBootstrapRemove$18(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3376
    const-string v0, "dppBootstrapRemove"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3377
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3379
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppConfiguratorAdd$20(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3469
    const-string v0, "dppConfiguratorAdd"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3470
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3472
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppConfiguratorGetKey$23(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "KEY"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "key"    # Ljava/lang/String;

    .line 3561
    const-string v0, "dppConfiguratorGetKey"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3562
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 3564
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppConfiguratorRemove$21(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3498
    const-string v0, "dppConfiguratorRemove"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3499
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3501
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppGetUri$17(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "URI"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "uri"    # Ljava/lang/String;

    .line 3347
    const-string v0, "dppGetUri"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3348
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 3350
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppListen$19(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "handle"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3413
    const-string v0, "dppListen"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3414
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3416
    :cond_0
    return-void
.end method

.method public static synthetic lambda$dppStartAuth$22(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "Status"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "hdl"    # I

    .line 3532
    const-string v0, "dppStartAuth"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3533
    iput p3, p1, Landroid/util/MutableInt;->value:I

    .line 3535
    :cond_0
    return-void
.end method

.method public static synthetic lambda$getCapabilities$13(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "capability"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "capaVal"    # Ljava/lang/String;

    .line 2192
    const-string v0, "getCapabilities"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 2195
    :cond_0
    return-void
.end method

.method static synthetic lambda$getIfaceV1_0$5(Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "supplicantIfaces"    # Ljava/util/ArrayList;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "ifaces"    # Ljava/util/ArrayList;

    .line 531
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Supplicant Interfaces failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 536
    return-void
.end method

.method static synthetic lambda$getIfaceV1_0$6(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3
    .param p0, "supplicantIface"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 552
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 556
    :cond_0
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 557
    return-void
.end method

.method public static synthetic lambda$getMacAddress$12(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 1
    .param p1, "gotMac"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "macAddr"    # [B

    .line 1949
    const-string v0, "getMacAddress"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1950
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1952
    :cond_0
    return-void
.end method

.method public static synthetic lambda$getNetwork$9(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 1
    .param p1, "gotNetwork"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "network"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 1363
    const-string v0, "getNetwork"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1366
    :cond_0
    return-void
.end method

.method public static synthetic lambda$getVendorIfaceV2_0$3(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "supplicantIfaces"    # Ljava/util/ArrayList;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "ifaces"    # Ljava/util/ArrayList;

    .line 477
    const-string v0, "listVendorInterfaces"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 481
    return-void
.end method

.method public static synthetic lambda$getVendorIfaceV2_0$4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)V
    .locals 1
    .param p1, "supplicantVendorIface"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    .line 499
    const-string v0, "getVendorInterface"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    return-void

    .line 502
    :cond_0
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 503
    return-void
.end method

.method public static synthetic lambda$getVendorNetwork$10(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;)V
    .locals 1
    .param p1, "gotNetwork"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "network"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;

    .line 1392
    const-string v0, "getVendorNetwork"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1395
    :cond_0
    return-void
.end method

.method public static synthetic lambda$listNetworks$11(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "networkIdList"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "networkIds"    # Ljava/util/ArrayList;

    .line 1468
    const-string v0, "listNetworks"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1471
    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wifi/SupplicantStaIfaceHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 152
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IServiceManager died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wifi/SupplicantStaIfaceHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicant died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/wifi/SupplicantStaIfaceHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 168
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendor/ISupplicantVendorStaIface died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$startWpsPinDisplay$14(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "gotPin"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pin"    # Ljava/lang/String;

    .line 2404
    const-string v0, "startWpsPinDisplay"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 2407
    :cond_0
    return-void
.end method

.method private linkToServiceManagerDeath()Z
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 194
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    const-string v1, "SupplicantStaIfaceHal"

    const-string v3, "Error on linkToDeath on IServiceManager"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :try_start_2
    monitor-exit v0

    return v2

    .line 203
    :cond_1
    nop

    .line 204
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "IServiceManager.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    monitor-exit v0

    return v2

    .line 205
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToSupplicantDeath()Z
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 258
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    const-string v1, "SupplicantStaIfaceHal"

    const-string v3, "Error on linkToDeath on ISupplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :try_start_2
    monitor-exit v0

    return v2

    .line 266
    :cond_1
    nop

    .line 267
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "ISupplicant.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    monitor-exit v0

    return v2

    .line 268
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToSupplicantVendorDeath()Z
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 275
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    const-string v1, "SupplicantStaIfaceHal"

    const-string v3, "Error on linkToDeath on ISupplicantVendor"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :try_start_2
    monitor-exit v0

    return v2

    .line 283
    :cond_1
    nop

    .line 284
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "ISupplicantVendor.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    monitor-exit v0

    return v2

    .line 285
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToSupplicantVendorStaIfaceDeath(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;)Z
    .locals 5
    .param p1, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    .line 335
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 348
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 338
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Error on linkToDeath on ISupplicantVendorStaIface"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantvendorServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :try_start_2
    monitor-exit v0

    return v1

    .line 346
    :cond_1
    nop

    .line 347
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "ISupplicantVendorStaIface.linkToDeath exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    monitor-exit v0

    return v1

    .line 348
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private listNetworks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1462
    :try_start_0
    const-string v1, "listNetworks"

    .line 1463
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "listNetworks"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1464
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 1465
    :cond_0
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    .local v3, "networkIdList":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$vbizHBm9oUFoAR1zumXl5LgQckc;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$vbizHBm9oUFoAR1zumXl5LgQckc;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1474
    goto :goto_0

    .line 1472
    :catch_0
    move-exception v4

    .line 1473
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "listNetworks"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1475
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v4

    .line 1476
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v3    # "networkIdList":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private logCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 2669
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2670
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 2671
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaIfaceCallback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :cond_0
    monitor-exit v0

    .line 2674
    return-void

    .line 2673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 3250
    const-string v0, "SupplicantStaIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 3258
    const-string v0, "SupplicantStaIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 3254
    const-string v0, "SupplicantStaIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    return-void
.end method

.method private registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Z
    .locals 5
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .param p2, "callback"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    .line 1410
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_0
    const-string v1, "registerCallback"

    .line 1412
    .local v1, "methodStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1414
    :cond_0
    :try_start_1
    invoke-interface {p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1415
    .local v3, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "registerCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1416
    .end local v3    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v3

    .line 1417
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "registerCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1418
    monitor-exit v0

    return v2

    .line 1420
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerCallbackV1_1(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Z
    .locals 5
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
    .param p2, "callback"    # Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;

    .line 1426
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1427
    :try_start_0
    const-string v1, "registerCallback_1_1"

    .line 1429
    .local v1, "methodStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1431
    :cond_0
    :try_start_1
    invoke-interface {p1, p2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->registerCallback_1_1(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1432
    .local v3, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-direct {p0, v3, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1433
    .end local v3    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v3

    .line 1434
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1435
    monitor-exit v0

    return v2

    .line 1437
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;)Z
    .locals 5
    .param p1, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .param p2, "callback"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;

    .line 1443
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    :try_start_0
    const-string v1, "registerVendorCallback"

    .line 1445
    .local v1, "methodStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1447
    :cond_0
    :try_start_1
    invoke-interface {p1, p2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 1448
    .local v3, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "registerVendorCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1449
    .end local v3    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v3

    .line 1450
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "registerVendorCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1451
    monitor-exit v0

    return v2

    .line 1453
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private removeIfaceV1_1(Ljava/lang/String;)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 641
    .local v2, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iput-object p1, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    .line 642
    iput v1, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    .line 643
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->removeInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 644
    .local v3, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    iget v4, v3, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v4, :cond_0

    .line 645
    const-string v4, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove iface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    :try_start_1
    monitor-exit v0

    return v1

    .line 652
    .end local v2    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    .end local v3    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :cond_0
    nop

    .line 653
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 654
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.removeInterface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v3, "removeInterface"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 651
    monitor-exit v0

    return v1

    .line 654
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private removeNetwork(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1316
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1317
    :try_start_0
    const-string v1, "removeNetwork"

    .line 1318
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "removeNetwork"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1319
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1321
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1322
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "removeNetwork"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1323
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1324
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "removeNetwork"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1325
    monitor-exit v0

    return v3

    .line 1327
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private removeRxFilter(Ljava/lang/String;B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # B

    .line 2070
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2071
    :try_start_0
    const-string v1, "removeRxFilter"

    .line 2072
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "removeRxFilter"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2073
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2075
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2076
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "removeRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2077
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2078
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "removeRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2079
    monitor-exit v0

    return v3

    .line 2081
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setBtCoexistenceMode(Ljava/lang/String;B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # B

    .line 2115
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2116
    :try_start_0
    const-string v1, "setBtCoexistenceMode"

    .line 2117
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setBtCoexistenceMode"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2118
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2120
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2121
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setBtCoexistenceMode"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2122
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2123
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setBtCoexistenceMode"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2124
    monitor-exit v0

    return v3

    .line 2126
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setConcurrencyPriority(I)Z
    .locals 5
    .param p1, "type"    # I

    .line 2524
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2525
    :try_start_0
    const-string v1, "setConcurrencyPriority"

    .line 2526
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setConcurrencyPriority"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2528
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->setConcurrencyPriority(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2529
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setConcurrencyPriority"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2530
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2531
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setConcurrencyPriority"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2532
    monitor-exit v0

    return v3

    .line 2534
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setCountryCode(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "code"    # [B

    .line 2219
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2220
    :try_start_0
    const-string v1, "setCountryCode"

    .line 2221
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setCountryCode"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2222
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2224
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setCountryCode([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2225
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setCountryCode"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2226
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2227
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setCountryCode"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2228
    monitor-exit v0

    return v3

    .line 2230
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDebugParams(IZZ)Z
    .locals 5
    .param p1, "level"    # I
    .param p2, "showTimestamp"    # Z
    .param p3, "showKeys"    # Z

    .line 2491
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2492
    :try_start_0
    const-string v1, "setDebugParams"

    .line 2493
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDebugParams"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2495
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 2496
    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->setDebugParams(IZZ)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2497
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDebugParams"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2498
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2499
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDebugParams"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2500
    monitor-exit v0

    return v3

    .line 2502
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWpsConfigMethods(Ljava/lang/String;S)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "configMethods"    # S

    .line 1655
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1656
    :try_start_0
    const-string v1, "setWpsConfigMethods"

    .line 1657
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsConfigMethods"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1658
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1660
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1661
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsConfigMethods"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1662
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1663
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsConfigMethods"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1664
    monitor-exit v0

    return v3

    .line 1666
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWpsDeviceType(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # [B

    .line 1534
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1535
    :try_start_0
    const-string v1, "setWpsDeviceType"

    .line 1536
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsDeviceType"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1537
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1539
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1540
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsDeviceType"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1541
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1542
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsDeviceType"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1543
    monitor-exit v0

    return v3

    .line 1545
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private startWpsPbc(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # [B

    .line 2339
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2340
    :try_start_0
    const-string v1, "startWpsPbc"

    .line 2341
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "startWpsPbc"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2342
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2344
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPbc([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2345
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "startWpsPbc"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2346
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2347
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "startWpsPbc"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2348
    monitor-exit v0

    return v3

    .line 2350
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private startWpsPinDisplay(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # [B

    .line 2396
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2397
    :try_start_0
    const-string v1, "startWpsPinDisplay"

    .line 2398
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "startWpsPinDisplay"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2399
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 2400
    :cond_0
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2402
    .local v3, "gotPin":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ZCJ306gH1HQ1oEZ_VXbEMDMXmIg;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ZCJ306gH1HQ1oEZ_VXbEMDMXmIg;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, p2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinDisplay([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2410
    goto :goto_0

    .line 2408
    :catch_0
    move-exception v4

    .line 2409
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "startWpsPinDisplay"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2411
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 2412
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v3    # "gotPin":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private startWpsRegistrar(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # [B
    .param p3, "pin"    # Ljava/lang/String;

    .line 2305
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2306
    :try_start_0
    const-string v1, "startWpsRegistrar"

    .line 2307
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "startWpsRegistrar"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2308
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2310
    :cond_0
    :try_start_1
    invoke-interface {v2, p2, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2311
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "startWpsRegistrar"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2312
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2313
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "startWpsRegistrar"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2314
    monitor-exit v0

    return v3

    .line 2316
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static stringToWpsConfigMethod(Ljava/lang/String;)S
    .locals 5
    .param p0, "configMethod"    # Ljava/lang/String;

    .line 2688
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x4

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "int_nfc_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "physical_push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "ext_nfc_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "label"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "usba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "p2ps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "nfc_interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "physical_display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_a
    const-string v0, "virtual_display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_b
    const-string v0, "keypad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_c
    const-string v0, "ethernet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_d
    const-string v0, "virtual_push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid WPS config method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2716
    :pswitch_0
    const/16 v0, 0x4008

    return v0

    .line 2714
    :pswitch_1
    const/16 v0, 0x2008

    return v0

    .line 2712
    :pswitch_2
    const/16 v0, 0x1000

    return v0

    .line 2710
    :pswitch_3
    const/16 v0, 0x480

    return v0

    .line 2708
    :pswitch_4
    const/16 v0, 0x280

    return v0

    .line 2706
    :pswitch_5
    const/16 v0, 0x100

    return v0

    .line 2704
    :pswitch_6
    const/16 v0, 0x80

    return v0

    .line 2702
    :pswitch_7
    const/16 v0, 0x40

    return v0

    .line 2700
    :pswitch_8
    const/16 v0, 0x10

    return v0

    .line 2698
    :pswitch_9
    const/16 v0, 0x20

    return v0

    .line 2696
    :pswitch_a
    return v2

    .line 2694
    :pswitch_b
    return v4

    .line 2692
    :pswitch_c
    return v3

    .line 2690
    :pswitch_d
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a36973d -> :sswitch_d
        -0x5499b029 -> :sswitch_c
        -0x43a17e2c -> :sswitch_b
        -0x24a05c72 -> :sswitch_a
        -0x1f2626a6 -> :sswitch_9
        -0x1943c85b -> :sswitch_8
        -0x18d6dc09 -> :sswitch_7
        0x33b345 -> :sswitch_6
        0x36eb5d -> :sswitch_5
        0x61f7ef4 -> :sswitch_4
        0xab4a9c7 -> :sswitch_3
        0x445bd88f -> :sswitch_2
        0x63a518c2 -> :sswitch_1
        0x77d04e15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static supplicantHidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;
    .locals 3
    .param p0, "state"    # I

    .line 2727
    packed-switch p0, :pswitch_data_0

    .line 2749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2747
    :pswitch_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2745
    :pswitch_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2743
    :pswitch_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2741
    :pswitch_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2739
    :pswitch_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2737
    :pswitch_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2735
    :pswitch_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2733
    :pswitch_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2731
    :pswitch_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 2729
    :pswitch_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private supplicantServiceDiedHandler()V
    .locals 4

    .line 705
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 707
    .local v2, "ifaceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    .line 708
    .end local v2    # "ifaceName":Ljava/lang/String;
    goto :goto_0

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->clearState()V

    .line 710
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    if-eqz v1, :cond_1

    .line 711
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    invoke-interface {v1}, Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;->onDeath()V

    .line 713
    :cond_1
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private supplicantvendorServiceDiedHandler()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 700
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 701
    monitor-exit v0

    .line 702
    return-void

    .line 701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addHlpReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .param p3, "hlpPacket"    # Ljava/lang/String;

    .line 2264
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2265
    :try_start_0
    const-string v1, "filsHlpAddRequest"

    .line 2266
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "filsHlpAddRequest"

    .line 2267
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v2

    .line 2268
    .local v2, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2270
    :cond_0
    nop

    .line 2271
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 2272
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->hexOrQuotedStringToBytes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2270
    invoke-interface {v2, v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->filsHlpAddRequest([BLjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2273
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "filsHlpAddRequest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2274
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2275
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "filsHlpAddRequest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2276
    monitor-exit v0

    return v3

    .line 2278
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addRxFilter(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 2011
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2013
    packed-switch p2, :pswitch_data_0

    .line 2021
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    goto :goto_1

    .line 2018
    :pswitch_0
    const/4 v1, 0x1

    .line 2019
    .local v1, "halType":B
    goto :goto_0

    .line 2015
    .end local v1    # "halType":B
    :pswitch_1
    const/4 v1, 0x0

    .line 2016
    .restart local v1    # "halType":B
    nop

    .line 2022
    :goto_0
    nop

    .line 2024
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addRxFilter(Ljava/lang/String;B)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2021
    .end local v1    # "halType":B
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Rx Filter type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2025
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cancelWps(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2422
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2423
    :try_start_0
    const-string v1, "cancelWps"

    .line 2424
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "cancelWps"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2425
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2427
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->cancelWps()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2428
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "cancelWps"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2429
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2430
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "cancelWps"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2431
    monitor-exit v0

    return v3

    .line 2433
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connectToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 934
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_0
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiGbk;->getSsidBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiGbk;->isAllAscii([B)Z

    move-result v1

    .line 936
    .local v1, "isAscii":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isAscii="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    .line 937
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkLocalConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 938
    .local v2, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-static {p2, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->isSameNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 939
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    .line 940
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v3

    .line 941
    .local v3, "networkSelectionBSSID":Ljava/lang/String;
    nop

    .line 942
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v5

    .line 943
    .local v5, "networkSelectionBSSIDCurrent":Ljava/lang/String;
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 944
    const-string v6, "Network is already saved, will not trigger remove and add operation."

    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :cond_0
    const-string v6, "Network is already saved, but need to update BSSID."

    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    .line 947
    nop

    .line 949
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v6

    .line 947
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCurrentNetworkBssid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 950
    const-string v6, "Failed to set current network BSSID."

    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 951
    monitor-exit v0

    return v4

    .line 953
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7, p2}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    .end local v3    # "networkSelectionBSSID":Ljava/lang/String;
    .end local v5    # "networkSelectionBSSIDCurrent":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 956
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 959
    const-string v3, "Failed to remove existing networks"

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 960
    monitor-exit v0

    return v4

    .line 966
    :cond_3
    const-string v3, "key_mgmt"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FILS-SHA256"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 967
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->clear(I)V

    .line 969
    :cond_4
    const-string v3, "key_mgmt"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FILS-SHA384"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 970
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->clear(I)V

    .line 972
    :cond_5
    nop

    .line 973
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addNetworkAndSaveConfig(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;

    move-result-object v3

    .line 974
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_6

    .line 975
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add/save network configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 976
    monitor-exit v0

    return v4

    .line 978
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/net/wifi/WifiConfiguration;>;"
    :goto_1
    const-string v3, "key_mgmt"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 982
    const-string v3, "connectToNetwork"

    .line 983
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v3

    .line 984
    .local v3, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->select()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    .line 988
    :cond_7
    const/4 v4, 0x1

    monitor-exit v0

    return v4

    .line 985
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to select network configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 986
    monitor-exit v0

    return v4

    .line 989
    .end local v1    # "isAscii":Z
    .end local v2    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deregisterDeathHandler()Z
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    if-nez v1, :cond_0

    .line 678
    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "No Death handler present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    .line 681
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 682
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1718
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1719
    :try_start_0
    const-string v1, "disconnect"

    .line 1720
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "disconnect"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1721
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1723
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->disconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1724
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "disconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1725
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1726
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "disconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1727
    monitor-exit v0

    return v3

    .line 1729
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppAddBootstrapQrCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 3270
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 3271
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3272
    :try_start_0
    const-string v2, "dppAddBootstrapQrCode"

    .line 3273
    .local v2, "methodStr":Ljava/lang/String;
    new-instance v3, Landroid/util/MutableInt;

    invoke-direct {v3, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 3274
    .local v3, "handle":Landroid/util/MutableInt;
    const-string v4, "dppAddBootstrapQrCode"

    .line 3275
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v4

    .line 3276
    .local v4, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v4, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 3278
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$TXPRlZQHhC4GDRTZGuZYhNWqa5Y;

    invoke-direct {v1, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$TXPRlZQHhC4GDRTZGuZYhNWqa5Y;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, p2, v1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppAddBootstrapQrcode(Ljava/lang/String;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppAddBootstrapQrcodeCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3286
    goto :goto_0

    .line 3284
    :catch_0
    move-exception v1

    .line 3285
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppAddBootstrapQrCode"

    invoke-direct {p0, v1, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3287
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v1, v3, Landroid/util/MutableInt;->value:I

    monitor-exit v0

    return v1

    .line 3288
    .end local v2    # "methodStr":Ljava/lang/String;
    .end local v3    # "handle":Landroid/util/MutableInt;
    .end local v4    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppBootstrapGenerate(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I
    .locals 17
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    move-object/from16 v1, p0

    .line 3300
    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3301
    :try_start_0
    const-string v0, "dppBootstrapGenerate"

    move-object v4, v0

    .line 3302
    .local v4, "methodStr":Ljava/lang/String;
    new-instance v0, Landroid/util/MutableInt;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Landroid/util/MutableInt;-><init>(I)V

    move-object v6, v0

    .line 3304
    .local v6, "handle":Landroid/util/MutableInt;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->chan_list:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->chan_list:Ljava/lang/String;

    :goto_0
    move-object v9, v0

    .line 3305
    .local v9, "chan_list":Ljava/lang/String;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->mac_addr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "00:00:00:00:00:00"

    goto :goto_1

    :cond_1
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->mac_addr:Ljava/lang/String;

    :goto_1
    move-object v15, v0

    .line 3306
    .local v15, "mac_addr":Ljava/lang/String;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->info:Ljava/lang/String;

    :goto_2
    move-object v11, v0

    .line 3307
    .local v11, "info":Ljava/lang/String;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->curve:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    goto :goto_3

    :cond_3
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->curve:Ljava/lang/String;

    :goto_3
    move-object v12, v0

    .line 3308
    .local v12, "curve":Ljava/lang/String;
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    goto :goto_4

    :cond_4
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->key:Ljava/lang/String;

    :goto_4
    move-object v13, v0

    .line 3310
    .local v13, "key":Ljava/lang/String;
    const-string v0, "dppBootstrapGenerate"

    .line 3311
    move-object/from16 v14, p1

    invoke-direct {v1, v14, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v0

    move-object/from16 v16, v0

    .line 3312
    .local v16, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v16, :cond_5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    .line 3314
    :cond_5
    :try_start_1
    iget v8, v2, Landroid/net/wifi/WifiDppConfig;->bootstrap_type:I

    .line 3315
    invoke-static {v15}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    new-instance v0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$o7JCogmb0lYsbaQj4E4rJNaS0So;

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$o7JCogmb0lYsbaQj4E4rJNaS0So;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    .line 3314
    move-object/from16 v7, v16

    move-object v14, v0

    invoke-interface/range {v7 .. v14}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppBootstrapGenerate(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppBootstrapGenerateCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3324
    goto :goto_5

    .line 3322
    :catch_0
    move-exception v0

    .line 3323
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppBootstrapGenerate"

    invoke-direct {v1, v0, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3325
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    iget v0, v6, Landroid/util/MutableInt;->value:I

    monitor-exit v3

    return v0

    .line 3326
    .end local v4    # "methodStr":Ljava/lang/String;
    .end local v6    # "handle":Landroid/util/MutableInt;
    .end local v9    # "chan_list":Ljava/lang/String;
    .end local v11    # "info":Ljava/lang/String;
    .end local v12    # "curve":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "mac_addr":Ljava/lang/String;
    .end local v16    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dppBootstrapRemove(Ljava/lang/String;I)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bootstrap_id"    # I

    .line 3367
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3368
    :try_start_0
    const-string v1, "dppBootstrapRemove"

    .line 3369
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/util/MutableInt;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 3370
    .local v2, "handle":Landroid/util/MutableInt;
    const-string v4, "dppBootstrapRemove"

    .line 3371
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v4

    .line 3372
    .local v4, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v4, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3374
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$Pou98csAV1e4ds9MzirIJDlDCek;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$Pou98csAV1e4ds9MzirIJDlDCek;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, p2, v3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppBootstrapRemove(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppBootstrapRemoveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3382
    goto :goto_0

    .line 3380
    :catch_0
    move-exception v3

    .line 3381
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppBootstrapRemove"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3383
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v3, v2, Landroid/util/MutableInt;->value:I

    monitor-exit v0

    return v3

    .line 3384
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "handle":Landroid/util/MutableInt;
    .end local v4    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "expiry"    # I

    .line 3458
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 3459
    .local v0, "curve_t":Ljava/lang/String;
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    move-object v1, p3

    .line 3460
    .local v1, "key_t":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3461
    :try_start_0
    const-string v3, "dppConfiguratorAdd"

    .line 3462
    .local v3, "methodStr":Ljava/lang/String;
    new-instance v4, Landroid/util/MutableInt;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/util/MutableInt;-><init>(I)V

    .line 3463
    .local v4, "handle":Landroid/util/MutableInt;
    const-string v6, "dppConfiguratorAdd"

    .line 3464
    invoke-direct {p0, p1, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v6

    .line 3465
    .local v6, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v6, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    .line 3467
    :cond_2
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$NShjHdz1-hisPddiQQ1DBuXx7I8;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$NShjHdz1-hisPddiQQ1DBuXx7I8;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    invoke-interface {v6, v0, v1, p4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorAddCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3475
    goto :goto_2

    .line 3473
    :catch_0
    move-exception v5

    .line 3474
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "dppConfiguratorAdd"

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3476
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2
    iget v5, v4, Landroid/util/MutableInt;->value:I

    monitor-exit v2

    return v5

    .line 3477
    .end local v3    # "methodStr":Ljava/lang/String;
    .end local v4    # "handle":Landroid/util/MutableInt;
    .end local v6    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public dppConfiguratorGetKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 3552
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3553
    :try_start_0
    const-string v1, "dppConfiguratorGetKey"

    .line 3554
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 3555
    .local v2, "KEY":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    const-string v3, "dppConfiguratorGetKey"

    .line 3556
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v3

    .line 3557
    .local v3, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v3, :cond_0

    const-string v4, "-1"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 3559
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$RBi36-203ABCmvHFm6f6UxnQevw;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$RBi36-203ABCmvHFm6f6UxnQevw;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, p2, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppConfiguratorGetKey(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorGetKeyCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3567
    goto :goto_0

    .line 3565
    :catch_0
    move-exception v4

    .line 3566
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppConfiguratorGetKey"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3568
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 3569
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "KEY":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    .end local v3    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppConfiguratorRemove(Ljava/lang/String;I)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config_id"    # I

    .line 3489
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3490
    :try_start_0
    const-string v1, "dppConfiguratorRemove"

    .line 3491
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/util/MutableInt;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 3492
    .local v2, "handle":Landroid/util/MutableInt;
    const-string v4, "dppConfiguratorRemove"

    .line 3493
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v4

    .line 3494
    .local v4, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v4, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3496
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$e-5GRHbs6u8e0C1pOtvJM8TUpeU;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$e-5GRHbs6u8e0C1pOtvJM8TUpeU;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, p2, v3}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppConfiguratorRemove(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorRemoveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3504
    goto :goto_0

    .line 3502
    :catch_0
    move-exception v3

    .line 3503
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppConfiguratorRemove"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3505
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v3, v2, Landroid/util/MutableInt;->value:I

    monitor-exit v0

    return v3

    .line 3506
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "handle":Landroid/util/MutableInt;
    .end local v4    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppGetUri(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bootstrap_id"    # I

    .line 3338
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3339
    :try_start_0
    const-string v1, "dppGetUri"

    .line 3340
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 3341
    .local v2, "URI":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    const-string v3, "dppGetUri"

    .line 3342
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v3

    .line 3343
    .local v3, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v3, :cond_0

    const-string v4, "-1"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 3345
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$qhiJ8L_Fb0Qu9HQHF1rTXObaUYk;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$qhiJ8L_Fb0Qu9HQHF1rTXObaUYk;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, p2, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppGetUri(ILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppGetUriCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3353
    goto :goto_0

    .line 3351
    :catch_0
    move-exception v4

    .line 3352
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "dppGetUri"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3354
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 3355
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "URI":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    .end local v3    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dppListen(Ljava/lang/String;Ljava/lang/String;IZZ)I
    .locals 14
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "frequency"    # Ljava/lang/String;
    .param p3, "dpp_role"    # I
    .param p4, "qr_mutual"    # Z
    .param p5, "netrole_ap"    # Z

    move-object v1, p0

    .line 3402
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    return v2

    .line 3403
    :cond_0
    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3404
    :try_start_0
    const-string v0, "dppListen"

    move-object v4, v0

    .line 3405
    .local v4, "methodStr":Ljava/lang/String;
    new-instance v0, Landroid/util/MutableInt;

    invoke-direct {v0, v2}, Landroid/util/MutableInt;-><init>(I)V

    move-object v5, v0

    .line 3406
    .local v5, "handle":Landroid/util/MutableInt;
    const-string v0, "dppListen"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3407
    move-object v6, p1

    :try_start_1
    invoke-direct {v1, v6, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v0

    move-object v13, v0

    .line 3408
    .local v13, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v13, :cond_1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v2

    .line 3410
    :cond_1
    :try_start_2
    new-instance v12, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$JSR26jYC_doRJXe9RFy5-NEnuhc;

    invoke-direct {v12, v1, v5}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$JSR26jYC_doRJXe9RFy5-NEnuhc;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V

    move-object v7, v13

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v7 .. v12}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppStartListen(Ljava/lang/String;IZZLvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppStartListenCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3419
    goto :goto_0

    .line 3417
    :catch_0
    move-exception v0

    .line 3418
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "dppListen"

    invoke-direct {v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3420
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v0, v5, Landroid/util/MutableInt;->value:I

    monitor-exit v3

    return v0

    .line 3421
    .end local v4    # "methodStr":Ljava/lang/String;
    .end local v5    # "handle":Landroid/util/MutableInt;
    .end local v13    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v0

    move-object v6, p1

    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public dppStartAuth(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I
    .locals 20
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    move-object/from16 v1, p0

    .line 3518
    move-object/from16 v2, p2

    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 3519
    .local v7, "ssid":Ljava/lang/String;
    :goto_1
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->passphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_1
    iget-object v0, v2, Landroid/net/wifi/WifiDppConfig;->passphrase:Ljava/lang/String;

    goto :goto_2

    .line 3520
    .local v8, "passphrase":Ljava/lang/String;
    :goto_3
    iget-object v14, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3521
    :try_start_0
    const-string v0, "dppStartAuth"

    move-object v15, v0

    .line 3522
    .local v15, "methodStr":Ljava/lang/String;
    new-instance v0, Landroid/util/MutableInt;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Landroid/util/MutableInt;-><init>(I)V

    move-object v13, v0

    .line 3523
    .local v13, "Status":Landroid/util/MutableInt;
    const-string v0, "dppStartAuth"

    .line 3524
    move-object/from16 v12, p1

    invoke-direct {v1, v12, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v0

    move-object/from16 v16, v0

    .line 3525
    .local v16, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v16, :cond_2

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3527
    :cond_2
    :try_start_1
    iget v4, v2, Landroid/net/wifi/WifiDppConfig;->peer_bootstrap_id:I

    iget v5, v2, Landroid/net/wifi/WifiDppConfig;->own_bootstrap_id:I

    iget v6, v2, Landroid/net/wifi/WifiDppConfig;->dpp_role:I

    .line 3529
    iget v0, v2, Landroid/net/wifi/WifiDppConfig;->isAp:I

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-lez v0, :cond_3

    .line 3530
    move v0, v9

    goto :goto_4

    .line 3529
    :cond_3
    nop

    .line 3530
    move v0, v3

    :goto_4
    iget v10, v2, Landroid/net/wifi/WifiDppConfig;->isDpp:I

    if-lez v10, :cond_4

    move v10, v9

    goto :goto_5

    :cond_4
    move v10, v3

    :goto_5
    iget v11, v2, Landroid/net/wifi/WifiDppConfig;->conf_id:I

    iget v9, v2, Landroid/net/wifi/WifiDppConfig;->expiry:I

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$FE6pL-Y40v5jbgT2rVfRuqdIYbE;

    invoke-direct {v3, v1, v13}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$FE6pL-Y40v5jbgT2rVfRuqdIYbE;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3527
    move-object/from16 v17, v3

    move-object/from16 v3, v16

    move/from16 v18, v9

    move v9, v0

    move/from16 v12, v18

    move-object v2, v13

    move-object/from16 v13, v17

    .end local v13    # "Status":Landroid/util/MutableInt;
    .local v2, "Status":Landroid/util/MutableInt;
    :try_start_2
    invoke-interface/range {v3 .. v13}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppStartAuth(IIILjava/lang/String;Ljava/lang/String;ZZIILvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppStartAuthCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3538
    goto :goto_7

    .line 3536
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v2    # "Status":Landroid/util/MutableInt;
    .restart local v13    # "Status":Landroid/util/MutableInt;
    :catch_1
    move-exception v0

    move-object v2, v13

    .line 3537
    .end local v13    # "Status":Landroid/util/MutableInt;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "Status":Landroid/util/MutableInt;
    :goto_6
    :try_start_3
    const-string v3, "dppStartAuth"

    invoke-direct {v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3539
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7
    iget v0, v2, Landroid/util/MutableInt;->value:I

    monitor-exit v14

    return v0

    .line 3540
    .end local v2    # "Status":Landroid/util/MutableInt;
    .end local v15    # "methodStr":Ljava/lang/String;
    .end local v16    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public dppStopListen(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 3431
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3432
    :try_start_0
    const-string v1, "dppStopListen"

    .line 3433
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "dppStopListen"

    .line 3434
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v2

    .line 3435
    .local v2, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3437
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->dppStopListen()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 3438
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "dppStopListen"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 3439
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 3440
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "dppStopListen"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3441
    monitor-exit v0

    return v3

    .line 3443
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public enableAutoReconnect(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2460
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2461
    :try_start_0
    const-string v1, "enableAutoReconnect"

    .line 2462
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "enableAutoReconnect"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2463
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2465
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->enableAutoReconnect(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2466
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "enableAutoReconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2467
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2468
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "enableAutoReconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2469
    monitor-exit v0

    return v3

    .line 2471
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method enableVerboseLogging(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 185
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushAllHlp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2240
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2241
    :try_start_0
    const-string v1, "filsHlpFlushRequest"

    .line 2242
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "filsHlpFlushRequest"

    .line 2243
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v2

    .line 2244
    .local v2, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2246
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->filsHlpFlushRequest()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2247
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "filsHlpFlushRequest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2248
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2249
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "filsHlpFlushRequest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2250
    monitor-exit v0

    return v3

    .line 2252
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capaType"    # Ljava/lang/String;

    .line 2181
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2182
    :try_start_0
    const-string v1, "getCapabilities"

    .line 2183
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 2185
    .local v2, "capability":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    const-string v3, ""

    iput-object v3, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 2186
    const-string v3, "getCapabilities"

    .line 2187
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v3

    .line 2188
    .local v3, "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v3, :cond_0

    iget-object v4, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 2190
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$sNAq9CepHZfHo6B1c5htZsmUDvs;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$sNAq9CepHZfHo6B1c5htZsmUDvs;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, p2, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->getCapabilities(Ljava/lang/String;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$getCapabilitiesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2198
    goto :goto_0

    .line 2196
    :catch_0
    move-exception v4

    .line 2197
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "getCapabilities"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2199
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 2200
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "capability":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    .end local v3    # "iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCurrentNetworkEapAnonymousIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1165
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1166
    :try_start_0
    const-string v1, "getCurrentNetworkEapAnonymousIdentity"

    .line 1167
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1169
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1170
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->fetchEapAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1171
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentNetworkWpsNfcConfigurationToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1149
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1150
    :try_start_0
    const-string v1, "getCurrentNetworkWpsNfcConfigurationToken"

    .line 1151
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1153
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1154
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1155
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1941
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1942
    :try_start_0
    const-string v1, "getMacAddress"

    .line 1943
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getMacAddress"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1944
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 1945
    :cond_0
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1947
    .local v3, "gotMac":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$Qj1RKRO_qPFprwttCvbNxOY1I3E;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$Qj1RKRO_qPFprwttCvbNxOY1I3E;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->getMacAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1955
    goto :goto_0

    .line 1953
    :catch_0
    move-exception v4

    .line 1954
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "getMacAddress"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1956
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 1957
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v3    # "gotMac":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 757
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getStaIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .locals 2
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 796
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getStaIfaceMockableV1_1(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
    .locals 2
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 803
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    nop

    .line 805
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;

    move-result-object v1

    monitor-exit v0

    .line 804
    return-object v1

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getStaNetworkMockable(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "iSupplicantStaNetwork"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 1340
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {v1, p2, p1, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V

    .line 1344
    .local v1, "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    nop

    .line 1345
    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->enableVerboseLogging(Z)V

    .line 1347
    monitor-exit v0

    return-object v1

    .line 1348
    .end local v1    # "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 768
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Failed to get ISupplicant"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 768
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v1

    .line 786
    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 792
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 788
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Failed to get ISupplicant"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 792
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getSupplicantVendorMockable()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    invoke-static {}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->getService()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 779
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 775
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "SupplicantStaIfaceHal"

    const-string v3, "Failed to get ISupplicant"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 779
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getVendorStaIfaceMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    .locals 2
    .param p1, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    .line 810
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_0
    invoke-interface {p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getVendorStaNetworkMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;
    .locals 2
    .param p1, "network"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;

    .line 816
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    invoke-interface {p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initialize()Z
    .locals 8

    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "Registering ISupplicant service ready callback."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 219
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 220
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 221
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 222
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 225
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 228
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 229
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 230
    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "Failed to get HIDL Service Manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 233
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToServiceManagerDeath()Z

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_3

    .line 234
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v4

    .line 238
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    const-string v6, "default"

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v2, v5, v6, v7}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 240
    const-string v2, "SupplicantStaIfaceHal"

    const-string v5, "Failed to register for notifications to android.hardware.wifi.supplicant@1.0::ISupplicant"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    :try_start_6
    monitor-exit v0

    return v4

    .line 249
    :cond_4
    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while trying to register a listener for ISupplicant service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    .line 250
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    return v3

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public initiateAnqpQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1867
    .local p3, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .local p4, "hs20SubTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1869
    nop

    .line 1871
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1869
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateAnqpQuery(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1876
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1872
    :catch_0
    move-exception v1

    .line 1873
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1874
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1876
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initiateHs20IconQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 1906
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1908
    nop

    .line 1909
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1908
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1914
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1910
    :catch_0
    move-exception v1

    .line 1911
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1912
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1914
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initiateTdlsDiscover(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;

    .line 1762
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1764
    nop

    .line 1765
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1764
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsDiscover(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1770
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1766
    :catch_0
    move-exception v1

    .line 1767
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1768
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1770
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initiateTdlsSetup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;

    .line 1796
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1798
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsSetup(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1803
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1799
    :catch_0
    move-exception v1

    .line 1800
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1801
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1803
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initiateTdlsTeardown(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;

    .line 1828
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1830
    nop

    .line 1831
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1830
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsTeardown(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1836
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1832
    :catch_0
    move-exception v1

    .line 1833
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1834
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1836
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isInitializationComplete()Z
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 731
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInitializationStarted()Z
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 722
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadNetworks(Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseArray;)Z
    .locals 17
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p3, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1040
    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1041
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->listNetworks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v5, v0

    .line 1042
    .local v5, "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 1043
    const-string v0, "SupplicantStaIfaceHal"

    const-string v7, "Failed to list networks"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    monitor-exit v4

    return v6

    .line 1046
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 1047
    .local v8, "networkId":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getNetwork(Ljava/lang/String;I)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v0

    move-object v9, v0

    .line 1048
    .local v9, "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v9, :cond_1

    .line 1049
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get network with ID: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    monitor-exit v4

    return v6

    .line 1052
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v10, v0

    .line 1053
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 1054
    .local v11, "networkExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v12, v6

    .line 1056
    .local v12, "loadSuccess":Z
    :try_start_1
    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->loadWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v12, v0

    .line 1059
    goto :goto_1

    .line 1057
    :catch_0
    move-exception v0

    move-object v13, v0

    .line 1058
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v13, "SupplicantStaIfaceHal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while loading config params: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    if-nez v12, :cond_2

    .line 1061
    const-string v0, "SupplicantStaIfaceHal"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to load wifi configuration for network with ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ". Skipping..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    goto :goto_0

    .line 1066
    :cond_2
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 1067
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 1069
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1070
    const-string v0, "configKey"

    .line 1071
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1072
    .local v0, "configKey":Ljava/lang/String;
    move-object/from16 v13, p2

    :try_start_3
    invoke-interface {v13, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiConfiguration;

    .line 1073
    .local v14, "duplicateConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v14, :cond_3

    .line 1075
    const-string v15, "SupplicantStaIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "Replacing duplicate network: "

    .end local v0    # "configKey":Ljava/lang/String;
    .local v16, "configKey":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeNetwork(Ljava/lang/String;I)Z

    .line 1077
    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1079
    .end local v8    # "networkId":Ljava/lang/Integer;
    .end local v9    # "network":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "networkExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "loadSuccess":Z
    .end local v14    # "duplicateConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "configKey":Ljava/lang/String;
    :cond_3
    nop

    .line 1046
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1080
    :cond_4
    move-object/from16 v13, p2

    const/4 v0, 0x1

    monitor-exit v4

    return v0

    .line 1081
    .end local v5    # "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v13, p2

    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public reassociate(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1676
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1677
    :try_start_0
    const-string v1, "reassociate"

    .line 1678
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "reassociate"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1679
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1681
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reassociate()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1682
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "reassociate"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1683
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1684
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "reassociate"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1685
    monitor-exit v0

    return v3

    .line 1687
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public reconnect(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1697
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1698
    :try_start_0
    const-string v1, "reconnect"

    .line 1699
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "reconnect"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1700
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1702
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1703
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "reconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1704
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1705
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "reconnect"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1706
    monitor-exit v0

    return v3

    .line 1708
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerDeathHandler(Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;)Z
    .locals 3
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    .line 662
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    if-eqz v1, :cond_0

    .line 664
    const-string v1, "SupplicantStaIfaceHal"

    const-string v2, "Death handler already present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;

    .line 667
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 668
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1106
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->listNetworks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1108
    .local v1, "networks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1109
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "removeAllNetworks failed, got null networks"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    monitor-exit v0

    return v2

    .line 1112
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1113
    .local v4, "id":I
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeNetwork(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1114
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAllNetworks failed to remove network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    monitor-exit v0

    return v2

    .line 1117
    .end local v4    # "id":I
    :cond_1
    goto :goto_0

    .line 1120
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandles:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1123
    .end local v1    # "networks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNetworkIfCurrent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "networkId"    # I

    .line 1092
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1093
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    .line 1097
    :cond_0
    monitor-exit v0

    .line 1098
    return-void

    .line 1097
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRxFilter(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 2052
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2054
    packed-switch p2, :pswitch_data_0

    .line 2062
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    goto :goto_1

    .line 2059
    :pswitch_0
    const/4 v1, 0x1

    .line 2060
    .local v1, "halType":B
    goto :goto_0

    .line 2056
    .end local v1    # "halType":B
    :pswitch_1
    const/4 v1, 0x0

    .line 2057
    .restart local v1    # "halType":B
    nop

    .line 2063
    :goto_0
    nop

    .line 2065
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeRxFilter(Ljava/lang/String;B)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2062
    .end local v1    # "halType":B
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Rx Filter type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2066
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public roamToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1006
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1007
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId(Ljava/lang/String;)I

    move-result v1

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_0

    .line 1008
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot roam to a different network, initiate new connection. Current network ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->connectToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1012
    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, "bssid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roamToNetwork"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (bssid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    .line 1015
    const-string v2, "roamToNetwork"

    .line 1016
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v2

    .line 1017
    .local v2, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1021
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reassociate(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1022
    const-string v4, "Failed to trigger reassociate"

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 1023
    monitor-exit v0

    return v3

    .line 1025
    :cond_2
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 1018
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set new bssid on network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    .line 1019
    monitor-exit v0

    return v3

    .line 1026
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapIdentityResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "encryptedIdentity"    # Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1185
    :try_start_0
    const-string v1, "sendCurrentNetworkEapIdentityResponse"

    .line 1186
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1188
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1189
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapIdentityResponse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1190
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimGsmAuthFailure(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimGsmAuthFailure"

    .line 1220
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1222
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1223
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimGsmAuthFailure()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1224
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimGsmAuthResponse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "paramsStr"    # Ljava/lang/String;

    .line 1202
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimGsmAuthResponse"

    .line 1204
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1206
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1207
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimGsmAuthResponse(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1208
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimUmtsAuthFailure(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1270
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1271
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimUmtsAuthFailure"

    .line 1272
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1274
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1275
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAuthFailure()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1276
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimUmtsAuthResponse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "paramsStr"    # Ljava/lang/String;

    .line 1236
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimUmtsAuthResponse"

    .line 1238
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1240
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1241
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAuthResponse(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1242
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCurrentNetworkEapSimUmtsAutsResponse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "paramsStr"    # Ljava/lang/String;

    .line 1254
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1255
    :try_start_0
    const-string v1, "sendCurrentNetworkEapSimUmtsAutsResponse"

    .line 1256
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1258
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1259
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAutsResponse(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1260
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBtCoexistenceMode(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 2094
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2096
    packed-switch p2, :pswitch_data_0

    .line 2107
    :try_start_0
    const-string v1, "SupplicantStaIfaceHal"

    goto :goto_1

    .line 2104
    :pswitch_0
    const/4 v1, 0x2

    .line 2105
    .local v1, "halMode":B
    goto :goto_0

    .line 2101
    .end local v1    # "halMode":B
    :pswitch_1
    const/4 v1, 0x1

    .line 2102
    .restart local v1    # "halMode":B
    goto :goto_0

    .line 2098
    .end local v1    # "halMode":B
    :pswitch_2
    const/4 v1, 0x0

    .line 2099
    .restart local v1    # "halMode":B
    nop

    .line 2108
    :goto_0
    nop

    .line 2110
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBtCoexistenceMode(Ljava/lang/String;B)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2107
    .end local v1    # "halMode":B
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Bt Coex mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2136
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2137
    :try_start_0
    const-string v1, "setBtCoexistenceScanModeEnabled"

    .line 2138
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setBtCoexistenceScanModeEnabled"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2139
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2141
    :cond_0
    nop

    .line 2142
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2143
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setBtCoexistenceScanModeEnabled"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2144
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2145
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setBtCoexistenceScanModeEnabled"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2146
    monitor-exit v0

    return v3

    .line 2148
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setConcurrencyPriority(Z)Z
    .locals 2
    .param p1, "isStaHigherPriority"    # Z

    .line 2513
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2514
    if-eqz p1, :cond_0

    .line 2515
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setConcurrencyPriority(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2519
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2517
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setConcurrencyPriority(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2519
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "codeStr"    # Ljava/lang/String;

    .line 2211
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2212
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2213
    :cond_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCountryCode(Ljava/lang/String;[B)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentNetworkBssid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssidStr"    # Ljava/lang/String;

    .line 1134
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1135
    :try_start_0
    const-string v1, "setCurrentNetworkBssid"

    .line 1136
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaNetworkAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    .line 1137
    .local v1, "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1138
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1139
    .end local v1    # "networkHandle":Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExternalSim(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "useExternalSim"    # Z

    .line 2444
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2445
    :try_start_0
    const-string v1, "setExternalSim"

    .line 2446
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setExternalSim"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2447
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2449
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setExternalSim(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2450
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setExternalSim"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2451
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2452
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setExternalSim"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2453
    monitor-exit v0

    return v3

    .line 2455
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLogLevel(Z)Z
    .locals 3
    .param p1, "turnOnVerbose"    # Z

    .line 2481
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2482
    if-eqz p1, :cond_0

    .line 2483
    const/4 v1, 0x1

    goto :goto_0

    .line 2484
    :cond_0
    const/4 v1, 0x2

    .line 2485
    .local v1, "logLevel":I
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setDebugParams(IZZ)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2486
    .end local v1    # "logLevel":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPowerSave(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1740
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1741
    :try_start_0
    const-string v1, "setPowerSave"

    .line 1742
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setPowerSave"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1743
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1745
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setPowerSave(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1746
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setPowerSave"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1747
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1748
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setPowerSave"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1749
    monitor-exit v0

    return v3

    .line 1751
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSuspendModeEnabled(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2159
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2160
    :try_start_0
    const-string v1, "setSuspendModeEnabled"

    .line 2161
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setSuspendModeEnabled"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 2162
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2164
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setSuspendModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2165
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setSuspendModeEnabled"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2166
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2167
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setSuspendModeEnabled"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2168
    monitor-exit v0

    return v3

    .line 2170
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsConfigMethods(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "configMethodsStr"    # Ljava/lang/String;

    .line 1644
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1645
    const/4 v1, 0x0

    .line 1646
    .local v1, "configMethodsMask":S
    :try_start_0
    const-string v2, "\\s+"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1647
    .local v2, "configMethodsStrArr":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1648
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stringToWpsConfigMethod(Ljava/lang/String;)S

    move-result v4

    or-int/2addr v4, v1

    int-to-short v1, v4

    .line 1647
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1650
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsConfigMethods(Ljava/lang/String;S)Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1651
    .end local v1    # "configMethodsMask":S
    .end local v2    # "configMethodsStrArr":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWpsDeviceName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 1487
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1488
    :try_start_0
    const-string v1, "setWpsDeviceName"

    .line 1489
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsDeviceName"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1490
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1492
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1493
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsDeviceName"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1494
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1495
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsDeviceName"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1496
    monitor-exit v0

    return v3

    .line 1498
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsDeviceType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "typeStr"    # Ljava/lang/String;

    .line 1509
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1511
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/SupplicantStaIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1512
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 1516
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 1517
    .local v3, "categ":S
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1518
    .local v5, "oui":[B
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    .line 1520
    .local v4, "subCateg":S
    const/16 v6, 0x8

    new-array v6, v6, [B

    .line 1521
    .local v6, "bytes":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1522
    .local v7, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1523
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1524
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1525
    invoke-direct {p0, p1, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsDeviceType(Ljava/lang/String;[B)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v8

    .line 1513
    .end local v3    # "categ":S
    .end local v4    # "subCateg":S
    .end local v5    # "oui":[B
    .end local v6    # "bytes":[B
    .end local v7    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    :try_start_2
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed WPS device type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1514
    :try_start_3
    monitor-exit v0

    return v1

    .line 1530
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1526
    :catch_0
    move-exception v2

    .line 1527
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1528
    monitor-exit v0

    return v1

    .line 1530
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public setWpsManufacturer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "manufacturer"    # Ljava/lang/String;

    .line 1556
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1557
    :try_start_0
    const-string v1, "setWpsManufacturer"

    .line 1558
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsManufacturer"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1559
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1561
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1562
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsManufacturer"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1563
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1564
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsManufacturer"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1565
    monitor-exit v0

    return v3

    .line 1567
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsModelName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "modelName"    # Ljava/lang/String;

    .line 1578
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1579
    :try_start_0
    const-string v1, "setWpsModelName"

    .line 1580
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsModelName"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1581
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1583
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1584
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsModelName"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1585
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1586
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsModelName"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1587
    monitor-exit v0

    return v3

    .line 1589
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsModelNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "modelNumber"    # Ljava/lang/String;

    .line 1600
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1601
    :try_start_0
    const-string v1, "setWpsModelNumber"

    .line 1602
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsModelNumber"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1603
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1605
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1606
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsModelNumber"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1607
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1608
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsModelNumber"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1609
    monitor-exit v0

    return v3

    .line 1611
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsSerialNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "serialNumber"    # Ljava/lang/String;

    .line 1622
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1623
    :try_start_0
    const-string v1, "setWpsSerialNumber"

    .line 1624
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWpsSerialNumber"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1625
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1627
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1628
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "setWpsSerialNumber"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1629
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1630
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setWpsSerialNumber"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1631
    monitor-exit v0

    return v3

    .line 1633
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setupIface(Ljava/lang/String;)Z
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    const-string v1, "setupIface"

    .line 370
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setupIface"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit v0

    return v3

    .line 371
    :cond_0
    const-string v2, "setupIface"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v3

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isV1_1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addIfaceV1_1(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v2

    .local v2, "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    goto :goto_0

    .line 377
    .end local v2    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getIfaceV1_0(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v2

    .line 379
    .restart local v2    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :goto_0
    if-nez v2, :cond_3

    .line 380
    const-string v4, "SupplicantStaIfaceHal"

    const-string v5, "setupIface got null iface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    monitor-exit v0

    return v3

    .line 383
    :cond_3
    new-instance v4, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 385
    .local v4, "callback":Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isV1_1()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    nop

    .line 387
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaIfaceMockableV1_1(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;

    move-result-object v5

    .line 388
    .local v5, "iface":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
    new-instance v6, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;

    invoke-direct {v6, p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)V

    .line 391
    .local v6, "callbackV1_1":Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;
    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerCallbackV1_1(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 392
    monitor-exit v0

    return v3

    .line 394
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .end local v5    # "iface":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;
    .end local v6    # "callbackV1_1":Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;
    goto :goto_1

    .line 397
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v5

    .line 399
    .local v5, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    invoke-direct {p0, v5, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 400
    monitor-exit v0

    return v3

    .line 402
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v5    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    :goto_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->vendor_setupIface(Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 407
    const-string v3, "SupplicantStaIfaceHal"

    const-string v5, "Failed to create vendor setupiface"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_7
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 410
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .end local v4    # "callback":Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startRxFilter(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1967
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1968
    :try_start_0
    const-string v1, "startRxFilter"

    .line 1969
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "startRxFilter"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1970
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1972
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1973
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "startRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1974
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1975
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "startRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1976
    monitor-exit v0

    return v3

    .line 1978
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssidStr"    # Ljava/lang/String;

    .line 2327
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2329
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPbc(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 2334
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2330
    :catch_0
    move-exception v1

    .line 2331
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2332
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2334
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssidStr"    # Ljava/lang/String;

    .line 2384
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2386
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPinDisplay(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 2391
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2387
    :catch_0
    move-exception v1

    .line 2388
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2389
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2391
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .line 2361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2363
    :try_start_0
    const-string v2, "startWpsPinKeypad"

    .line 2364
    .local v2, "methodStr":Ljava/lang/String;
    const-string v3, "startWpsPinKeypad"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v3

    .line 2365
    .local v3, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    if-nez v3, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 2367
    :cond_1
    :try_start_1
    invoke-interface {v3, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2368
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "startWpsPinKeypad"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2369
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 2370
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "startWpsPinKeypad"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2371
    monitor-exit v0

    return v1

    .line 2373
    .end local v2    # "methodStr":Ljava/lang/String;
    .end local v3    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssidStr"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .line 2291
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2292
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2294
    :cond_0
    nop

    .line 2295
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 2294
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsRegistrar(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    .line 2296
    :catch_0
    move-exception v1

    .line 2297
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2298
    monitor-exit v0

    return v2

    .line 2292
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    .line 2300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopRxFilter(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1988
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1989
    :try_start_0
    const-string v1, "stopRxFilter"

    .line 1990
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "stopRxFilter"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    .line 1991
    .local v2, "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1993
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->stopRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1994
    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v5, "stopRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 1995
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v4

    .line 1996
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "stopRxFilter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1997
    monitor-exit v0

    return v3

    .line 1999
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "iface":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    const-string v1, "teardownIface"

    .line 610
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "teardownIface"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return v3

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isV1_1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeIfaceV1_1(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 613
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove iface = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    monitor-exit v0

    return v3

    .line 617
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 618
    const-string v2, "SupplicantStaIfaceHal"

    const-string v4, "Trying to teardown unknown inteface"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    monitor-exit v0

    return v3

    .line 621
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 622
    const-string v2, "SupplicantStaIfaceHal"

    const-string v4, "Trying to teardown unknown vendor interface"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    monitor-exit v0

    return v3

    .line 625
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 628
    .end local v1    # "methodStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public terminate()V
    .locals 4

    .line 738
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_0
    const-string v1, "terminate"

    .line 740
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "terminate"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 742
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isV1_1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->terminate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    :cond_1
    goto :goto_0

    .line 745
    :catch_0
    move-exception v2

    .line 746
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "terminate"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 748
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 749
    return-void

    .line 748
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public vendor_setupIface(Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    .line 420
    const-string v0, "vendor_setupIface"

    .line 421
    .local v0, "methodStr":Ljava/lang/String;
    const-string v1, "vendor_setupIface"

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantVendorStaIfaceAndLogFailure(Ljava/lang/String;Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 422
    const-string v1, "SupplicantStaIfaceHal"

    const-string v3, "Already created vendor setupinterface"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v2

    .line 425
    :cond_0
    const/4 v1, 0x0

    .line 427
    .local v1, "Vendor_ifaceHwBinder":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isVendor_2_0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    const-string v3, "SupplicantStaIfaceHal"

    const-string v4, "Try to get Vendor HIDL@2.0 interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorIfaceV2_0(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    move-result-object v1

    .line 431
    :cond_1
    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 432
    const-string v2, "SupplicantStaIfaceHal"

    const-string v4, "Failed to get vendor iface binder"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v3

    .line 436
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getVendorStaIfaceMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;

    move-result-object v4

    .line 437
    .local v4, "vendor_iface":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;
    if-nez v4, :cond_3

    .line 438
    const-string v2, "SupplicantStaIfaceHal"

    const-string v5, "Failed to get ISupplicantVendorStaIface proxy"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v3

    .line 442
    :cond_3
    const-string v5, "SupplicantStaIfaceHal"

    const-string v6, "Successful get Vendor sta interface"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToSupplicantVendorStaIfaceDeath(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 445
    return v3

    .line 448
    :cond_4
    if-eqz v4, :cond_6

    .line 449
    new-instance v3, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)V

    .line 451
    .local v3, "vendorcallback":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;
    invoke-direct {p0, v4, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 452
    const-string v5, "SupplicantStaIfaceHal"

    const-string v6, "Failed to register Vendor callback"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    nop

    .line 456
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantVendorStaIfaceCallbacks:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .end local v3    # "vendorcallback":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback;
    :cond_6
    :goto_0
    return v2
.end method
