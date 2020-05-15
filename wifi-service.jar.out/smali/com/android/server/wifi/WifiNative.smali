.class public Lcom/android/server/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNative$RoamingConfig;,
        Lcom/android/server/wifi/WifiNative$RoamingCapabilities;,
        Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;,
        Lcom/android/server/wifi/WifiNative$RxFateReport;,
        Lcom/android/server/wifi/WifiNative$TxFateReport;,
        Lcom/android/server/wifi/WifiNative$FateReport;,
        Lcom/android/server/wifi/WifiNative$RingBufferStatus;,
        Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;,
        Lcom/android/server/wifi/WifiNative$RttEventHandler;,
        Lcom/android/server/wifi/WifiNative$PnoEventHandler;,
        Lcom/android/server/wifi/WifiNative$ScanEventHandler;,
        Lcom/android/server/wifi/WifiNative$PnoSettings;,
        Lcom/android/server/wifi/WifiNative$PnoNetwork;,
        Lcom/android/server/wifi/WifiNative$ScanSettings;,
        Lcom/android/server/wifi/WifiNative$HiddenNetwork;,
        Lcom/android/server/wifi/WifiNative$BucketSettings;,
        Lcom/android/server/wifi/WifiNative$ChannelSettings;,
        Lcom/android/server/wifi/WifiNative$ScanCapabilities;,
        Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;,
        Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;,
        Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;,
        Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;,
        Lcom/android/server/wifi/WifiNative$SoftApListener;,
        Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;,
        Lcom/android/server/wifi/WifiNative$TxPacketCounters;,
        Lcom/android/server/wifi/WifiNative$SignalPollResult;,
        Lcom/android/server/wifi/WifiNative$InterfaceCallback;,
        Lcom/android/server/wifi/WifiNative$StatusListener;,
        Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;,
        Lcom/android/server/wifi/WifiNative$HostapdDeathHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$WificondDeathHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$VendorHalDeathHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;,
        Lcom/android/server/wifi/WifiNative$IfaceManager;,
        Lcom/android/server/wifi/WifiNative$Iface;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field public static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field public static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field private static final CONNECT_TO_HOSTAPD_RETRY_INTERVAL_MS:I = 0x64

.field private static final CONNECT_TO_HOSTAPD_RETRY_TIMES:I = 0x32

.field private static final CONNECT_TO_SUPPLICANT_RETRY_INTERVAL_MS:I = 0x64

.field private static final CONNECT_TO_SUPPLICANT_RETRY_TIMES:I = 0x32

.field public static final DISABLE_FIRMWARE_ROAMING:I = 0x0

.field public static final EAP_SIM_VENDOR_SPECIFIC_CERT_EXPIRED:I = 0x4001

.field public static final ENABLE_FIRMWARE_ROAMING:I = 0x1

.field public static final RX_FILTER_TYPE_V4_MULTICAST:I = 0x0

.field public static final RX_FILTER_TYPE_V6_MULTICAST:I = 0x1

.field public static final SCAN_TYPE_HIGH_ACCURACY:I = 0x2

.field public static final SCAN_TYPE_LOW_LATENCY:I = 0x0

.field public static final SCAN_TYPE_LOW_POWER:I = 0x1

.field public static final SIM_AUTH_RESP_TYPE_GSM_AUTH:Ljava/lang/String; = "GSM-AUTH"

.field public static final SIM_AUTH_RESP_TYPE_UMTS_AUTH:Ljava/lang/String; = "UMTS-AUTH"

.field public static final SIM_AUTH_RESP_TYPE_UMTS_AUTS:Ljava/lang/String; = "UMTS-AUTS"

.field private static final TAG:Ljava/lang/String; = "WifiNative"

.field public static final WIFI_SCAN_FAILED:I = 0x3

.field public static final WIFI_SCAN_RESULTS_AVAILABLE:I = 0x0

.field public static final WIFI_SCAN_THRESHOLD_NUM_SCANS:I = 0x1

.field public static final WIFI_SCAN_THRESHOLD_PERCENT:I = 0x2


# instance fields
.field private final mHostapdHal:Lcom/android/server/wifi/HostapdHal;

.field private final mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

.field private mLock:Ljava/lang/Object;

.field private final mNwManagementService:Landroid/os/INetworkManagementService;

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private mStatusListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/wifi/WifiNative$StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private final mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

.field private final mWificondControl:Lcom/android/server/wifi/WificondControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3081
    const-string v0, "wifi-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3082
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->registerNatives()I

    .line 3083
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/SupplicantStaIfaceHal;Lcom/android/server/wifi/HostapdHal;Lcom/android/server/wifi/WificondControl;Lcom/android/server/wifi/WifiMonitor;Landroid/os/INetworkManagementService;Lcom/android/server/wifi/PropertyService;Lcom/android/server/wifi/WifiMetrics;)V
    .locals 2
    .param p1, "vendorHal"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p2, "staIfaceHal"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .param p3, "hostapdHal"    # Lcom/android/server/wifi/HostapdHal;
    .param p4, "condControl"    # Lcom/android/server/wifi/WificondControl;
    .param p5, "wifiMonitor"    # Lcom/android/server/wifi/WifiMonitor;
    .param p6, "nwService"    # Landroid/os/INetworkManagementService;
    .param p7, "propertyService"    # Lcom/android/server/wifi/PropertyService;
    .param p8, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    .line 275
    new-instance v0, Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;-><init>(Lcom/android/server/wifi/WifiNative$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mStatusListeners:Ljava/util/HashSet;

    .line 90
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    .line 91
    iput-object p2, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 92
    iput-object p3, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    .line 93
    iput-object p4, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    .line 94
    iput-object p5, p0, Lcom/android/server/wifi/WifiNative;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 95
    iput-object p6, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    .line 96
    iput-object p7, p0, Lcom/android/server/wifi/WifiNative;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    .line 97
    iput-object p8, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiNative;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 73
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->onNativeDaemonDeath()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$Iface;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiNative$Iface;
    .param p2, "x2"    # Z

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNative;->onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiNative;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiNative$IfaceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiNative;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$Iface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    return-void
.end method

.method private createApIface(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 713
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;

    iget v3, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 718
    :cond_0
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring createApIface."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->handleIfaceCreationWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createStaIface(Lcom/android/server/wifi/WifiNative$Iface;Z)Ljava/lang/String;
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;
    .param p2, "lowPrioritySta"    # Z

    .line 696
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;

    iget v3, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wifi/WifiVendorHal;->createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 701
    :cond_0
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring createStaIface."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->handleIfaceCreationWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleIfaceCreationWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;
    .locals 5
    .param p1, "newIface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 679
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->removeExistingIface(I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 681
    .local v1, "existingIface":Lcom/android/server/wifi/WifiNative$Iface;
    if-eqz v1, :cond_0

    .line 682
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 683
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully torn down "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    const-string v3, "wifi.interface"

    const-string v4, "wlan0"

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/PropertyService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 687
    .end local v1    # "existingIface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleIfaceRemovalWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Z
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 728
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$700(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 730
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 731
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully torn down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initializeNwParamsForClientInterface(Ljava/lang/String;)V
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 857
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "ie":Ljava/lang/IllegalStateException;
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to change interface settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ie":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 858
    :catch_1
    move-exception v0

    .line 859
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to change interface settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 863
    :goto_1
    return-void
.end method

.method private onBridgeInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 455
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->unregisterNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister network observer on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->stopHalAndWificondIfNecessary()V

    .line 460
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onClientInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 414
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiMonitor;->stopMonitoring(Ljava/lang/String;)V

    .line 416
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->unregisterNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister network observer on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->teardownIface(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to teardown iface in supplicant on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WificondControl;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 423
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to teardown iface in wificond on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->stopSupplicantIfNecessary()V

    .line 426
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->stopHalAndWificondIfNecessary()V

    .line 427
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->removeFstInterface()V

    .line 428
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V
    .locals 3
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 465
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 467
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->onClientInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    goto :goto_0

    .line 468
    :cond_0
    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-nez v1, :cond_1

    .line 469
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->onSoftApInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    goto :goto_0

    .line 470
    :cond_1
    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 471
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->onBridgeInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 474
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$InterfaceCallback;->onDestroyed(Ljava/lang/String;)V

    .line 475
    monitor-exit v0

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;
    .param p2, "isUp"    # Z

    .line 570
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-boolean v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->isUp:Z

    if-ne p2, v1, :cond_1

    .line 573
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 574
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface status unchanged on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", Ignoring..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    monitor-exit v0

    return-void

    .line 579
    :cond_1
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface state changed on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isUp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-eqz p2, :cond_2

    .line 581
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$InterfaceCallback;->onUp(Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$InterfaceCallback;->onDown(Ljava/lang/String;)V

    .line 584
    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 585
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumClientInterfaceDown()V

    goto :goto_0

    .line 586
    :cond_3
    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 588
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSoftApInterfaceDown()V

    .line 591
    :cond_5
    :goto_0
    iput-boolean p2, p1, Lcom/android/server/wifi/WifiNative$Iface;->isUp:Z

    .line 592
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onNativeDaemonDeath()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiNative$StatusListener;

    .line 513
    .local v1, "listener":Lcom/android/server/wifi/WifiNative$StatusListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$StatusListener;->onStatusChanged(Z)V

    .line 514
    .end local v1    # "listener":Lcom/android/server/wifi/WifiNative$StatusListener;
    goto :goto_0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiNative$StatusListener;

    .line 516
    .restart local v1    # "listener":Lcom/android/server/wifi/WifiNative$StatusListener;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$StatusListener;->onStatusChanged(Z)V

    .line 517
    .end local v1    # "listener":Lcom/android/server/wifi/WifiNative$StatusListener;
    goto :goto_1

    .line 518
    :cond_1
    return-void
.end method

.method private onSoftApInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 433
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->unregisterNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister network observer on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/HostapdHal;->isVendorHostapdHal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/HostapdHal;->removeVendorAccessPoint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 439
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove vendor access point on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/HostapdHal;->removeAccessPoint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 442
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove access point on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->stopHostapdIfNecessary(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WificondControl;->tearDownSoftApInterface(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 446
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to teardown iface in wificond on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->stopHalAndWificondIfNecessary()V

    .line 449
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->removeFstInterface()V

    .line 450
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native readKernelLogNative()[B
.end method

.method private static native registerNatives()I
.end method

.method private registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z
    .locals 2
    .param p1, "observer"    # Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 392
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 394
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    nop

    .line 398
    const/4 v0, 0x1

    return v0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private removeApIface(Lcom/android/server/wifi/WifiNative$Iface;)Z
    .locals 3
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 762
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->removeApIface(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 766
    :cond_0
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring removeApIface."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->handleIfaceRemovalWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 769
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeFstInterface()V
    .locals 5

    .line 917
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1900(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v0

    .line 918
    .local v0, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v0, :cond_0

    .line 919
    return-void

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v2, v0, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$700(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 929
    :catch_0
    move-exception v1

    .line 930
    .local v1, "ie":Ljava/lang/IllegalStateException;
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 927
    :catch_1
    move-exception v1

    .line 928
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 932
    :goto_1
    return-void
.end method

.method private removeStaIface(Lcom/android/server/wifi/WifiNative$Iface;)Z
    .locals 3
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 742
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WificondControl;->unsubscribeScan(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    const-string v1, "WifiNative"

    const-string v2, "Unsubscribe scan failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->removeStaIface(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 752
    :cond_1
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring removeStaIface."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->handleIfaceRemovalWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 755
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setupFstInterface(Lcom/android/server/wifi/WifiNative$Iface;)Z
    .locals 9
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 867
    const-string v0, "persist.vendor.fst.rate.upgrade.en"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 868
    .local v0, "fstEnabled":I
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fst "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const-string v5, "enabled"

    goto :goto_0

    :cond_0
    const-string v5, "disabled"

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    if-eq v0, v4, :cond_1

    .line 870
    const-string v1, "WifiNative"

    const-string v2, "FST disabled, not creating FST interface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return v4

    .line 873
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v3, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-ne v3, v4, :cond_2

    .line 874
    nop

    .line 873
    move v3, v1

    goto :goto_1

    .line 874
    :cond_2
    nop

    .line 873
    move v3, v4

    :goto_1
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1800(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Z

    move-result v2

    .line 875
    .local v2, "hasOther":Z
    if-eqz v2, :cond_3

    .line 876
    const-string v3, "WifiNative"

    const-string v4, "FST not supported in STA/SAP concurrency"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return v1

    .line 879
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1900(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v3

    .line 880
    .local v3, "fstIface":Lcom/android/server/wifi/WifiNative$Iface;
    if-eqz v3, :cond_4

    .line 881
    const-string v4, "WifiNative"

    const-string v5, "FST interface already added"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return v1

    .line 884
    :cond_4
    const-string v6, "bond0"

    .line 885
    .local v6, "defaultFstInterfaceName":Ljava/lang/String;
    const-string v7, "persist.vendor.fst.data.interface"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 888
    .local v7, "fstInterfaceName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v8, v5}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2000(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v3

    .line 889
    if-nez v3, :cond_5

    .line 890
    const-string v4, "WifiNative"

    const-string v5, "Failed to allocate FST interface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return v1

    .line 893
    :cond_5
    iput-object v7, v3, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    .line 894
    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iput-object v5, v3, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 895
    new-instance v5, Lcom/android/server/wifi/WifiNative$1;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiNative$1;-><init>(Lcom/android/server/wifi/WifiNative;)V

    iput-object v5, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 906
    new-instance v5, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    iget v8, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v5, p0, v8}, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    iput-object v5, p1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 907
    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 908
    const-string v4, "WifiNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to register network observer on "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v4, v3, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iput-object v4, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 910
    iget-object v4, v3, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 911
    return v1

    .line 913
    :cond_6
    return v4
.end method

.method private startHal()Z
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$100(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->startVendorHal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    const-string v1, "WifiNative"

    const-string v2, "Failed to start vendor HAL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 288
    :cond_0
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring start."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startSupplicant()Z
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$200(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WificondControl;->enableSupplicant()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 345
    const-string v1, "WifiNative"

    const-string v3, "Failed to enable supplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v0

    return v2

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->waitForSupplicantConnection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    const-string v1, "WifiNative"

    const-string v3, "Failed to connect to supplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v0

    return v2

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    new-instance v3, Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerDeathHandler(Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    const-string v1, "WifiNative"

    const-string v3, "Failed to register supplicant death handler"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v0

    return v2

    .line 358
    :cond_2
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopHalAndWificondIfNecessary()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$100(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WificondControl;->tearDownInterfaces()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    const-string v1, "WifiNative"

    const-string v2, "Failed to teardown ifaces from wificond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->stopVendorHal()V

    goto :goto_0

    .line 305
    :cond_1
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring stop."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2
    :goto_0
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopHostapdIfNecessary(Ljava/lang/String;)V
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$400(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/HostapdHal;->deregisterDeathHandler()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    const-string v1, "WifiNative"

    const-string v2, "Failed to deregister hostapd death handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WificondControl;->stopHostapd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 384
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop hostapd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopSupplicantIfNecessary()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$200(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->deregisterDeathHandler()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    const-string v1, "WifiNative"

    const-string v2, "Failed to deregister supplicant death handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WificondControl;->disableSupplicant()Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    const-string v1, "WifiNative"

    const-string v2, "Failed to disable supplicant"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z
    .locals 2
    .param p1, "observer"    # Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 403
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 405
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    nop

    .line 409
    const/4 v0, 0x1

    return v0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private waitForHostapdConnection()Z
    .locals 5

    .line 1401
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/HostapdHal;->isInitializationStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    .line 1402
    invoke-virtual {v0}, Lcom/android/server/wifi/HostapdHal;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    return v1

    .line 1405
    :cond_0
    const/4 v0, 0x0

    .line 1406
    .local v0, "connected":Z
    nop

    .line 1407
    .local v1, "connectTries":I
    :goto_0
    if-nez v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    .local v2, "connectTries":I
    const/16 v3, 0x32

    if-ge v1, v3, :cond_3

    .line 1409
    .end local v1    # "connectTries":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/HostapdHal;->isInitializationComplete()Z

    move-result v0

    .line 1410
    if-eqz v0, :cond_1

    .line 1411
    goto :goto_3

    .line 1414
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    :goto_1
    goto :goto_2

    .line 1415
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1406
    :goto_2
    move v1, v2

    goto :goto_0

    .line 1418
    .end local v2    # "connectTries":I
    .restart local v1    # "connectTries":I
    :cond_2
    move v2, v1

    .end local v1    # "connectTries":I
    .restart local v2    # "connectTries":I
    :cond_3
    :goto_3
    return v0
.end method

.method private waitForSupplicantConnection()Z
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isInitializationStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 321
    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    return v1

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 325
    .local v0, "connected":Z
    nop

    .line 326
    .local v1, "connectTries":I
    :goto_0
    if-nez v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    .local v2, "connectTries":I
    const/16 v3, 0x32

    if-ge v1, v3, :cond_3

    .line 328
    .end local v1    # "connectTries":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isInitializationComplete()Z

    move-result v0

    .line 329
    if-eqz v0, :cond_1

    .line 330
    goto :goto_3

    .line 333
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    goto :goto_2

    .line 334
    :catch_0
    move-exception v1

    goto :goto_1

    .line 325
    :goto_2
    move v1, v2

    goto :goto_0

    .line 337
    .end local v2    # "connectTries":I
    .restart local v1    # "connectTries":I
    :cond_2
    move v2, v1

    .end local v1    # "connectTries":I
    .restart local v2    # "connectTries":I
    :cond_3
    :goto_3
    return v0
.end method


# virtual methods
.method public addHlpReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .param p3, "hlpPacket"    # Ljava/lang/String;

    .line 1717
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addHlpReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 1
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .line 2442
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z

    move-result v0

    return v0
.end method

.method public cancelWps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1879
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->cancelWps(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public configureNeighborDiscoveryOffload(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2991
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->configureNeighborDiscoveryOffload(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public configureRoaming(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/wifi/WifiNative$RoamingConfig;

    .line 3043
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->configureRoaming(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z

    move-result v0

    return v0
.end method

.method public connectToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 2021
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->abortScan(Ljava/lang/String;)V

    .line 2022
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->connectToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public disableRttResponder()Z
    .locals 1

    .line 2461
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->disableRttResponder()Z

    move-result v0

    return v0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1553
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->disconnect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dppAddBootstrapQrCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 3117
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppAddBootstrapQrCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dppBootstrapGenerate(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 3129
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppBootstrapGenerate(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I

    move-result v0

    return v0
.end method

.method public dppBootstrapRemove(Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bootstrap_id"    # I

    .line 3153
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppBootstrapRemove(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "expiry"    # I

    .line 3194
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public dppConfiguratorGetKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 3230
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppConfiguratorGetKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dppConfiguratorRemove(Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config_id"    # I

    .line 3206
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppConfiguratorRemove(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public dppGetUri(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bootstrap_id"    # I

    .line 3141
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppGetUri(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dppListen(Ljava/lang/String;Ljava/lang/String;IZZ)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "frequency"    # Ljava/lang/String;
    .param p3, "dpp_role"    # I
    .param p4, "qr_mutual"    # Z
    .param p5, "netrole_ap"    # Z

    .line 3171
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppListen(Ljava/lang/String;Ljava/lang/String;IZZ)I

    move-result v0

    return v0
.end method

.method public dppStartAuth(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 3218
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppStartAuth(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I

    move-result v0

    return v0
.end method

.method public dppStopListen(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 3180
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppStopListen(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableFirmwareRoaming(Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 3027
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->enableFirmwareRoaming(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public enablePktFltAndCnssLogLevel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 3242
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 1
    .param p1, "timeoutSeconds"    # I

    .line 2453
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object v0

    return-object v0
.end method

.method public enableStaAutoReconnect(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1987
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->enableAutoReconnect(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .line 104
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WificondControl;->enableVerboseLogging(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->enableVerboseLogging(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enableVerboseLogging(Z)V

    .line 108
    return-void
.end method

.method public flushAllHlp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1706
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->flushAllHlp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getApfCapabilities(Ljava/lang/String;)Landroid/net/apf/ApfCapabilities;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2489
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getApfCapabilities(Ljava/lang/String;)Landroid/net/apf/ApfCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getBgScanCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 2205
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->getBgScanCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v0

    return v0
.end method

.method public getBgScanResults(Ljava/lang/String;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2398
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getBgScanResults(Ljava/lang/String;)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capaType"    # Ljava/lang/String;

    .line 1686
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelsForBand(I)[I
    .locals 1
    .param p1, "band"    # I

    .line 1309
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->getChannelsForBand(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getClientInterfaceName()Ljava/lang/String;
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2200(Lcom/android/server/wifi/WifiNative$IfaceManager;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentNetworkWpsNfcConfigurationToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2115
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkWpsNfcConfigurationToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriverStateDump()[B
    .locals 1

    .line 2663
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getDriverStateDump()[B

    move-result-object v0

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1

    .line 2595
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapAnonymousIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1857
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkEapAnonymousIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 2604
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFstDataInterfaceName()Ljava/lang/String;
    .locals 3

    .line 935
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1900(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 937
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-eqz v1, :cond_0

    .line 938
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 940
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 941
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFwMemoryDump()[B
    .locals 1

    .line 2654
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getFwMemoryDump()[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1563
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPnoScanResults(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 1345
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WificondControl;->getScanResults(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRingBufferData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ringName"    # Ljava/lang/String;

    .line 2645
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getRingBufferData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 1

    .line 2635
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    return-object v0
.end method

.method public getRoamingCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/android/server/wifi/WifiNative$RoamingCapabilities;

    .line 3011
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->getRoamingCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z

    move-result v0

    return v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 1

    .line 2481
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2912
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$RxFateReport;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$RxFateReport;

    .line 2892
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->getRxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$RxFateReport;)Z

    move-result v0

    return v0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WificondControl;->getScanResults(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSoftApInterfaceName()Ljava/lang/String;
    .locals 2

    .line 1235
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1236
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2300(Lcom/android/server/wifi/WifiNative$IfaceManager;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSupportedFeatureSet(Ljava/lang/String;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2416
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getSupportedFeatureSet(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSupportedLoggerFeatureSet()I
    .locals 1

    .line 2577
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getSupportedLoggerFeatureSet()I

    move-result v0

    return v0
.end method

.method public getTxPacketCounters(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1293
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->getTxPacketCounters(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TxPacketCounters;

    move-result-object v0

    return-object v0
.end method

.method public getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2902
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$TxFateReport;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$TxFateReport;

    .line 2884
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->getTxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$TxFateReport;)Z

    move-result v0

    return v0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2406
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/android/server/wifi/WifiLinkLayerStats;

    move-result-object v0

    return-object v0
.end method

.method public getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 1

    .line 2980
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v0

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 778
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$VendorHalDeathHandlerInternal;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$VendorHalDeathHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->initialize(Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 780
    const-string v1, "WifiNative"

    const-string v3, "Failed to initialize vendor HAL"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    monitor-exit v0

    return v2

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    new-instance v4, Lcom/android/server/wifi/WifiNative$WificondDeathHandlerInternal;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wifi/WifiNative$WificondDeathHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WificondControl;->initialize(Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    const-string v1, "WifiNative"

    const-string v3, "Failed to initialize wificond"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    monitor-exit v0

    return v2

    .line 787
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->registerRadioModeChangeHandler(Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;)V

    .line 789
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 790
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public installPacketFilter(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "filter"    # [B

    .line 2500
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->installPacketFilter(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public isHalStarted()Z
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->isHalStarted()Z

    move-result v0

    return v0
.end method

.method public isInterfaceUp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1300(Lcom/android/server/wifi/WifiNative$IfaceManager;Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 1126
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1127
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to get iface state on invalid iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1130
    :cond_0
    const/4 v3, 0x0

    .line 1132
    .local v3, "config":Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    .line 1134
    goto :goto_0

    .line 1133
    :catch_0
    move-exception v4

    .line 1135
    :goto_0
    if-nez v3, :cond_1

    .line 1136
    :try_start_2
    monitor-exit v0

    return v2

    .line 1138
    :cond_1
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->isUp()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1139
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    .end local v3    # "config":Landroid/net/InterfaceConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public migrateNetworksFromSupplicant(Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseArray;)Z
    .locals 1
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

    .line 2002
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p3, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loadNetworks(Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method public pauseBgScan(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2382
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->pauseBgScan(Ljava/lang/String;)V

    .line 2383
    return-void
.end method

.method public declared-synchronized readKernelLog()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 3093
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->readKernelLogNative()[B

    move-result-object v0

    .line 3094
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 3095
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3097
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 3098
    .local v2, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 3099
    .end local v2    # "decoded":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v2

    .line 3100
    .local v2, "cce":Ljava/nio/charset/CharacterCodingException;
    :try_start_2
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 3103
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v2    # "cce":Ljava/nio/charset/CharacterCodingException;
    :cond_0
    :try_start_3
    const-string v1, "*** failed to read kernel log ***"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 3092
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiNative;
    throw v0
.end method

.method public readPacketFilter(Ljava/lang/String;)[B
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2510
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->readPacketFilter(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public reassociate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1543
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reassociate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reconnect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1533
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reconnect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerStatusListener(Lcom/android/server/wifi/WifiNative$StatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wifi/WifiNative$StatusListener;

    .line 813
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 814
    return-void
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2052
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeNetworkIfCurrent(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "networkId"    # I

    .line 2125
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeNetworkIfCurrent(Ljava/lang/String;I)V

    .line 2126
    return-void
.end method

.method public requestAnqp(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 2077
    .local p3, "anqpIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hs20Subtypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p4, :cond_3

    .line 2078
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2082
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    .local v0, "anqpIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2084
    .local v2, "anqpId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2085
    .end local v2    # "anqpId":Ljava/lang/Integer;
    goto :goto_0

    .line 2086
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2087
    .local v1, "hs20SubtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2088
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateAnqpQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    return v2

    .line 2079
    .end local v0    # "anqpIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .end local v1    # "hs20SubtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    const-string v0, "WifiNative"

    const-string v1, "Invalid arguments for ANQP request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const/4 v0, 0x0

    return v0
.end method

.method public requestIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 2101
    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2105
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateHs20IconQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2102
    :cond_1
    :goto_0
    const-string v0, "WifiNative"

    const-string v1, "Invalid arguments for Icon request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    const/4 v0, 0x0

    return v0
.end method

.method public requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 1
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 2432
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z

    move-result v0

    return v0
.end method

.method public resetLogHandler()Z
    .locals 1

    .line 2586
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->resetLogHandler()Z

    move-result v0

    return v0
.end method

.method public resetRoamingConfiguration(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 3053
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v1, Lcom/android/server/wifi/WifiNative$RoamingConfig;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$RoamingConfig;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiVendorHal;->configureRoaming(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z

    move-result v0

    return v0
.end method

.method public restartBgScan(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2390
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->restartBgScan(Ljava/lang/String;)V

    .line 2391
    return-void
.end method

.method public roamToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 2041
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->abortScan(Ljava/lang/String;)V

    .line 2042
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->roamToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public scan(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1324
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/WificondControl;->scan(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public selectTxPowerScenario(Lcom/android/server/wifi/SarInfo;)Z
    .locals 1
    .param p1, "sarInfo"    # Lcom/android/server/wifi/SarInfo;

    .line 3064
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->selectTxPowerScenario(Lcom/android/server/wifi/SarInfo;)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceMode(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1649
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBtCoexistenceMode(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceScanMode(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "setCoexScanMode"    # Z

    .line 1663
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setConcurrencyPriority(Z)Z
    .locals 1
    .param p1, "isStaHigherPriority"    # Z

    .line 1976
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setConcurrencyPriority(Z)Z

    move-result v0

    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "cfg"    # Ljava/lang/String;

    .line 1911
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsConfigMethods(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConfiguredNetworkBSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 2062
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCurrentNetworkBssid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .line 1697
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCodeHal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .line 2520
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/HostapdHal;->setCountryCode(Ljava/lang/String;)V

    .line 2521
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->setCountryCodeHal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 1890
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 1901
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsDeviceType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setExternalSim(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "external"    # Z

    .line 1777
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExternalSim(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setHostapdParams(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2533
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/HostapdHal;->setHostapdParams(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLatencyLevel(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 3072
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->setLatencyLevel(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 2551
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    move-result v0

    return v0
.end method

.method public setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "mac"    # Landroid/net/MacAddress;

    .line 1486
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result v0

    return v0
.end method

.method public setManufacturer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1922
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsManufacturer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModelName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1933
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsModelName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModelNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1944
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsModelNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPowerSave(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1965
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setPowerSave(Ljava/lang/String;Z)Z

    .line 1966
    return-void
.end method

.method public setScanningMacOui(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "oui"    # [B

    .line 2474
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->setScanningMacOui(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public setSerialNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1955
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsSerialNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSupplicantLogLevel(Z)V
    .locals 1
    .param p1, "turnOnVerbose"    # Z

    .line 1523
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setLogLevel(Z)Z

    .line 1524
    return-void
.end method

.method public setSuspendOptimizations(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1675
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setSuspendModeEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setupInterfaceForBridgeMode(Lcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;
    .locals 6
    .param p1, "interfaceCallback"    # Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 1083
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1084
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1085
    const-string v1, "WifiNative"

    const-string v3, "Failed to start Hal"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHal()V

    .line 1087
    monitor-exit v0

    return-object v2

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2000(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 1090
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_1

    .line 1091
    const-string v3, "WifiNative"

    const-string v4, "Failed to allocate new bridge iface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    monitor-exit v0

    return-object v2

    .line 1094
    :cond_1
    iput-object p1, v1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 1095
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiApConfigStore;->getBridgeInterface()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    .line 1096
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1097
    const-string v3, "WifiNative"

    const-string v4, "Failed to create Bridge iface in wifinative"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$700(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 1099
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHal()V

    .line 1100
    monitor-exit v0

    return-object v2

    .line 1102
    :cond_2
    new-instance v3, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 1103
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1104
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register network observer on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1106
    monitor-exit v0

    return-object v2

    .line 1110
    :cond_3
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiNative;->onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V

    .line 1111
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully setup bridge "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1113
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setupInterfaceForClientMode(ZLcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;
    .locals 6
    .param p1, "lowPrioritySta"    # Z
    .param p2, "interfaceCallback"    # Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 957
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 959
    const-string v1, "WifiNative"

    const-string v3, "Failed to start Hal"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToHal()V

    .line 961
    monitor-exit v0

    return-object v2

    .line 963
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->startSupplicant()Z

    move-result v1

    if-nez v1, :cond_1

    .line 964
    const-string v1, "WifiNative"

    const-string v3, "Failed to start supplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToSupplicant()V

    .line 966
    monitor-exit v0

    return-object v2

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2000(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 969
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_2

    .line 970
    const-string v3, "WifiNative"

    const-string v4, "Failed to allocate new STA iface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    monitor-exit v0

    return-object v2

    .line 973
    :cond_2
    iput-object p2, v1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 974
    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiNative;->createStaIface(Lcom/android/server/wifi/WifiNative$Iface;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    .line 975
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 976
    const-string v3, "WifiNative"

    const-string v4, "Failed to create STA iface in vendor HAL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$700(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 978
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToHal()V

    .line 979
    monitor-exit v0

    return-object v2

    .line 981
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->setupFstInterface(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 982
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup fst interface from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 984
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToWificond()V

    .line 985
    monitor-exit v0

    return-object v2

    .line 987
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WificondControl;->setupInterfaceForClientMode(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v3

    if-nez v3, :cond_5

    .line 988
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup iface in wificond on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 990
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToWificond()V

    .line 991
    monitor-exit v0

    return-object v2

    .line 993
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setupIface(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 994
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup iface in supplicant on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 996
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToSupplicant()V

    .line 997
    monitor-exit v0

    return-object v2

    .line 999
    :cond_6
    new-instance v3, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 1000
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1001
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register network observer on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1003
    monitor-exit v0

    return-object v2

    .line 1005
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiMonitor;->startMonitoring(Ljava/lang/String;)V

    .line 1008
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiNative;->onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V

    .line 1009
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->initializeNwParamsForClientInterface(Ljava/lang/String;)V

    .line 1011
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->initWifiPktFilterAndCnssLogLevel()V

    .line 1013
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully setup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1015
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setupInterfaceForSoftApMode(Lcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;
    .locals 6
    .param p1, "interfaceCallback"    # Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 1028
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1030
    const-string v1, "WifiNative"

    const-string v3, "Failed to start Hal"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHal()V

    .line 1032
    monitor-exit v0

    return-object v2

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2000(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 1035
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_1

    .line 1036
    const-string v3, "WifiNative"

    const-string v4, "Failed to allocate new AP iface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    monitor-exit v0

    return-object v2

    .line 1039
    :cond_1
    iput-object p1, v1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 1040
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->createApIface(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    .line 1041
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1042
    const-string v3, "WifiNative"

    const-string v4, "Failed to create AP iface in vendor HAL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$700(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 1044
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHal()V

    .line 1045
    monitor-exit v0

    return-object v2

    .line 1047
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->setupFstInterface(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1048
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup fst interface from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1050
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToWificond()V

    .line 1051
    monitor-exit v0

    return-object v2

    .line 1053
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WificondControl;->setupInterfaceForSoftApMode(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1054
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup iface in wificond on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1056
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToWificond()V

    .line 1057
    monitor-exit v0

    return-object v2

    .line 1059
    :cond_4
    new-instance v3, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 1060
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1061
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register network observer on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1063
    monitor-exit v0

    return-object v2

    .line 1067
    :cond_5
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiNative;->onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V

    .line 1068
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully setup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1070
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public signalPoll(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$SignalPollResult;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1283
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->signalPoll(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$SignalPollResult;

    move-result-object v0

    return-object v0
.end method

.method public simAuthFailedResponse(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1823
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimGsmAuthFailure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public simAuthResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "response"    # Ljava/lang/String;

    .line 1802
    const-string v0, "GSM-AUTH"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimGsmAuthResponse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1805
    :cond_0
    const-string v0, "UMTS-AUTH"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1806
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimUmtsAuthResponse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1808
    :cond_1
    const-string v0, "UMTS-AUTS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1809
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimUmtsAutsResponse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1812
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public simIdentityResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "unencryptedResponse"    # Ljava/lang/String;
    .param p4, "encryptedResponse"    # Ljava/lang/String;

    .line 1846
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapIdentityResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startBgScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p3, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 2366
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiVendorHal;->startBgScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v0

    return v0
.end method

.method public startFilteringMulticastV4Packets(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1594
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1595
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeRxFilter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1597
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1594
    :cond_0
    return v1
.end method

.method public startFilteringMulticastV6Packets(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1618
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1619
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeRxFilter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1621
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1618
    :goto_0
    return v1
.end method

.method public startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 6
    .param p1, "verboseLevel"    # I
    .param p2, "flags"    # I
    .param p3, "maxInterval"    # I
    .param p4, "minDataSize"    # I
    .param p5, "ringName"    # Ljava/lang/String;

    .line 2566
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiVendorHal;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startPktFateMonitoring(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2874
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->startPktFateMonitoring(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startPnoScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pnoSettings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 1355
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WificondControl;->startPnoScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v0

    return v0
.end method

.method public startRssiMonitoring(Ljava/lang/String;BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "maxRssi"    # B
    .param p3, "minRssi"    # B
    .param p4, "rssiEventHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 2960
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiVendorHal;->startRssiMonitoring(Ljava/lang/String;BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    move-result v0

    return v0
.end method

.method public startSendingOffloadedPacket(Ljava/lang/String;I[B[BII)I
    .locals 9
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "dstMac"    # [B
    .param p4, "packet"    # [B
    .param p5, "protocol"    # I
    .param p6, "period"    # I

    .line 2928
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->getMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2929
    .local v0, "srcMac":[B
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wifi/WifiVendorHal;->startSendingOffloadedPacket(Ljava/lang/String;I[B[B[BII)I

    move-result v1

    return v1
.end method

.method public startSoftAp(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "listener"    # Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 1431
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wifi/WificondControl;->startHostapd(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1432
    const-string v0, "WifiNative"

    const-string v2, "Failed to start hostapd"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1434
    return v1

    .line 1436
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->waitForHostapdConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1437
    const-string v0, "WifiNative"

    const-string v2, "Failed to establish connection to hostapd"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1439
    return v1

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$HostapdDeathHandlerInternal;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$HostapdDeathHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/HostapdHal;->registerDeathHandler(Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1442
    const-string v0, "WifiNative"

    const-string v2, "Failed to register hostapd death handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1444
    return v1

    .line 1447
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/HostapdHal;->isVendorHostapdHal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1448
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/HostapdHal;->addVendorAccessPoint(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1449
    const-string v0, "WifiNative"

    const-string v2, "Failed to add Vendor acccess point"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1451
    return v1

    .line 1453
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/HostapdHal;->addAccessPoint(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1454
    const-string v0, "WifiNative"

    const-string v2, "Failed to add acccess point"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1456
    return v1

    .line 1458
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public startTdls(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddr"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 1728
    if-eqz p3, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsDiscover(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1730
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsSetup(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsTeardown(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1734
    :goto_0
    return-void
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1744
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1766
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .line 1755
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .line 1869
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopBgScan(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2374
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->stopBgScan(Ljava/lang/String;)V

    .line 2375
    return-void
.end method

.method public stopFilteringMulticastV4Packets(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1606
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1607
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addRxFilter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1609
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1606
    :cond_0
    return v1
.end method

.method public stopFilteringMulticastV6Packets(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1630
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1631
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addRxFilter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1633
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1630
    :goto_0
    return v1
.end method

.method public stopPnoScan(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1364
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->stopPnoScan(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopRssiMonitoring(Ljava/lang/String;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2971
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->stopRssiMonitoring(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stopSendingOffloadedPacket(Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .line 2941
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->stopSendingOffloadedPacket(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public stopSoftAp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1468
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/HostapdHal;->isVendorHostapdHal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/HostapdHal;->removeVendorAccessPoint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1470
    const-string v0, "WifiNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove vendor access point on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/HostapdHal;->removeAccessPoint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1473
    const-string v0, "WifiNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove access point on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->stopHostapd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public teardownAllInterfaces()V
    .locals 6

    .line 1186
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2100(Lcom/android/server/wifi/WifiNative$IfaceManager;)Ljava/util/Iterator;

    move-result-object v1

    .line 1188
    .local v1, "ifaceIdIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1189
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1200(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v2

    .line 1190
    .local v2, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1191
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 1192
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully torn down "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    .end local v2    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    goto :goto_0

    .line 1194
    :cond_0
    const-string v2, "WifiNative"

    const-string v3, "Successfully torn down all ifaces"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    .end local v1    # "ifaceIdIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 1196
    return-void

    .line 1195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public teardownInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1152
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1300(Lcom/android/server/wifi/WifiNative$IfaceManager;Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 1154
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_0

    .line 1155
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to teardown an invalid iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    monitor-exit v0

    return-void

    .line 1160
    :cond_0
    iget v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1161
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->removeStaIface(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1162
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove iface in vendor HAL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    monitor-exit v0

    return-void

    .line 1165
    :cond_1
    iget v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-nez v2, :cond_2

    .line 1166
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->removeApIface(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1167
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove iface in vendor HAL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    monitor-exit v0

    return-void

    .line 1170
    :cond_2
    iget v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1171
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$700(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 1172
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 1174
    :cond_3
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully initiated teardown for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    monitor-exit v0

    .line 1176
    return-void

    .line 1175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public umtsAuthFailedResponse(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1833
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimUmtsAuthFailure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
