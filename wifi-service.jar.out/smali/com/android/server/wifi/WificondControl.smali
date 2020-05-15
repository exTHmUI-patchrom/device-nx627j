.class public Lcom/android/server/wifi/WificondControl;
.super Ljava/lang/Object;
.source "WificondControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;,
        Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;,
        Lcom/android/server/wifi/WificondControl$ScanEventHandler;
    }
.end annotation


# static fields
.field private static final MAX_SSID_LEN:I = 0x20

.field public static final SCAN_TYPE_PNO_SCAN:I = 0x1

.field public static final SCAN_TYPE_SINGLE_SCAN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WificondControl"


# instance fields
.field private mApInterfaceListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IApInterfaceEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mApInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IApInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

.field private mClientInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IClientInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

.field private mPnoScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IPnoScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWificond:Landroid/net/wifi/IWificond;

.field private mWificondScanners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IWifiScannerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/CarrierNetworkConfig;)V
    .locals 1
    .param p1, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p2, "wifiMonitor"    # Lcom/android/server/wifi/WifiMonitor;
    .param p3, "carrierNetworkConfig"    # Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandlers:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandlers:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    .line 106
    iput-object p1, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 107
    iput-object p2, p0, Lcom/android/server/wifi/WificondControl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 108
    iput-object p3, p0, Lcom/android/server/wifi/WificondControl;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WificondControl;

    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WificondControl;

    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method

.method private clearState()V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 934
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 935
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 936
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 937
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 938
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 939
    return-void
.end method

.method private getApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 845
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IApInterface;

    return-object v0
.end method

.method private getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IClientInterface;

    return-object v0
.end method

.method private static getScanType(I)I
    .locals 3
    .param p0, "scanType"    # I

    .line 642
    packed-switch p0, :pswitch_data_0

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 646
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 644
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 551
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiScannerImpl;

    return-object v0
.end method

.method private retrieveWificondAndRegisterForDeath()Z
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 210
    iget-boolean v0, p0, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "WificondControl"

    const-string v2, "Wificond handle already retrieved"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    return v1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    .line 217
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 218
    const-string v0, "WificondControl"

    const-string v1, "Failed to get reference to wificond"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v2

    .line 222
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    nop

    .line 228
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WificondControl"

    const-string v3, "Failed to register death notification for wificond"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v2
.end method


# virtual methods
.method public abortScan(Ljava/lang/String;)V
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 797
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v0

    .line 798
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    if-nez v0, :cond_0

    .line 799
    const-string v1, "WificondControl"

    const-string v2, "No valid wificond scanner interface handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void

    .line 803
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->abortScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    goto :goto_0

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e1":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to request abortScan due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .end local v1    # "e1":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 171
    const-string v0, "WificondControl"

    const-string v1, "Wificond died!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->clearState()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    .line 176
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;->onDeath()V

    .line 179
    :cond_0
    return-void
.end method

.method public disableHostapd()Z
    .locals 4

    .line 444
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 445
    return v1

    .line 448
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->disableHostapd()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to disable hostapd due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public disableSupplicant()Z
    .locals 4

    .line 461
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 462
    return v1

    .line 465
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->disableSupplicant()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to disable supplicant due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public enableSupplicant()Z
    .locals 4

    .line 477
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 478
    return v1

    .line 481
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->enableSupplicant()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to enable supplicant due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public enableVerboseLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 185
    iput-boolean p1, p0, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    .line 186
    return-void
.end method

.method public getChannelsForBand(I)[I
    .locals 4
    .param p1, "band"    # I

    .line 822
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 823
    const-string v0, "WificondControl"

    const-string v2, "No valid wificond scanner interface handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-object v1

    .line 827
    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 835
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported band "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :catch_0
    move-exception v0

    goto :goto_0

    .line 831
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->getAvailable5gNonDFSChannels()[I

    move-result-object v0

    return-object v0

    .line 829
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->getAvailable2gChannels()[I

    move-result-object v0

    return-object v0

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->getAvailableDFSChannels()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 837
    :goto_0
    nop

    .line 838
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to request getChannelsForBand due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    .end local v0    # "e1":Landroid/os/RemoteException;
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScanResults(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 25
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 562
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v3

    .line 563
    .local v3, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    if-nez v3, :cond_0

    .line 564
    const-string v0, "WificondControl"

    const-string v4, "No valid wificond scanner interface handler"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-object v2

    .line 569
    :cond_0
    if-nez p2, :cond_1

    .line 570
    :try_start_0
    invoke-interface {v3}, Landroid/net/wifi/IWifiScannerImpl;->getScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    goto :goto_0

    .line 628
    .end local v0    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    :catch_0
    move-exception v0

    move-object/from16 v20, v3

    goto/16 :goto_4

    .line 572
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/net/wifi/IWifiScannerImpl;->getPnoScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v0

    .restart local v0    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    :goto_0
    move-object v5, v0

    .line 574
    .end local v0    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .local v5, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    array-length v6, v5

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v0, v5, v7

    move-object v8, v0

    .line 575
    .local v8, "result":Lcom/android/server/wifi/wificond/NativeScanResult;
    iget-object v0, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v15, v0

    .line 578
    .local v15, "wifiSsid":Landroid/net/wifi/WifiSsid;
    :try_start_2
    iget-object v0, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v14, v0

    .line 582
    .local v14, "bssid":Ljava/lang/String;
    nop

    .line 581
    nop

    .line 583
    if-nez v14, :cond_2

    .line 584
    :try_start_3
    const-string v0, "WificondControl"

    const-string v9, "Illegal null bssid"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 585
    nop

    .line 574
    move-object/from16 v20, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    goto/16 :goto_3

    .line 587
    :cond_2
    :try_start_4
    iget-object v0, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    .line 588
    invoke-static {v0}, Lcom/android/server/wifi/util/InformationElementUtil;->parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object v0

    move-object v12, v0

    .line 589
    .local v12, "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;-><init>()V

    move-object v11, v0

    .line 591
    .local v11, "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    iget-object v0, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->from([Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/BitSet;)V

    .line 592
    invoke-virtual {v11}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->generateCapabilitiesString()Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 595
    .local v13, "flags":Ljava/lang/String;
    :try_start_5
    new-instance v10, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    const/4 v0, 0x0

    iget v9, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    invoke-direct {v10, v14, v12, v0, v9}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 599
    .local v10, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    nop

    .line 598
    nop

    .line 601
    :try_start_6
    new-instance v0, Lcom/android/server/wifi/ScanDetail;

    iget v9, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    div-int/lit8 v16, v9, 0x64

    iget v9, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v20, v3

    :try_start_7
    iget-wide v3, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .local v20, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    const/16 v19, 0x0

    move/from16 v17, v9

    move-object v9, v0

    move-object/from16 v21, v11

    move-object v11, v15

    .end local v11    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .local v21, "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    move-object/from16 v22, v12

    move-object v12, v14

    .end local v12    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .local v22, "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    move-object/from16 v23, v5

    move-object v5, v14

    move/from16 v14, v16

    .end local v14    # "bssid":Ljava/lang/String;
    .local v5, "bssid":Ljava/lang/String;
    .local v23, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    move/from16 v24, v6

    move-object v6, v15

    move/from16 v15, v17

    .end local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .local v6, "wifiSsid":Landroid/net/wifi/WifiSsid;
    move-wide/from16 v16, v3

    move-object/from16 v18, v22

    invoke-direct/range {v9 .. v19}, Lcom/android/server/wifi/ScanDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;)V

    .line 603
    .local v0, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 606
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/server/wifi/WificondControl;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 607
    invoke-virtual {v6}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/CarrierNetworkConfig;->isCarrierNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 608
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 609
    iget-object v4, v1, Lcom/android/server/wifi/WificondControl;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 610
    invoke-virtual {v6}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/CarrierNetworkConfig;->getNetworkEapType(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 611
    iget-object v4, v1, Lcom/android/server/wifi/WificondControl;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 612
    invoke-virtual {v6}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/CarrierNetworkConfig;->getCarrierName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    .line 615
    :cond_3
    iget-object v4, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->radioChainInfos:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 616
    iget-object v4, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->radioChainInfos:Ljava/util/ArrayList;

    .line 617
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/wifi/ScanResult$RadioChainInfo;

    iput-object v4, v3, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 618
    const/4 v4, 0x0

    .line 619
    .local v4, "idx":I
    iget-object v9, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->radioChainInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/wificond/RadioChainInfo;

    .line 620
    .local v11, "nativeRadioChainInfo":Lcom/android/server/wifi/wificond/RadioChainInfo;
    iget-object v12, v3, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    new-instance v14, Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-direct {v14}, Landroid/net/wifi/ScanResult$RadioChainInfo;-><init>()V

    aput-object v14, v12, v4

    .line 621
    iget-object v12, v3, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v12, v12, v4

    iget v14, v11, Lcom/android/server/wifi/wificond/RadioChainInfo;->chainId:I

    iput v14, v12, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 622
    iget-object v12, v3, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v12, v12, v4

    iget v14, v11, Lcom/android/server/wifi/wificond/RadioChainInfo;->level:I

    iput v14, v12, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    .line 623
    add-int/lit8 v4, v4, 0x1

    .line 624
    .end local v11    # "nativeRadioChainInfo":Lcom/android/server/wifi/wificond/RadioChainInfo;
    goto :goto_2

    .line 626
    .end local v4    # "idx":I
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v8    # "result":Lcom/android/server/wifi/wificond/NativeScanResult;
    .end local v10    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v13    # "flags":Ljava/lang/String;
    .end local v21    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .end local v22    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    goto :goto_3

    .line 596
    .end local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .end local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .local v3, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .local v5, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .restart local v8    # "result":Lcom/android/server/wifi/wificond/NativeScanResult;
    .local v11, "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .restart local v12    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v13    # "flags":Ljava/lang/String;
    .restart local v14    # "bssid":Ljava/lang/String;
    .restart local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :catch_1
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object v5, v14

    move-object v6, v15

    .line 597
    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .end local v11    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .end local v12    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .end local v14    # "bssid":Ljava/lang/String;
    .end local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v5, "bssid":Ljava/lang/String;
    .restart local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v21    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .restart local v22    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    const-string v3, "WificondControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal argument for scan result with bssid: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    goto :goto_3

    .line 579
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v13    # "flags":Ljava/lang/String;
    .end local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .end local v21    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .end local v22    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .end local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .restart local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .local v5, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .restart local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :catch_2
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object v6, v15

    .line 580
    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .end local v5    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .end local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    const-string v3, "WificondControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 581
    nop

    .line 574
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v8    # "result":Lcom/android/server/wifi/wificond/NativeScanResult;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    move/from16 v6, v24

    goto/16 :goto_1

    .line 628
    .end local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    :catch_3
    move-exception v0

    goto :goto_4

    .line 630
    .end local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    :cond_5
    move-object/from16 v20, v3

    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    goto :goto_5

    .line 628
    .end local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    :catch_4
    move-exception v0

    move-object/from16 v20, v3

    .line 629
    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .local v0, "e1":Landroid/os/RemoteException;
    .restart local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    :goto_4
    const-string v3, "WificondControl"

    const-string v4, "Failed to create ScanDetail ArrayList"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v0    # "e1":Landroid/os/RemoteException;
    :goto_5
    iget-boolean v0, v1, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_6

    .line 632
    const-string v0, "WificondControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " scan results from wificond"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_6
    return-object v2
.end method

.method public getTxPacketCounters(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 526
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v0

    .line 527
    .local v0, "iface":Landroid/net/wifi/IClientInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 528
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond client interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-object v1

    .line 534
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->getPacketCounters()[I

    move-result-object v2

    .line 535
    .local v2, "resultArray":[I
    if-eqz v2, :cond_2

    array-length v3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 542
    :cond_1
    nop

    .line 541
    nop

    .line 543
    new-instance v1, Lcom/android/server/wifi/WifiNative$TxPacketCounters;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$TxPacketCounters;-><init>()V

    .line 544
    .local v1, "counters":Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$TxPacketCounters;->txSucceeded:I

    .line 545
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$TxPacketCounters;->txFailed:I

    .line 546
    return-object v1

    .line 536
    .end local v1    # "counters":Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    :cond_2
    :goto_0
    :try_start_1
    const-string v3, "WificondControl"

    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 537
    return-object v1

    .line 539
    .end local v2    # "resultArray":[I
    :catch_0
    move-exception v2

    .line 540
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-object v1
.end method

.method public initialize(Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;)Z
    .locals 2
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    .line 195
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "WificondControl"

    const-string v1, "Death handler already present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/WificondControl;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wifi/WificondControl;->disableHostapd()Z

    .line 200
    invoke-virtual {p0}, Lcom/android/server/wifi/WificondControl;->tearDownInterfaces()Z

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public scan(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)Z
    .locals 10
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

    .line 666
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v0

    .line 667
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 668
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond scanner interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return v1

    .line 671
    :cond_0
    new-instance v2, Lcom/android/server/wifi/wificond/SingleScanSettings;

    invoke-direct {v2}, Lcom/android/server/wifi/wificond/SingleScanSettings;-><init>()V

    .line 673
    .local v2, "settings":Lcom/android/server/wifi/wificond/SingleScanSettings;
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/WificondControl;->getScanType(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 677
    nop

    .line 678
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    .line 679
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    .line 681
    if-eqz p3, :cond_1

    .line 682
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 683
    .local v4, "freq":Ljava/lang/Integer;
    new-instance v5, Lcom/android/server/wifi/wificond/ChannelSettings;

    invoke-direct {v5}, Lcom/android/server/wifi/wificond/ChannelSettings;-><init>()V

    .line 684
    .local v5, "channel":Lcom/android/server/wifi/wificond/ChannelSettings;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/android/server/wifi/wificond/ChannelSettings;->frequency:I

    .line 685
    iget-object v6, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .end local v4    # "freq":Ljava/lang/Integer;
    .end local v5    # "channel":Lcom/android/server/wifi/wificond/ChannelSettings;
    goto :goto_0

    .line 688
    :cond_1
    if-eqz p4, :cond_3

    .line 689
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 690
    .local v4, "ssid":Ljava/lang/String;
    new-instance v5, Lcom/android/server/wifi/wificond/HiddenNetwork;

    invoke-direct {v5}, Lcom/android/server/wifi/wificond/HiddenNetwork;-><init>()V

    .line 692
    .local v5, "network":Lcom/android/server/wifi/wificond/HiddenNetwork;
    :try_start_1
    invoke-static {v4}, Lcom/android/server/wifi/WifiGbk;->getRandUtfOrGbkBytes(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 696
    nop

    .line 697
    iget-object v6, v5, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    array-length v6, v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_2

    .line 698
    const-string v6, "WificondControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSID is too long after conversion, skipping this ssid! SSID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , network.ssid.size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    goto :goto_1

    .line 702
    :cond_2
    iget-object v6, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v5    # "network":Lcom/android/server/wifi/wificond/HiddenNetwork;
    goto :goto_1

    .line 693
    .restart local v4    # "ssid":Ljava/lang/String;
    .restart local v5    # "network":Lcom/android/server/wifi/wificond/HiddenNetwork;
    :catch_0
    move-exception v6

    .line 694
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "WificondControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal argument "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    goto :goto_1

    .line 707
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v5    # "network":Lcom/android/server/wifi/wificond/HiddenNetwork;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_2
    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiScannerImpl;->scan(Lcom/android/server/wifi/wificond/SingleScanSettings;)Z

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return v3

    .line 708
    :catch_1
    move-exception v3

    .line 709
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "WificondControl"

    const-string v5, "Failed to request scan due to remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1

    .line 674
    :catch_2
    move-exception v3

    .line 675
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "WificondControl"

    const-string v5, "Invalid scan type "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    return v1
.end method

.method public setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z
    .locals 6
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "mac"    # Landroid/net/MacAddress;

    .line 912
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v0

    .line 913
    .local v0, "mClientInterface":Landroid/net/wifi/IClientInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 914
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond client interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return v1

    .line 917
    :cond_0
    invoke-virtual {p2}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v2

    .line 920
    .local v2, "macByteArray":[B
    :try_start_0
    invoke-interface {v0, v2}, Landroid/net/wifi/IClientInterface;->setMacAddress([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    nop

    .line 925
    const/4 v1, 0x1

    return v1

    .line 921
    :catch_0
    move-exception v3

    .line 922
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WificondControl"

    const-string v5, "Failed to setMacAddress due to remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return v1
.end method

.method public setupInterfaceForClientMode(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 237
    const-string v0, "WificondControl"

    const-string v1, "Setting up interface for client mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 239
    return-object v1

    .line 242
    :cond_0
    move-object v0, v1

    .line 244
    .local v0, "clientInterface":Landroid/net/wifi/IClientInterface;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWificond;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 248
    nop

    .line 250
    if-nez v0, :cond_1

    .line 251
    const-string v2, "WificondControl"

    const-string v3, "Could not get IClientInterface instance from wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v1

    .line 254
    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 257
    iget-object v2, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :try_start_1
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->getWifiScannerImpl()Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v2

    .line 260
    .local v2, "wificondScanner":Landroid/net/wifi/IWifiScannerImpl;
    if-nez v2, :cond_2

    .line 261
    const-string v3, "WificondControl"

    const-string v4, "Failed to get WificondScannerImpl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v1

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-interface {v2}, Landroid/net/wifi/IWifiScannerImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 266
    new-instance v1, Lcom/android/server/wifi/WificondControl$ScanEventHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/WificondControl$ScanEventHandler;-><init>(Lcom/android/server/wifi/WificondControl;Ljava/lang/String;)V

    .line 267
    .local v1, "scanEventHandler":Lcom/android/server/wifi/WificondControl$ScanEventHandler;
    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiScannerImpl;->subscribeScanEvents(Landroid/net/wifi/IScanEvent;)V

    .line 269
    new-instance v3, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;-><init>(Lcom/android/server/wifi/WificondControl;Ljava/lang/String;)V

    .line 270
    .local v3, "pnoScanEventHandler":Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;
    iget-object v4, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiScannerImpl;->subscribePnoScanEvents(Landroid/net/wifi/IPnoScanEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    .end local v1    # "scanEventHandler":Lcom/android/server/wifi/WificondControl$ScanEventHandler;
    .end local v2    # "wificondScanner":Landroid/net/wifi/IWifiScannerImpl;
    .end local v3    # "pnoScanEventHandler":Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;
    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to refresh wificond scanner due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0

    .line 245
    :catch_1
    move-exception v2

    .line 246
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to get IClientInterface due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v1
.end method

.method public setupInterfaceForSoftApMode(Ljava/lang/String;)Landroid/net/wifi/IApInterface;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 357
    const-string v0, "WificondControl"

    const-string v1, "Setting up interface for soft ap mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 359
    return-object v1

    .line 362
    :cond_0
    move-object v0, v1

    .line 364
    .local v0, "apInterface":Landroid/net/wifi/IApInterface;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWificond;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 368
    nop

    .line 370
    if-nez v0, :cond_1

    .line 371
    const-string v2, "WificondControl"

    const-string v3, "Could not get IApInterface instance from wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-object v1

    .line 374
    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/IApInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 377
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-object v0

    .line 365
    :catch_0
    move-exception v2

    .line 366
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to get IApInterface due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-object v1
.end method

.method public signalPoll(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$SignalPollResult;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 495
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v0

    .line 496
    .local v0, "iface":Landroid/net/wifi/IClientInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 497
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond client interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-object v1

    .line 503
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->signalPoll()[I

    move-result-object v2

    .line 504
    .local v2, "resultArray":[I
    if-eqz v2, :cond_2

    array-length v3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 511
    :cond_1
    nop

    .line 510
    nop

    .line 512
    new-instance v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$SignalPollResult;-><init>()V

    .line 513
    .local v1, "pollResult":Lcom/android/server/wifi/WifiNative$SignalPollResult;
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;->currentRssi:I

    .line 514
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;->txBitrate:I

    .line 515
    const/4 v3, 0x2

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;->associationFrequency:I

    .line 516
    return-object v1

    .line 505
    .end local v1    # "pollResult":Lcom/android/server/wifi/WifiNative$SignalPollResult;
    :cond_2
    :goto_0
    :try_start_1
    const-string v3, "WificondControl"

    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    return-object v1

    .line 508
    .end local v2    # "resultArray":[I
    :catch_0
    move-exception v2

    .line 509
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-object v1
.end method

.method public startHostapd(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 858
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v0

    .line 859
    .local v0, "iface":Landroid/net/wifi/IApInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 860
    const-string v2, "WificondControl"

    const-string v3, "No valid ap interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v1

    .line 864
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;-><init>(Lcom/android/server/wifi/WificondControl;Lcom/android/server/wifi/WifiNative$SoftApListener;)V

    .line 865
    .local v2, "callback":Landroid/net/wifi/IApInterfaceEventCallback;
    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    invoke-interface {v0, v2}, Landroid/net/wifi/IApInterface;->startHostapd(Landroid/net/wifi/IApInterfaceEventCallback;)Z

    move-result v3

    .line 867
    .local v3, "success":Z
    if-nez v3, :cond_1

    .line 868
    const-string v4, "WificondControl"

    const-string v5, "Failed to start hostapd."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    return v1

    .line 874
    .end local v2    # "callback":Landroid/net/wifi/IApInterfaceEventCallback;
    .end local v3    # "success":Z
    :cond_1
    nop

    .line 875
    const/4 v1, 0x1

    return v1

    .line 871
    :catch_0
    move-exception v2

    .line 872
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in starting soft AP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return v1
.end method

.method public startPnoScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 12
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pnoSettings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 721
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v0

    .line 722
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 723
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond scanner interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v1

    .line 726
    :cond_0
    new-instance v2, Lcom/android/server/wifi/wificond/PnoSettings;

    invoke-direct {v2}, Lcom/android/server/wifi/wificond/PnoSettings;-><init>()V

    .line 727
    .local v2, "settings":Lcom/android/server/wifi/wificond/PnoSettings;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    .line 728
    iget v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->periodInMs:I

    iput v3, v2, Lcom/android/server/wifi/wificond/PnoSettings;->intervalMs:I

    .line 729
    iget v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->min24GHzRssi:I

    iput v3, v2, Lcom/android/server/wifi/wificond/PnoSettings;->min2gRssi:I

    .line 730
    iget v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->min5GHzRssi:I

    iput v3, v2, Lcom/android/server/wifi/wificond/PnoSettings;->min5gRssi:I

    .line 731
    iget-object v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    if-eqz v3, :cond_4

    .line 732
    iget-object v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 733
    .local v6, "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    new-instance v7, Lcom/android/server/wifi/wificond/PnoNetwork;

    invoke-direct {v7}, Lcom/android/server/wifi/wificond/PnoNetwork;-><init>()V

    .line 734
    .local v7, "condNetwork":Lcom/android/server/wifi/wificond/PnoNetwork;
    iget-byte v8, v6, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    iput-boolean v9, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    .line 737
    :try_start_0
    iget-object v8, v6, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    .line 738
    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    nop

    .line 743
    iget-object v8, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    array-length v8, v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_2

    .line 744
    iget-object v8, v2, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_2
    iget-object v8, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    invoke-static {v8}, Lcom/android/server/wifi/WifiGbk;->isAllAscii([B)Z

    move-result v8

    if-nez v8, :cond_3

    .line 748
    new-instance v8, Lcom/android/server/wifi/wificond/PnoNetwork;

    invoke-direct {v8}, Lcom/android/server/wifi/wificond/PnoNetwork;-><init>()V

    .line 749
    .local v8, "condNetwork2":Lcom/android/server/wifi/wificond/PnoNetwork;
    iget-boolean v9, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    iput-boolean v9, v8, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    .line 750
    iget-object v9, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    invoke-static {v9}, Lcom/android/server/wifi/WifiGbk;->toGbk([B)[B

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    .line 751
    iget-object v9, v8, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    if-eqz v9, :cond_3

    .line 752
    iget-object v9, v2, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    const-string v9, "WificondControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiGbk - pnoScan add extra Gbk ssid for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .end local v7    # "condNetwork":Lcom/android/server/wifi/wificond/PnoNetwork;
    .end local v8    # "condNetwork2":Lcom/android/server/wifi/wificond/PnoNetwork;
    goto :goto_2

    .line 739
    .restart local v6    # "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .restart local v7    # "condNetwork":Lcom/android/server/wifi/wificond/PnoNetwork;
    :catch_0
    move-exception v8

    .line 740
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "WificondControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal argument "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    nop

    .line 732
    .end local v6    # "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .end local v7    # "condNetwork":Lcom/android/server/wifi/wificond/PnoNetwork;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 761
    :cond_4
    :try_start_1
    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiScannerImpl;->startPnoScan(Lcom/android/server/wifi/wificond/PnoSettings;)Z

    move-result v3

    .line 762
    .local v3, "success":Z
    iget-object v4, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMetrics;->incrementPnoScanStartAttempCount()V

    .line 763
    if-nez v3, :cond_5

    .line 764
    iget-object v4, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMetrics;->incrementPnoScanFailedCount()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 766
    :cond_5
    return v3

    .line 767
    .end local v3    # "success":Z
    :catch_1
    move-exception v3

    .line 768
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "WificondControl"

    const-string v5, "Failed to start pno scan due to remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public stopHostapd(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 886
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v0

    .line 887
    .local v0, "iface":Landroid/net/wifi/IApInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 888
    const-string v2, "WificondControl"

    const-string v3, "No valid ap interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return v1

    .line 892
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IApInterface;->stopHostapd()Z

    move-result v2

    .line 893
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 894
    const-string v3, "WificondControl"

    const-string v4, "Failed to stop hostapd."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    return v1

    .line 900
    .end local v2    # "success":Z
    :cond_1
    nop

    .line 901
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const/4 v1, 0x1

    return v1

    .line 897
    :catch_0
    move-exception v2

    .line 898
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in stopping soft AP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return v1
.end method

.method public stopPnoScan(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 779
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v0

    .line 780
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 781
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond scanner interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return v1

    .line 785
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->stopPnoScan()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 786
    :catch_0
    move-exception v2

    .line 787
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to stop pno scan due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .end local v2    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public tearDownClientInterface(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 318
    const-string v0, "WificondControl"

    const-string v2, "No valid wificond client interface handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v1

    .line 322
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiScannerImpl;

    .line 323
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 325
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribePnoScanEvents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    .end local v0    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    :cond_1
    nop

    .line 334
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWificond;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    .local v0, "success":Z
    nop

    .line 337
    nop

    .line 339
    if-nez v0, :cond_2

    .line 340
    const-string v2, "WificondControl"

    const-string v3, "Failed to teardown client interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return v1

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const/4 v1, 0x1

    return v1

    .line 335
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to teardown client interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v1

    .line 327
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to unsubscribe wificond scanner due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v1
.end method

.method public tearDownInterfaces()Z
    .locals 4

    .line 412
    const-string v0, "WificondControl"

    const-string v1, "tearing down interfaces in wificond"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 416
    return v1

    .line 420
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 421
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/IWifiScannerImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v3}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 422
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v3}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribePnoScanEvents()V

    .line 423
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/IWifiScannerImpl;>;"
    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->tearDownInterfaces()V

    .line 425
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->clearState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    const/4 v0, 0x1

    return v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to tear down interfaces due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public tearDownSoftApInterface(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 388
    const-string v0, "WificondControl"

    const-string v2, "No valid wificond ap interface handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return v1

    .line 393
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWificond;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .local v0, "success":Z
    nop

    .line 396
    nop

    .line 398
    if-nez v0, :cond_1

    .line 399
    const-string v2, "WificondControl"

    const-string v3, "Failed to teardown AP interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v1

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const/4 v1, 0x1

    return v1

    .line 394
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to teardown AP interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v1
.end method

.method public unsubscribeScan(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 287
    const-string v0, "WificondControl"

    const-string v2, "No valid wificond client interface handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v1

    .line 292
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WificondControl;->stopPnoScan(Ljava/lang/String;)Z

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiScannerImpl;

    .line 296
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    if-eqz v0, :cond_1

    .line 297
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 298
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribePnoScanEvents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v0    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    :cond_1
    nop

    .line 305
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const/4 v0, 0x1

    return v0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to unsubscribe wificond scanner due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v1
.end method
