.class public Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;
.super Ljava/lang/Object;
.source "SupplicantP2pIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field private static final DEFAULT_OPERATING_CLASS:I = 0x51

.field private static final RESULT_NOT_VALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SupplicantP2pIfaceHal"

.field private static final WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

.field private mHidlSupplicantIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

.field private mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

.field private mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

.field private mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

.field private mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

.field private mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private final mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mVendorCallback:Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-string v0, "^(\\d{1,2})-([0-9a-fA-F]{8})-(\\d{1,2})$"

    .line 78
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 84
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 86
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mHidlSupplicantIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 87
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 88
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    .line 89
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 106
    new-instance v1, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$Wvwk6xCSAknWmsVUgpUqV_3NQiE;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$Wvwk6xCSAknWmsVUgpUqV_3NQiE;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 114
    new-instance v1, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$AwvLtkH4UyCOhUYx__3ExZj_7jQ;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$AwvLtkH4UyCOhUYx__3ExZj_7jQ;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 122
    new-instance v1, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$x1gylRyS5TJKypV7BSDBGlA_JgQ;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$x1gylRyS5TJKypV7BSDBGlA_JgQ;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 131
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    .line 132
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mVendorCallback:Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;

    .line 135
    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 67
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 67
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->initSupplicantService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 67
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    return-void
.end method

.method private addIfaceV1_1(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 507
    .local v1, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iput-object p1, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    .line 508
    const/4 v2, 0x1

    iput v2, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    .line 509
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    .local v2, "supplicantIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    nop

    .line 513
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v4

    .line 514
    .local v4, "supplicant_v1_1":Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    if-nez v4, :cond_0

    .line 515
    const-string v5, "SupplicantP2pIfaceHal"

    const-string v6, "Can\'t call addIface: ISupplicantP2pIface is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    .line 518
    :cond_0
    :try_start_3
    new-instance v5, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$wEtvPS8gJpR3uBQ5oG187EyRY3g;

    invoke-direct {v5, v2}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$wEtvPS8gJpR3uBQ5oG187EyRY3g;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->addInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$addInterfaceCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 531
    .end local v4    # "supplicant_v1_1":Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    nop

    .line 532
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    monitor-exit v0

    return-object v3

    .line 527
    :catch_0
    move-exception v4

    .line 528
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicant.addInterface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 530
    monitor-exit v0

    return-object v3

    .line 533
    .end local v1    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    .end local v2    # "supplicantIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    if-nez v0, :cond_0

    .line 796
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ISupplicantP2pIface is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v0, 0x0

    return v0

    .line 799
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkSupplicantVendorAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    if-nez v1, :cond_0

    .line 718
    const-string v1, "SupplicantP2pIfaceHal"

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

    .line 719
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 721
    :cond_0
    const/4 v1, 0x1

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

.method private checkSupplicantVendorP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    if-nez v1, :cond_0

    .line 731
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ISupplicantVendorP2PIface is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 734
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 735
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

    .line 744
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 746
    const-string v1, "SupplicantP2pIfaceHal"

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

    .line 747
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 750
    :cond_0
    const-string v1, "SupplicantP2pIfaceHal"

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

    .line 752
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 754
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

    .line 763
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 765
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorP2pIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 769
    :cond_0
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorP2PIface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 773
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIfaceV1_0(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v0, "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 457
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "getIfaceV1_0 Got null ISupplicant service. Stopping supplicant HIDL startup"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 459
    return-object v2

    .line 463
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v3, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$rBcIcOof6Rq-Qftu35e13aLNWB4;

    invoke-direct {v3, v0}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$rBcIcOof6Rq-Qftu35e13aLNWB4;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    nop

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 476
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 478
    return-object v2

    .line 480
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v3, "getInterface()"

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, "supplicantIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 483
    .local v4, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iget v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 485
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v5, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$T3-sTKN7h8n5NFwINbKp2QW4DoU;

    invoke-direct {v5, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$T3-sTKN7h8n5NFwINbKp2QW4DoU;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    goto :goto_1

    .line 493
    :catch_0
    move-exception v3

    .line 494
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicant.getInterface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 496
    return-object v2

    .line 500
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    :cond_2
    goto :goto_0

    .line 501
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    return-object v2

    .line 471
    .end local v1    # "supplicantIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;>;"
    :catch_1
    move-exception v1

    .line 472
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.listInterfaces exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-object v2
.end method

.method private getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .locals 7
    .param p1, "networkId"    # I

    .line 2282
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2283
    :try_start_0
    const-string v1, "getNetwork"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 2284
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetwork("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$0bx9zpdw1cBV0xDw3PlOvtHpYHc;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$0bx9zpdw1cBV0xDw3PlOvtHpYHc;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, p1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2295
    goto :goto_0

    .line 2292
    :catch_0
    move-exception v3

    .line 2293
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2296
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2297
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "getNetwork got null network"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    monitor-exit v0

    return-object v2

    .line 2300
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getP2pNetworkMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2301
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getVendorIfaceV2_0(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;
    .locals 9
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .local v1, "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "listVendorInterfaces"

    .line 408
    .local v3, "methodStr":Ljava/lang/String;
    const-string v4, "listVendorInterfaces"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantVendorAndLogFailure(Ljava/lang/String;)Z

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

    .line 409
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    new-instance v5, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$_f6b29tHTaNi_qISRyWyT6Bl0SE;

    invoke-direct {v5, p0, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$_f6b29tHTaNi_qISRyWyT6Bl0SE;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Ljava/util/ArrayList;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->listVendorInterfaces(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$listVendorInterfacesCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    .end local v3    # "methodStr":Ljava/lang/String;
    nop

    .line 421
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 422
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Got zero HIDL supplicant vendor ifaces. Stopping supplicant vendor HIDL startup."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    monitor-exit v0

    return-object v2

    .line 425
    :cond_1
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v4, "getVendorInterface"

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    .line 426
    .local v3, "supplicantVendorIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 427
    .local v5, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iget v6, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    iget-object v6, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_3

    .line 429
    :try_start_5
    const-string v4, "getVendorInterface"

    .line 430
    .local v4, "methodStr":Ljava/lang/String;
    const-string v6, "getVendorInterface"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantVendorAndLogFailure(Ljava/lang/String;)Z

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

    .line 431
    :cond_2
    :try_start_7
    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    new-instance v7, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$MdaA-IgUkYZlqiOm5NAp8i_QQXY;

    invoke-direct {v7, p0, v3}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$MdaA-IgUkYZlqiOm5NAp8i_QQXY;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v6, v5, v7}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->getVendorInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$getVendorInterfaceCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 443
    .end local v4    # "methodStr":Ljava/lang/String;
    goto :goto_1

    .line 439
    :catch_0
    move-exception v4

    .line 440
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v6, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ISupplicantVendor.getInterface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantVendorServiceDiedHandler()V

    .line 442
    monitor-exit v0

    return-object v2

    .line 446
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    :cond_3
    goto :goto_0

    .line 448
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    monitor-exit v0

    return-object v2

    .line 416
    .end local v3    # "supplicantVendorIface":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;>;"
    :catch_1
    move-exception v3

    .line 417
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantVendor.listInterfaces exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantVendorServiceDiedHandler()V

    .line 419
    monitor-exit v0

    return-object v2

    .line 449
    .end local v1    # "supplicantIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method private initSupplicantService()Z
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    nop

    .line 243
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v2, :cond_0

    .line 244
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Got null ISupplicant service. Stopping supplicant HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-exit v0

    return v1

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToSupplicantDeath()Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    monitor-exit v0

    return v1

    .line 250
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->initSupplicantVendorService()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    const-string v0, "SupplicantP2pIfaceHal"

    const-string v1, "Failed to init SupplicantVendor service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 250
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    monitor-exit v0

    return v1

    .line 250
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initSupplicantVendorService()Z
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantVendorMockable()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 261
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    if-eqz v2, :cond_0

    .line 262
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Discover ISupplicantVendor service successfull"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_0
    nop

    .line 268
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    if-nez v2, :cond_1

    .line 269
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Got null ISupplicantVendor service. Stopping supplicantVendor HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    monitor-exit v0

    return v1

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToSupplicantVendorDeath()Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    monitor-exit v0

    return v1

    .line 276
    :cond_2
    monitor-exit v0

    .line 277
    const/4 v0, 0x1

    return v0

    .line 276
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantVendor.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit v0

    return v1

    .line 276
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isV1_1()Z
    .locals 6

    .line 685
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

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

    .line 693
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 688
    :catch_0
    move-exception v2

    .line 689
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 691
    monitor-exit v0

    return v1

    .line 693
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isVendor_2_0()Z
    .locals 6

    .line 701
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantVendorMockable()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

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

    .line 709
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 704
    :catch_0
    move-exception v2

    .line 705
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantVendor.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 707
    monitor-exit v0

    return v1

    .line 709
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$addIfaceV1_1$7(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3
    .param p0, "supplicantIface"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 520
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 522
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 525
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method static synthetic lambda$connect$9(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "generatedPin"    # Ljava/lang/String;

    .line 1144
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1145
    return-void
.end method

.method static synthetic lambda$getClientList$23(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "clients"    # Ljava/util/ArrayList;

    .line 2658
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2659
    return-void
.end method

.method static synthetic lambda$getDeviceAddress$10(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 4
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "address"    # [B

    .line 1352
    const/4 v0, 0x0

    .line 1354
    .local v0, "parsedAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1357
    goto :goto_0

    .line 1355
    :catch_0
    move-exception v1

    .line 1356
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Could not process reported address."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1359
    return-void
.end method

.method static synthetic lambda$getGroupCapability$12(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p0, "capability"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "cap"    # I

    .line 1554
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1555
    return-void
.end method

.method static synthetic lambda$getIfaceV1_0$5(Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "supplicantIfaces"    # Ljava/util/ArrayList;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "ifaces"    # Ljava/util/ArrayList;

    .line 465
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    .line 466
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Supplicant Interfaces failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void

    .line 469
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 470
    return-void
.end method

.method static synthetic lambda$getIfaceV1_0$6(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3
    .param p0, "supplicantIface"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 487
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void

    .line 491
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method static synthetic lambda$getName$8(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "name"    # Ljava/lang/String;

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 834
    return-void
.end method

.method static synthetic lambda$getNetwork$16(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "network"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 2290
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2291
    return-void
.end method

.method static synthetic lambda$getNfcHandoverRequest$21(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "message"    # Ljava/util/ArrayList;

    .line 2506
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2507
    return-void
.end method

.method static synthetic lambda$getNfcHandoverSelect$22(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "message"    # Ljava/util/ArrayList;

    .line 2534
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2535
    return-void
.end method

.method static synthetic lambda$getSsid$11(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "ssid"    # Ljava/util/ArrayList;

    .line 1399
    const/4 v0, 0x0

    .line 1400
    .local v0, "ssidString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1402
    nop

    .line 1403
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1406
    goto :goto_0

    .line 1404
    :catch_0
    move-exception v1

    .line 1405
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Could not encode SSID."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1408
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1409
    return-void
.end method

.method public static synthetic lambda$getVendorIfaceV2_0$3(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "supplicantIfaces"    # Ljava/util/ArrayList;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "ifaces"    # Ljava/util/ArrayList;

    .line 411
    const-string v0, "listVendorInterfaces"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 415
    return-void
.end method

.method public static synthetic lambda$getVendorIfaceV2_0$4(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)V
    .locals 1
    .param p1, "supplicantVendorIface"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    .line 433
    const-string v0, "getVendorInterface"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    return-void

    .line 437
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method static synthetic lambda$listNetworks$15(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "networkIds"    # Ljava/util/ArrayList;

    .line 2265
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2266
    return-void
.end method

.method static synthetic lambda$loadGroups$17(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p0, "resultIsCurrent"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "isCurrent"    # Z

    .line 2328
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2329
    return-void
.end method

.method static synthetic lambda$loadGroups$18(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "resultSsid"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "ssid"    # Ljava/util/ArrayList;

    .line 2350
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2351
    return-void
.end method

.method static synthetic lambda$loadGroups$19(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 0
    .param p0, "resultBssid"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "bssid"    # [B

    .line 2370
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2371
    return-void
.end method

.method static synthetic lambda$loadGroups$20(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p0, "resultIsGo"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "isGo"    # Z

    .line 2388
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2389
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 108
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IServiceManager died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 112
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 116
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicant/ISupplicantStaIface died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 124
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendor/ISupplicantVendorP2PIface died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantVendorServiceDiedHandler()V

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$requestServiceDiscovery$13(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;J)V
    .locals 1
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "identifier"    # J

    .line 1872
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 1873
    return-void
.end method

.method static synthetic lambda$startWpsPinDisplay$14(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "generatedPin"    # Ljava/lang/String;

    .line 2061
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    .line 2062
    return-void
.end method

.method private linkToServiceManagerDeath()Z
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    const-string v0, "SupplicantP2pIfaceHal"

    const-string v2, "Error on linkToDeath on IServiceManager"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return v1

    .line 150
    :cond_1
    nop

    .line 151
    const/4 v0, 0x1

    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "IServiceManager.linkToDeath exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    return v1
.end method

.method private linkToSupplicantDeath()Z
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 206
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    const-string v0, "SupplicantP2pIfaceHal"

    const-string v2, "Error on linkToDeath on ISupplicant"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    return v1

    .line 214
    :cond_1
    nop

    .line 215
    const/4 v0, 0x1

    return v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "ISupplicant.linkToDeath exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    return v1
.end method

.method private linkToSupplicantP2pIfaceDeath()Z
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 283
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    const-string v0, "SupplicantP2pIfaceHal"

    const-string v2, "Error on linkToDeath on ISupplicantP2pIface"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    return v1

    .line 291
    :cond_1
    nop

    .line 292
    const/4 v0, 0x1

    return v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "ISupplicantP2pIface.linkToDeath exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    return v1
.end method

.method private linkToSupplicantVendorDeath()Z
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 222
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Error on linkToDeath on ISupplicantVendor"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantVendorServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    monitor-exit v0

    return v2

    .line 230
    :cond_1
    nop

    .line 231
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "ISupplicantVendor.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    monitor-exit v0

    return v2

    .line 232
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToSupplicantVendorP2pIfaceDeath(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;)Z
    .locals 5
    .param p1, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    .line 296
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 309
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 299
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Error on linkToDeath on ISupplicantVendorP2PIface"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantVendorServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :try_start_2
    monitor-exit v0

    return v1

    .line 307
    :cond_1
    nop

    .line 308
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "ISupplicantVendorP2PIface.linkToDeath exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    monitor-exit v0

    return v1

    .line 309
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private listNetworks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2259
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2260
    :try_start_0
    const-string v1, "listNetworks"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2261
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "listNetworks()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2263
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v3, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$sJ1jMuqMfXXH_qmBLKAUwW8sPa4;

    invoke-direct {v3, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$sJ1jMuqMfXXH_qmBLKAUwW8sPa4;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2270
    goto :goto_0

    .line 2267
    :catch_0
    move-exception v2

    .line 2268
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2271
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    monitor-exit v0

    return-object v2

    .line 2272
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected static logCompletion(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    .locals 3
    .param p0, "operation"    # Ljava/lang/String;
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 781
    if-nez p1, :cond_0

    .line 782
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: no status code returned."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 783
    :cond_0
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_1

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " completed successfully."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :cond_1
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_0
    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 777
    const-string v0, "SupplicantP2pIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method private removeIfaceV1_1(Ljava/lang/String;)Z
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    nop

    .line 570
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v2

    .line 571
    .local v2, "supplicant_v1_1":Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    if-nez v2, :cond_0

    .line 572
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Can\'t call removeIface: ISupplicantP2pIface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 575
    :cond_0
    :try_start_2
    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 576
    .local v3, "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    iput-object p1, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    .line 577
    const/4 v4, 0x1

    iput v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    .line 578
    invoke-interface {v2, v3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->removeInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v5

    .line 579
    .local v5, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    iget v6, v5, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v6, :cond_1

    .line 580
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove iface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 581
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 583
    :cond_1
    const/4 v6, 0x0

    :try_start_4
    iput-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 588
    .end local v2    # "supplicant_v1_1":Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    .end local v3    # "ifaceInfo":Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;
    .end local v5    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    nop

    .line 589
    :try_start_5
    iput-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 590
    monitor-exit v0

    return v4

    .line 591
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 584
    :catch_0
    move-exception v2

    .line 585
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicant.removeInterface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 587
    monitor-exit v0

    return v1

    .line 591
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method private static stringToWpsConfigMethod(Ljava/lang/String;)S
    .locals 5
    .param p0, "configMethod"    # Ljava/lang/String;

    .line 2697
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

    .line 2727
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

    .line 2725
    :pswitch_0
    const/16 v0, 0x4008

    return v0

    .line 2723
    :pswitch_1
    const/16 v0, 0x2008

    return v0

    .line 2721
    :pswitch_2
    const/16 v0, 0x1000

    return v0

    .line 2719
    :pswitch_3
    const/16 v0, 0x480

    return v0

    .line 2717
    :pswitch_4
    const/16 v0, 0x280

    return v0

    .line 2715
    :pswitch_5
    const/16 v0, 0x100

    return v0

    .line 2713
    :pswitch_6
    const/16 v0, 0x80

    return v0

    .line 2711
    :pswitch_7
    const/16 v0, 0x40

    return v0

    .line 2709
    :pswitch_8
    const/16 v0, 0x10

    return v0

    .line 2707
    :pswitch_9
    const/16 v0, 0x20

    return v0

    .line 2705
    :pswitch_a
    return v2

    .line 2703
    :pswitch_b
    return v4

    .line 2701
    :pswitch_c
    return v3

    .line 2699
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

.method private supplicantServiceDiedHandler()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 604
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 605
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 606
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    .line 607
    monitor-exit v0

    .line 608
    return-void

    .line 607
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private supplicantVendorServiceDiedHandler()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 597
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    .line 598
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private wpsInfoToConfigMethod(I)I
    .locals 3
    .param p1, "info"    # I

    .line 803
    packed-switch p1, :pswitch_data_0

    .line 815
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported WPS provision method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v0, -0x1

    return v0

    .line 812
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 808
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 805
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelConnect()Z
    .locals 6

    .line 1166
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1167
    :try_start_0
    const-string v1, "cancelConnect"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1168
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "cancelConnect()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelConnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    goto :goto_0

    .line 1171
    :catch_0
    move-exception v2

    .line 1172
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1175
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1176
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public cancelServiceDiscovery(Ljava/lang/String;)Z
    .locals 8
    .param p1, "identifier"    # Ljava/lang/String;

    .line 1893
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1894
    :try_start_0
    const-string v1, "cancelServiceDiscovery"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1895
    :cond_0
    if-nez p1, :cond_1

    .line 1896
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "cancelServiceDiscovery requires a valid tag."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1900
    :cond_1
    const-wide/16 v3, 0x0

    .line 1902
    .local v3, "id":J
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v5

    .line 1906
    .end local v3    # "id":J
    .local v1, "id":J
    nop

    .line 1908
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelServiceDiscovery("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1911
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v4, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelServiceDiscovery(J)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1915
    goto :goto_0

    .line 1912
    :catch_0
    move-exception v4

    .line 1913
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1917
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    monitor-exit v0

    return v4

    .line 1903
    .end local v1    # "id":J
    .local v3, "id":J
    :catch_1
    move-exception v1

    .line 1904
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service discovery identifier invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1905
    monitor-exit v0

    return v2

    .line 1918
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "id":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public cancelWps(Ljava/lang/String;)Z
    .locals 6
    .param p1, "groupIfName"    # Ljava/lang/String;

    .line 2080
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2081
    :try_start_0
    const-string v1, "cancelWps"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 2082
    :cond_0
    if-nez p1, :cond_1

    .line 2083
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Group name required when requesting WPS KEYPAD."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    monitor-exit v0

    return v2

    .line 2087
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelWps("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelWps(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2094
    goto :goto_0

    .line 2091
    :catch_0
    move-exception v2

    .line 2092
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2096
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2097
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public configureExtListen(ZII)Z
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "periodInMillis"    # I
    .param p3, "intervalInMillis"    # I

    .line 1586
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-ge p3, p2, :cond_0

    .line 1587
    return v0

    .line 1589
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1590
    :try_start_0
    const-string v2, "configureExtListen"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 1593
    :cond_1
    if-nez p1, :cond_2

    .line 1594
    const/4 p2, 0x0

    .line 1595
    const/4 p3, 0x0

    .line 1600
    :cond_2
    if-ltz p2, :cond_4

    if-gez p3, :cond_3

    goto :goto_1

    .line 1606
    :cond_3
    new-instance v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureExtListen("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1609
    .local v0, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 1610
    invoke-interface {v2, p2, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->configureExtListen(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1609
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1614
    goto :goto_0

    .line 1611
    :catch_0
    move-exception v2

    .line 1612
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1616
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v1

    return v2

    .line 1601
    .end local v0    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_4
    :goto_1
    const-string v2, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameters supplied to configureExtListen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    monitor-exit v1

    return v0

    .line 1617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "joinExistingGroup"    # Z

    .line 1092
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1093
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1094
    :try_start_0
    const-string v2, "setSsidPostfix"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return-object v0

    .line 1096
    :cond_1
    if-nez p1, :cond_2

    .line 1097
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Could not connect: null config."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    monitor-exit v1

    return-object v0

    .line 1101
    :cond_2
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1102
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Could not parse null mac address."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    monitor-exit v1

    return-object v0

    .line 1106
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v2, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1107
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Expected empty pin for PBC."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1111
    :cond_4
    move-object v2, v0

    .line 1113
    .local v2, "peerAddress":[B
    :try_start_1
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    .end local v2    # "peerAddress":[B
    .local v5, "peerAddress":[B
    nop

    .line 1119
    :try_start_2
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->wpsInfoToConfigMethod(I)I

    move-result v2

    .line 1120
    .local v2, "provisionMethod":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 1121
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid WPS config method: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v6, v6, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    monitor-exit v1

    return-object v0

    .line 1125
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_6
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_0

    .line 1126
    .local v7, "preSelectedPin":Ljava/lang/String;
    :goto_1
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_7

    const/4 v0, 0x1

    :goto_2
    move v9, v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 1128
    .local v9, "persistent":Z
    :goto_3
    const/4 v0, 0x0

    .line 1129
    .local v0, "goIntent":I
    if-nez p2, :cond_a

    .line 1130
    iget v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1131
    .local v3, "groupOwnerIntent":I
    if-ltz v3, :cond_8

    const/16 v4, 0xf

    if-le v3, v4, :cond_9

    .line 1132
    :cond_8
    const/4 v3, 0x6

    .line 1134
    :cond_9
    move v0, v3

    .line 1137
    .end local v3    # "groupOwnerIntent":I
    :cond_a
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1140
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v11, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$zYhjC8AJU7WsMZjbVGY5vsY81pc;

    invoke-direct {v11, v3}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$zYhjC8AJU7WsMZjbVGY5vsY81pc;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    move v6, v2

    move v8, p2

    move v10, v0

    invoke-interface/range {v4 .. v11}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->connect([BILjava/lang/String;ZZILandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1149
    goto :goto_4

    .line 1146
    :catch_0
    move-exception v4

    .line 1147
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1150
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_4
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    monitor-exit v1

    return-object v4

    .line 1114
    .end local v0    # "goIntent":I
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    .end local v5    # "peerAddress":[B
    .end local v7    # "preSelectedPin":Ljava/lang/String;
    .end local v9    # "persistent":Z
    .local v2, "peerAddress":[B
    :catch_1
    move-exception v3

    .line 1115
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse peer mac address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    monitor-exit v1

    return-object v0

    .line 1151
    .end local v2    # "peerAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public enableWfd(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .line 2108
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2109
    :try_start_0
    const-string v1, "enableWfd"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2111
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableWfd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->enableWfd(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2118
    goto :goto_0

    .line 2115
    :catch_0
    move-exception v2

    .line 2116
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2120
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2121
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public find(I)Z
    .locals 6
    .param p1, "timeout"    # I

    .line 906
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_0
    const-string v1, "find"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 909
    :cond_0
    if-gez p1, :cond_1

    .line 910
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid timeout value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    monitor-exit v0

    return v2

    .line 913
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->find(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    goto :goto_0

    .line 916
    :catch_0
    move-exception v2

    .line 917
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 920
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 921
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public flush()Z
    .locals 6

    .line 951
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    const-string v1, "flush"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 953
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "flush()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    goto :goto_0

    .line 956
    :catch_0
    move-exception v2

    .line 957
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 960
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 961
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getClientList(I)Ljava/lang/String;
    .locals 8
    .param p1, "networkId"    # I

    .line 2646
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2647
    :try_start_0
    const-string v1, "getClientList"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 2648
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v1

    .line 2649
    .local v1, "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    if-nez v1, :cond_1

    .line 2650
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Invalid network id "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    monitor-exit v0

    return-object v2

    .line 2653
    :cond_1
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getClientList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$3E_PLHogC8bbCVizc-oAHoGJ83s;

    invoke-direct {v4, v3}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$3E_PLHogC8bbCVizc-oAHoGJ83s;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->getClientList(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getClientListCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2663
    goto :goto_0

    .line 2660
    :catch_0
    move-exception v4

    .line 2661
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2664
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2665
    monitor-exit v0

    return-object v2

    .line 2667
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2668
    .local v2, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/p2p/-$$Lambda$22Qhg7RQJlX-ihi83tqGgsfF-Ms;->INSTANCE:Lcom/android/server/wifi/p2p/-$$Lambda$22Qhg7RQJlX-ihi83tqGgsfF-Ms;

    .line 2669
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    const-string v5, " "

    .line 2670
    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    .line 2668
    return-object v4

    .line 2671
    .end local v1    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .end local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 7

    .line 1347
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1348
    :try_start_0
    const-string v1, "getDeviceAddress"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 1349
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v3, "getDeviceAddress()"

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$zBdzZfMB-lbUEEHcAL0FPwAGxiU;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$zBdzZfMB-lbUEEHcAL0FPwAGxiU;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getDeviceAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    nop

    .line 1366
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1360
    :catch_0
    move-exception v3

    .line 1361
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1363
    monitor-exit v0

    return-object v2

    .line 1367
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 8
    .param p1, "peerAddress"    # Ljava/lang/String;

    .line 1532
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    :try_start_0
    const-string v1, "getGroupCapability"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1534
    monitor-exit v0

    return v2

    .line 1537
    :cond_0
    if-nez p1, :cond_1

    .line 1538
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse peer mac address."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1541
    :cond_1
    const/4 v1, 0x0

    .line 1543
    .local v1, "macAddress":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1547
    nop

    .line 1549
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGroupCapability("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1552
    .local v3, "capability":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Integer;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v5, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$lfRzYr6uBMcTbyeN59Me-RZ9D8Y;

    invoke-direct {v5, v3}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$lfRzYr6uBMcTbyeN59Me-RZ9D8Y;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getGroupCapability([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1559
    goto :goto_0

    .line 1556
    :catch_0
    move-exception v4

    .line 1557
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1561
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1562
    monitor-exit v0

    return v2

    .line 1565
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 1544
    .end local v3    # "capability":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v3

    .line 1545
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse group address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1546
    monitor-exit v0

    return v2

    .line 1566
    .end local v1    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    .line 826
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_0
    const-string v1, "getName"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 828
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "getName()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v3, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$ZQD-81BR921brWQYG9myCMIvK1I;

    invoke-direct {v3, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$ZQD-81BR921brWQYG9myCMIvK1I;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    goto :goto_0

    .line 835
    :catch_0
    move-exception v2

    .line 836
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 839
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 840
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNfcHandoverRequest()Ljava/lang/String;
    .locals 7

    .line 2499
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2500
    :try_start_0
    const-string v1, "getNfcHandoverRequest"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 2501
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v3, "getNfcHandoverRequest()"

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2504
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$aG1tk6Bo_9sXqPmX1a9lF7mnzKU;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$aG1tk6Bo_9sXqPmX1a9lF7mnzKU;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverRequestMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2511
    goto :goto_0

    .line 2508
    :catch_0
    move-exception v3

    .line 2509
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2512
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2513
    monitor-exit v0

    return-object v2

    .line 2516
    :cond_1
    nop

    .line 2517
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 2516
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2518
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNfcHandoverSelect()Ljava/lang/String;
    .locals 7

    .line 2527
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2528
    :try_start_0
    const-string v1, "getNfcHandoverSelect"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 2529
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v3, "getNfcHandoverSelect()"

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2532
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$sgaYvviqSBcLbtHvzimgLwO-_GQ;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$sgaYvviqSBcLbtHvzimgLwO-_GQ;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverSelectMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2539
    goto :goto_0

    .line 2536
    :catch_0
    move-exception v3

    .line 2537
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2540
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2541
    monitor-exit v0

    return-object v2

    .line 2544
    :cond_1
    nop

    .line 2545
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 2544
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2546
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected getP2pIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;
    .locals 1
    .param p1, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 669
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    move-result-object v0

    return-object v0
.end method

.method protected getP2pNetworkMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .locals 1
    .param p1, "network"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    .line 673
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .line 1379
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_0
    const-string v1, "getSsid"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 1382
    :cond_0
    if-nez p1, :cond_1

    .line 1383
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse peer mac address."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1386
    :cond_1
    move-object v1, v2

    .line 1388
    .local v1, "macAddress":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1392
    nop

    .line 1394
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSsid("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1397
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v5, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$g_LPSdr9FtNbJ4h34I-n0JlyBq8;

    invoke-direct {v5, v3}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$g_LPSdr9FtNbJ4h34I-n0JlyBq8;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getSsid([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1414
    nop

    .line 1416
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1410
    :catch_0
    move-exception v4

    .line 1411
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1413
    monitor-exit v0

    return-object v2

    .line 1389
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1390
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse mac address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1391
    monitor-exit v0

    return-object v2

    .line 1417
    .end local v1    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method protected getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v2, "Failed to get ISupplicant"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getSupplicantMockableV1_1()Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v1

    .line 659
    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 665
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 661
    :catch_0
    move-exception v1

    .line 662
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Failed to get ISupplicant"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 665
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

    .line 645
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_0
    invoke-static {}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;->getService()Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 652
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Failed to get ISupplicant"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 652
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getVendorP2pIfaceMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;
    .locals 1
    .param p1, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    .line 677
    invoke-interface {p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    move-result-object v0

    return-object v0
.end method

.method public groupAdd(IZ)Z
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "isPersistent"    # Z

    .line 1470
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1471
    :try_start_0
    const-string v1, "groupAdd"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1472
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupAdd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addGroup(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1479
    goto :goto_0

    .line 1476
    :catch_0
    move-exception v2

    .line 1477
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1480
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1481
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public groupAdd(Z)Z
    .locals 1
    .param p1, "isPersistent"    # Z

    .line 1494
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupAdd(IZ)Z

    move-result v0

    return v0
.end method

.method public groupRemove(Ljava/lang/String;)Z
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;

    .line 1508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1510
    :try_start_0
    const-string v2, "groupRemove"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 1511
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupRemove("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeGroup(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1517
    goto :goto_0

    .line 1514
    :catch_0
    move-exception v2

    .line 1515
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1518
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1519
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public initialize()Z
    .locals 8

    .line 160
    const-string v0, "SupplicantP2pIfaceHal"

    const-string v1, "Registering ISupplicant service ready callback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Supplicant HAL already initialized."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit v0

    return v2

    .line 168
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 169
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendor:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;

    .line 170
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 171
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 174
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v4, :cond_1

    .line 175
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v2, "Failed to get HIDL Service Manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    .line 178
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToServiceManagerDeath()Z

    move-result v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_2

    .line 179
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v3

    .line 183
    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    const-string v6, "default"

    iget-object v7, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v4, v5, v6, v7}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 185
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v4, "Failed to register for notifications to android.hardware.wifi.supplicant@1.0::ISupplicant"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    :try_start_6
    monitor-exit v0

    return v3

    .line 193
    :cond_3
    monitor-exit v0

    return v2

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while trying to register a listener for ISupplicant service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 199
    .end local v1    # "e":Landroid/os/RemoteException;
    monitor-exit v0

    return v3

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 7
    .param p1, "selectMessage"    # Ljava/lang/String;

    .line 2555
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2556
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2557
    :try_start_0
    const-string v2, "initiatorReportNfcHandover"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 2558
    :cond_1
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiatorReportNfcHandover("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2561
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 2562
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    .line 2561
    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2570
    :goto_0
    goto :goto_1

    .line 2567
    :catch_0
    move-exception v3

    .line 2568
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal argument "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2569
    monitor-exit v1

    return v0

    .line 2564
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2565
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2571
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2572
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public invite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 8
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .line 1247
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_0
    const-string v2, "invite"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 1250
    :cond_1
    if-nez p1, :cond_2

    .line 1251
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot invite to null group."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    monitor-exit v0

    return v1

    .line 1255
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1256
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot invite to group with null owner."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    monitor-exit v0

    return v1

    .line 1260
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1261
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Group owner has no mac address."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1265
    :cond_4
    const/4 v2, 0x0

    .line 1267
    .local v2, "ownerMacAddress":[B
    :try_start_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1271
    nop

    .line 1273
    if-nez p2, :cond_5

    .line 1274
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Cannot parse peer mac address."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    .line 1280
    :cond_5
    :try_start_3
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v3

    .line 1284
    .local v1, "peerMacAddress":[B
    nop

    .line 1283
    nop

    .line 1286
    :try_start_4
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invite("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1290
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 1291
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    .line 1290
    invoke-interface {v4, v5, v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->invite(Ljava/lang/String;[B[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1295
    goto :goto_0

    .line 1292
    :catch_0
    move-exception v4

    .line 1293
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1296
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    monitor-exit v0

    return v4

    .line 1281
    .end local v1    # "peerMacAddress":[B
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catch_1
    move-exception v3

    .line 1282
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Peer mac address parse error."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    monitor-exit v0

    return v1

    .line 1268
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 1269
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Group owner mac address parse error."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    monitor-exit v0

    return v1

    .line 1297
    .end local v2    # "ownerMacAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public isInitializationComplete()Z
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitializationStarted()Z
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadGroups(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z
    .locals 14
    .param p1, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 2311
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2312
    :try_start_0
    const-string v1, "loadGroups"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 2313
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->listNetworks()Ljava/util/List;

    move-result-object v1

    .line 2314
    .local v1, "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_6

    .line 2317
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2318
    .local v3, "networkId":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v4

    .line 2319
    .local v4, "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    if-nez v4, :cond_2

    .line 2320
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to retrieve network object for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    goto :goto_0

    .line 2323
    :cond_2
    new-instance v5, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCurrent("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2326
    .local v5, "resultIsCurrent":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    :try_start_1
    new-instance v6, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$46EeN9ldrxoq85aJ06n8leLnqa0;

    invoke-direct {v6, v5}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$46EeN9ldrxoq85aJ06n8leLnqa0;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->isCurrent(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isCurrentCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2333
    goto :goto_1

    .line 2330
    :catch_0
    move-exception v6

    .line 2331
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2336
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_5

    .line 2341
    :cond_3
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 2342
    .local v6, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 2345
    new-instance v7, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSsid("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2348
    .local v7, "resultSsid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :try_start_3
    new-instance v8, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$lCGSBqf91PgBm-3BGOVVFuWRwao;

    invoke-direct {v8, v7}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$lCGSBqf91PgBm-3BGOVVFuWRwao;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v8}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getSsidCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2355
    goto :goto_2

    .line 2352
    :catch_1
    move-exception v8

    .line 2353
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "SupplicantP2pIfaceHal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ISupplicantP2pIface exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2356
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 2357
    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2358
    nop

    .line 2359
    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .line 2358
    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 2365
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBssid("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2368
    .local v8, "resultBssid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<[B>;"
    :try_start_5
    new-instance v9, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$RmZHbucfmdwizVZtP749hOrrV-c;

    invoke-direct {v9, v8}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$RmZHbucfmdwizVZtP749hOrrV-c;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v9}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getBssidCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2375
    goto :goto_3

    .line 2372
    :catch_2
    move-exception v9

    .line 2373
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v10, "SupplicantP2pIfaceHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ISupplicantP2pIface exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2376
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2377
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 2378
    .local v9, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    nop

    .line 2379
    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2380
    invoke-virtual {v6, v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2383
    .end local v9    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    new-instance v9, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isGo("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2386
    .local v9, "resultIsGo":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    :try_start_7
    new-instance v10, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$FHS8JFuQKAI3YMplws47sZvI6gY;

    invoke-direct {v10, v9}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$FHS8JFuQKAI3YMplws47sZvI6gY;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v4, v10}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->isGo(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isGoCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2393
    goto :goto_4

    .line 2390
    :catch_3
    move-exception v10

    .line 2391
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v11, "SupplicantP2pIfaceHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ISupplicantP2pIface exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2394
    .end local v10    # "e":Landroid/os/RemoteException;
    :goto_4
    invoke-virtual {v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2395
    invoke-virtual {v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 2397
    :cond_5
    invoke-virtual {p1, v6}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 2398
    .end local v3    # "networkId":Ljava/lang/Integer;
    .end local v4    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .end local v5    # "resultIsCurrent":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    .end local v6    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v7    # "resultSsid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    .end local v8    # "resultBssid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<[B>;"
    .end local v9    # "resultIsGo":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    goto/16 :goto_0

    .line 2361
    .restart local v3    # "networkId":Ljava/lang/Integer;
    .restart local v4    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .restart local v5    # "resultIsCurrent":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    .restart local v6    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v7    # "resultSsid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :cond_6
    const-string v8, "SupplicantP2pIfaceHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "group ssid is invalid! resultSsid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    goto/16 :goto_0

    .line 2337
    .end local v6    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v7    # "resultSsid":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/util/ArrayList;>;"
    :cond_7
    :goto_5
    const-string v6, "SupplicantP2pIfaceHal"

    const-string v7, "Skipping current network"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    goto/16 :goto_0

    .line 2399
    .end local v1    # "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "networkId":Ljava/lang/Integer;
    .end local v4    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .end local v5    # "resultIsCurrent":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Boolean;>;"
    :cond_8
    monitor-exit v0

    .line 2400
    const/4 v0, 0x1

    return v0

    .line 2315
    .restart local v1    # "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9
    :goto_6
    monitor-exit v0

    return v2

    .line 2399
    .end local v1    # "networkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method public provisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1190
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1191
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1192
    :try_start_0
    const-string v2, "provisionDiscovery"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 1194
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->wpsInfoToConfigMethod(I)I

    move-result v2

    .line 1195
    .local v2, "targetMethod":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1196
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized WPS configuration method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    monitor-exit v1

    return v0

    .line 1199
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1201
    const/4 v2, 0x2

    goto :goto_0

    .line 1202
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1204
    const/4 v2, 0x1

    .line 1207
    :cond_4
    :goto_0
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 1208
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Cannot parse null mac address."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1211
    :cond_5
    const/4 v3, 0x0

    .line 1213
    .local v3, "macAddress":[B
    :try_start_1
    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 1217
    .end local v3    # "macAddress":[B
    .local v0, "macAddress":[B
    nop

    .line 1219
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provisionDiscovery("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1222
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v4, v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->provisionDiscovery([BI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1226
    goto :goto_1

    .line 1223
    :catch_0
    move-exception v4

    .line 1224
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1228
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    monitor-exit v1

    return v4

    .line 1214
    .end local v0    # "macAddress":[B
    .local v3, "macAddress":[B
    :catch_1
    move-exception v4

    .line 1215
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "SupplicantP2pIfaceHal"

    const-string v6, "Could not parse peer mac address."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1216
    monitor-exit v1

    return v0

    .line 1229
    .end local v2    # "targetMethod":I
    .end local v3    # "macAddress":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Z
    .locals 6
    .param p1, "receiver"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    .line 857
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_0
    const-string v1, "registerCallback"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 859
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "registerCallback()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    goto :goto_0

    .line 862
    :catch_0
    move-exception v2

    .line 863
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 866
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 867
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback;)Z
    .locals 6
    .param p1, "receiver"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback;

    .line 883
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    :try_start_0
    const-string v1, "registerVendorCallback"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantVendorP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 885
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "registerVendorCallback()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;->registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    goto :goto_0

    .line 888
    :catch_0
    move-exception v2

    .line 889
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantVendorP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantVendorServiceDiedHandler()V

    .line 892
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 893
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public reinvoke(ILjava/lang/String;)Z
    .locals 7
    .param p1, "networkId"    # I
    .param p2, "peerAddress"    # Ljava/lang/String;

    .line 1430
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-gez p1, :cond_0

    goto/16 :goto_1

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1432
    :try_start_0
    const-string v2, "reinvoke"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 1433
    :cond_1
    if-nez p2, :cond_2

    .line 1434
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse peer mac address."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1437
    :cond_2
    const/4 v2, 0x0

    .line 1439
    .local v2, "macAddress":[B
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1443
    .end local v2    # "macAddress":[B
    .local v1, "macAddress":[B
    nop

    .line 1445
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reinvoke("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1448
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, p1, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reinvoke(I[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1452
    goto :goto_0

    .line 1449
    :catch_0
    move-exception v3

    .line 1450
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1454
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1440
    .end local v1    # "macAddress":[B
    .local v2, "macAddress":[B
    :catch_1
    move-exception v3

    .line 1441
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse mac address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1442
    monitor-exit v0

    return v1

    .line 1455
    .end local v2    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 1430
    :cond_3
    :goto_1
    return v1
.end method

.method public reject(Ljava/lang/String;)Z
    .locals 7
    .param p1, "peerAddress"    # Ljava/lang/String;

    .line 1312
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    :try_start_0
    const-string v1, "reject"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1315
    :cond_0
    if-nez p1, :cond_1

    .line 1316
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse rejected peer\'s mac address."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1319
    :cond_1
    const/4 v1, 0x0

    .line 1321
    .local v1, "macAddress":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1325
    nop

    .line 1327
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1330
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reject([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1334
    goto :goto_0

    .line 1331
    :catch_0
    move-exception v3

    .line 1332
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1336
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1322
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catch_1
    move-exception v3

    .line 1323
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse peer mac address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1324
    monitor-exit v0

    return v2

    .line 1337
    .end local v1    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public removeNetwork(I)Z
    .locals 6
    .param p1, "networkId"    # I

    .line 2237
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2238
    :try_start_0
    const-string v1, "removeNetwork"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2240
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2247
    goto :goto_0

    .line 2244
    :catch_0
    move-exception v2

    .line 2245
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2249
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2250
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestServiceDiscovery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "peerAddress"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .line 1839
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1840
    :try_start_0
    const-string v1, "requestServiceDiscovery"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 1842
    :cond_0
    if-nez p1, :cond_1

    .line 1843
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse peer mac address."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1846
    :cond_1
    move-object v1, v2

    .line 1848
    .local v1, "macAddress":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1852
    nop

    .line 1854
    if-nez p2, :cond_2

    .line 1855
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse service discovery query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 1858
    :cond_2
    move-object v3, v2

    .line 1860
    .local v3, "binQuery":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :try_start_3
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    .line 1864
    nop

    .line 1866
    :try_start_4
    new-instance v4, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestServiceDiscovery("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1869
    .local v4, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Long;>;"
    :try_start_5
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v6, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$sJ42Cxyoy4PtFAOnb8Imech26oA;

    invoke-direct {v6, v4}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$sJ42Cxyoy4PtFAOnb8Imech26oA;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v5, v1, v3, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->requestServiceDiscovery([BLjava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1877
    goto :goto_0

    .line 1874
    :catch_0
    move-exception v5

    .line 1875
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v6, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ISupplicantP2pIface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1879
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 1880
    .local v5, "value":Ljava/lang/Long;
    if-nez v5, :cond_3

    monitor-exit v0

    return-object v2

    .line 1881
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1861
    .end local v4    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Long;>;"
    .end local v5    # "value":Ljava/lang/Long;
    :catch_1
    move-exception v4

    .line 1862
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "SupplicantP2pIfaceHal"

    const-string v6, "Could not parse service query."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1863
    monitor-exit v0

    return-object v2

    .line 1849
    .end local v3    # "binQuery":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 1850
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not process peer MAC address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1851
    monitor-exit v0

    return-object v2

    .line 1882
    .end local v1    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 7
    .param p1, "requestMessage"    # Ljava/lang/String;

    .line 2581
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2582
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2583
    :try_start_0
    const-string v2, "responderReportNfcHandover"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 2584
    :cond_1
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responderReportNfcHandover("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2587
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 2588
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    .line 2587
    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2596
    :goto_0
    goto :goto_1

    .line 2593
    :catch_0
    move-exception v3

    .line 2594
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal argument "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2595
    monitor-exit v1

    return v0

    .line 2590
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2591
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2597
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2598
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public saveConfig()Z
    .locals 6

    .line 2680
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2681
    :try_start_0
    const-string v1, "saveConfig"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2682
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "saveConfig()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2684
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->saveConfig()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2688
    goto :goto_0

    .line 2685
    :catch_0
    move-exception v2

    .line 2686
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2689
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2690
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public serviceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 13
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 1688
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1689
    :try_start_0
    const-string v1, "serviceAdd"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1691
    :cond_0
    if-nez p1, :cond_1

    .line 1692
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Null service info passed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    monitor-exit v0

    return v2

    .line 1696
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1697
    .local v3, "s":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1698
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v4, "Invalid service description (null)."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    monitor-exit v0

    return v2

    .line 1702
    :cond_2
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1703
    .local v5, "data":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 1704
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service specification invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1708
    :cond_3
    const/4 v6, 0x0

    move-object v7, v6

    .line 1710
    .local v7, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    const-string v8, "upnp"

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    .line 1711
    move v6, v2

    .line 1713
    .local v6, "version":I
    :try_start_2
    aget-object v8, v5, v4

    const/16 v10, 0x10

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v8

    .line 1717
    nop

    .line 1719
    :try_start_3
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addUpnpService("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v9

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 1721
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    aget-object v8, v5, v9

    invoke-interface {v4, v6, v8}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 1722
    .end local v6    # "version":I
    goto/16 :goto_1

    .line 1714
    .restart local v6    # "version":I
    :catch_0
    move-exception v4

    .line 1715
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v8, "SupplicantP2pIfaceHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UPnP Service specification invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1716
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    .line 1722
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "version":I
    :cond_4
    :try_start_5
    const-string v8, "bonjour"

    aget-object v10, v5, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1723
    aget-object v8, v5, v4

    if-eqz v8, :cond_5

    aget-object v8, v5, v9
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_5

    .line 1724
    const/4 v8, 0x0

    .line 1725
    .local v8, "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    nop

    .line 1727
    .local v6, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :try_start_6
    aget-object v10, v5, v4

    .line 1728
    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 1727
    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v10

    move-object v8, v10

    .line 1729
    aget-object v10, v5, v9

    .line 1730
    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 1729
    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v10

    .line 1734
    nop

    .line 1735
    :try_start_7
    new-instance v10, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addBonjourService("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v9

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    move-object v7, v10

    .line 1737
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 1738
    invoke-interface {v4, v8, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 1737
    invoke-virtual {v7, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 1739
    .end local v6    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v8    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_1

    .line 1731
    .restart local v6    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v8    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catch_1
    move-exception v4

    .line 1732
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "SupplicantP2pIfaceHal"

    const-string v10, "Invalid bonjour service description."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1733
    :try_start_8
    monitor-exit v0

    return v2

    .line 1746
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v8    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_5
    :goto_1
    goto :goto_2

    .line 1741
    :cond_6
    monitor-exit v0

    return v2

    .line 1743
    :catch_2
    move-exception v4

    .line 1744
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1748
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 1749
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "data":[Ljava/lang/String;
    .end local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_7
    goto/16 :goto_0

    .line 1748
    .restart local v3    # "s":Ljava/lang/String;
    .restart local v5    # "data":[Ljava/lang/String;
    .restart local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_8
    :goto_3
    monitor-exit v0

    return v2

    .line 1751
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "data":[Ljava/lang/String;
    .end local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_9
    monitor-exit v0

    return v4

    .line 1752
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method public serviceFlush()Z
    .locals 6

    .line 972
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_0
    const-string v1, "serviceFlush"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 974
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "serviceFlush()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flushServices()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    goto :goto_0

    .line 977
    :catch_0
    move-exception v2

    .line 978
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 981
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 982
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public serviceRemove(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 11
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 1764
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1765
    :try_start_0
    const-string v1, "serviceRemove"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1767
    :cond_0
    if-nez p1, :cond_1

    .line 1768
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Null service info passed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    monitor-exit v0

    return v2

    .line 1772
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1773
    .local v3, "s":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1774
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v4, "Invalid service description (null)."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    monitor-exit v0

    return v2

    .line 1778
    :cond_2
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1779
    .local v5, "data":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 1780
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service specification invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1784
    :cond_3
    const/4 v6, 0x0

    move-object v7, v6

    .line 1786
    .local v7, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    const-string v8, "upnp"

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_4

    .line 1787
    move v6, v2

    .line 1789
    .local v6, "version":I
    :try_start_2
    aget-object v8, v5, v4

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v8

    .line 1793
    nop

    .line 1794
    :try_start_3
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeUpnpService("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v10, v5, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 1796
    iget-object v8, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    aget-object v4, v5, v4

    invoke-interface {v8, v6, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 1797
    .end local v6    # "version":I
    goto :goto_1

    .line 1790
    .restart local v6    # "version":I
    :catch_0
    move-exception v4

    .line 1791
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v8, "SupplicantP2pIfaceHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UPnP Service specification invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1792
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    .line 1797
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "version":I
    :cond_4
    :try_start_5
    const-string v8, "bonjour"

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1798
    aget-object v8, v5, v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_5

    .line 1799
    nop

    .line 1801
    .local v6, "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :try_start_6
    aget-object v8, v5, v4

    .line 1802
    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 1801
    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v8

    .line 1806
    nop

    .line 1807
    :try_start_7
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeBonjourService("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 1808
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v4, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeBonjourService(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 1809
    .end local v6    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_1

    .line 1803
    .restart local v6    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catch_1
    move-exception v4

    .line 1804
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "SupplicantP2pIfaceHal"

    const-string v9, "Invalid bonjour service description."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1805
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return v2

    .line 1817
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_5
    :goto_1
    goto :goto_2

    .line 1811
    :cond_6
    :try_start_9
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown / unsupported P2P service requested: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1812
    :try_start_a
    monitor-exit v0

    return v2

    .line 1814
    :catch_2
    move-exception v4

    .line 1815
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1819
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 1820
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "data":[Ljava/lang/String;
    .end local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_7
    goto/16 :goto_0

    .line 1819
    .restart local v3    # "s":Ljava/lang/String;
    .restart local v5    # "data":[Ljava/lang/String;
    .restart local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_8
    :goto_3
    monitor-exit v0

    return v2

    .line 1822
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "data":[Ljava/lang/String;
    .end local v7    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_9
    monitor-exit v0

    return v4

    .line 1823
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v1
.end method

.method public setClientList(ILjava/lang/String;)Z
    .locals 8
    .param p1, "networkId"    # I
    .param p2, "clientListStr"    # Ljava/lang/String;

    .line 2609
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2610
    :try_start_0
    const-string v1, "setClientList"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 2611
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2612
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Invalid client list"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    monitor-exit v0

    return v2

    .line 2615
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v1

    .line 2616
    .local v1, "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    if-nez v1, :cond_2

    .line 2617
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Invalid network id "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    monitor-exit v0

    return v2

    .line 2620
    :cond_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClientList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2623
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2624
    .local v4, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string v5, "\\s+"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2625
    .local v6, "clientStr":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2626
    .end local v6    # "clientStr":Ljava/lang/String;
    goto :goto_0

    .line 2627
    :cond_3
    invoke-interface {v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->setClientList(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_1

    .line 2631
    :catch_0
    move-exception v4

    .line 2632
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal argument "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2633
    monitor-exit v0

    return v2

    .line 2628
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 2629
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2634
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 2635
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2636
    .end local v1    # "network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setGroupIdle(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "timeoutInSec"    # I

    .line 1023
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_start_0
    const-string v1, "setGroupIdle"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1026
    :cond_0
    if-gez p2, :cond_1

    .line 1027
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid group timeout value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    monitor-exit v0

    return v2

    .line 1031
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGroupIdle("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    goto :goto_0

    .line 1035
    :catch_0
    move-exception v2

    .line 1036
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1039
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1040
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setListenChannel(II)Z
    .locals 8
    .param p1, "listenChannel"    # I
    .param p2, "operatingChannel"    # I

    .line 1630
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1631
    :try_start_0
    const-string v1, "setListenChannel"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1633
    :cond_0
    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/16 v3, 0xb

    if-gt p1, v3, :cond_2

    .line 1634
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setListenChannel("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x51

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1637
    .local v3, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v4, p1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setListenChannel(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1642
    goto :goto_0

    .line 1639
    :catch_0
    move-exception v4

    .line 1640
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1643
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1644
    monitor-exit v0

    return v2

    .line 1646
    .end local v3    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :cond_1
    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 1648
    monitor-exit v0

    return v2

    .line 1651
    :cond_3
    :goto_1
    if-ltz p2, :cond_6

    const/16 v3, 0xa5

    if-gt p2, v3, :cond_6

    .line 1652
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1654
    .local v2, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;>;"
    if-lt p2, v1, :cond_5

    if-gt p2, v3, :cond_5

    .line 1655
    const/16 v1, 0xe

    if-gt p2, v1, :cond_4

    const/16 v1, 0x967

    goto :goto_2

    :cond_4
    const/16 v1, 0x1388

    :goto_2
    mul-int/lit8 v3, p2, 0x5

    add-int/2addr v1, v3

    .line 1656
    .local v1, "freq":I
    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    invoke-direct {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;-><init>()V

    .line 1657
    .local v3, "range1":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;
    const/16 v4, 0x3e8

    iput v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    .line 1658
    add-int/lit8 v4, v1, -0x5

    iput v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    .line 1659
    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;-><init>()V

    .line 1660
    .local v4, "range2":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;
    add-int/lit8 v5, v1, 0x5

    iput v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    .line 1661
    const/16 v5, 0x1770

    iput v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    .line 1662
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    .end local v1    # "freq":I
    .end local v3    # "range1":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;
    .end local v4    # "range2":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;
    :cond_5
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisallowedFrequencies("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1668
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setDisallowedFrequencies(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1672
    goto :goto_3

    .line 1669
    :catch_1
    move-exception v3

    .line 1670
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1673
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1675
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    .end local v2    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;>;"
    :cond_6
    monitor-exit v0

    return v2

    .line 1676
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setMiracastMode(I)Z
    .locals 7
    .param p1, "mode"    # I

    .line 1929
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1930
    :try_start_0
    const-string v1, "setMiracastMode"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1931
    :cond_0
    const/4 v1, 0x0

    .line 1933
    .local v1, "targetMode":B
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1939
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 1935
    :pswitch_1
    const/4 v1, 0x1

    .line 1936
    nop

    .line 1943
    :goto_0
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMiracastMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setMiracastMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1950
    goto :goto_1

    .line 1947
    :catch_0
    move-exception v3

    .line 1948
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1952
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1953
    .end local v1    # "targetMode":B
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPowerSave(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 995
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    const-string v1, "setPowerSave"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 997
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerSave("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1004
    goto :goto_0

    .line 1001
    :catch_0
    move-exception v2

    .line 1002
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1005
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1006
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSsidPostfix(Ljava/lang/String;)Z
    .locals 6
    .param p1, "postfix"    # Ljava/lang/String;

    .line 1052
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_0
    const-string v1, "setSsidPostfix"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 1055
    :cond_0
    if-nez p1, :cond_1

    .line 1056
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Invalid SSID postfix value (null)."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    monitor-exit v0

    return v2

    .line 1060
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSsidPostfix("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1063
    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1062
    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setSsidPostfix(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v3

    .line 1068
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not decode SSID."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1069
    monitor-exit v0

    return v2

    .line 1064
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 1065
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1070
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1072
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1073
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    .line 2133
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2134
    :try_start_0
    const-string v1, "setWfdDeviceInfo"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 2136
    :cond_0
    if-nez p1, :cond_1

    .line 2137
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse null WFD info string."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2140
    :cond_1
    const/4 v1, 0x0

    .line 2142
    .local v1, "wfdInfo":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 2146
    nop

    .line 2148
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWfdDeviceInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2151
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWfdDeviceInfo([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2155
    goto :goto_0

    .line 2152
    :catch_0
    move-exception v3

    .line 2153
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2157
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 2143
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catch_1
    move-exception v3

    .line 2144
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse WFD Device Info string."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    monitor-exit v0

    return v2

    .line 2158
    .end local v1    # "wfdInfo":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setWfdR2DeviceInfo(Ljava/lang/String;)Z
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    .line 2169
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2170
    :try_start_0
    const-string v1, "setWfdR2DeviceInfo"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantVendorP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 2172
    :cond_0
    if-nez p1, :cond_1

    .line 2173
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse null WFD info string."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2176
    :cond_1
    const/4 v1, 0x0

    .line 2178
    .local v1, "wfdInfo":[B
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 2182
    nop

    .line 2184
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWfdDeviceInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2187
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    invoke-interface {v3, v1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;->setWfdR2DeviceInfo([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2191
    goto :goto_0

    .line 2188
    :catch_0
    move-exception v3

    .line 2189
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2193
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 2179
    .end local v2    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catch_1
    move-exception v3

    .line 2180
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse WFD Device Info string."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    monitor-exit v0

    return v2

    .line 2194
    .end local v1    # "wfdInfo":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setWpsConfigMethods(Ljava/lang/String;)Z
    .locals 8
    .param p1, "configMethodsStr"    # Ljava/lang/String;

    .line 2474
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2475
    :try_start_0
    const-string v1, "setWpsConfigMethods"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 2476
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWpsConfigMethods("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    .line 2478
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 2479
    .local v3, "configMethodsMask":S
    const-string v4, "\\s+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2480
    .local v4, "configMethodsStrArr":[Ljava/lang/String;
    nop

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 2481
    aget-object v5, v4, v2

    invoke-static {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->stringToWpsConfigMethod(Ljava/lang/String;)S

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v5, v3

    int-to-short v3, v5

    .line 2480
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2484
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2488
    goto :goto_1

    .line 2485
    :catch_0
    move-exception v2

    .line 2486
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2489
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2490
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    .end local v3    # "configMethodsMask":S
    .end local v4    # "configMethodsStrArr":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setWpsDeviceName(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 2410
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2411
    return v0

    .line 2413
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2414
    :try_start_0
    const-string v2, "setWpsDeviceName"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    .line 2415
    :cond_1
    new-instance v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWpsDeviceName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2418
    .local v0, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2422
    goto :goto_0

    .line 2419
    :catch_0
    move-exception v2

    .line 2420
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2423
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v1

    return v2

    .line 2424
    .end local v0    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setWpsDeviceType(Ljava/lang/String;)Z
    .locals 13
    .param p1, "typeStr"    # Ljava/lang/String;

    .line 2435
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2436
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 2440
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 2441
    .local v2, "categ":S
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 2442
    .local v4, "oui":[B
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 2444
    .local v3, "subCateg":S
    const/16 v5, 0x8

    new-array v5, v5, [B

    .line 2445
    .local v5, "bytes":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2446
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2447
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2448
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2449
    iget-object v7, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2450
    :try_start_1
    const-string v8, "setWpsDeviceType"

    invoke-direct {p0, v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    monitor-exit v7

    return v0

    .line 2451
    :cond_1
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWpsDeviceType("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2454
    .local v8, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_2
    iget-object v9, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v9, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2458
    goto :goto_0

    .line 2455
    :catch_0
    move-exception v9

    .line 2456
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v10, "SupplicantP2pIfaceHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ISupplicantP2pIface exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2459
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v9

    monitor-exit v7

    return v9

    .line 2460
    .end local v8    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8

    .line 2437
    .end local v2    # "categ":S
    .end local v3    # "subCateg":S
    .end local v4    # "oui":[B
    .end local v5    # "bytes":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_1
    const-string v2, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed WPS device type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2438
    return v0

    .line 2461
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v1

    .line 2462
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2463
    return v0
.end method

.method public setWscVendorIe(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 2205
    .local p1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2206
    :try_start_0
    const-string v1, "setVendorInfoElement"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantVendorP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2207
    monitor-exit v0

    return v2

    .line 2209
    :cond_0
    if-nez p1, :cond_1

    .line 2210
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Cannot parse null WSC info string."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    monitor-exit v0

    return v2

    .line 2214
    :cond_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWscVendorIe("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2217
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    .line 2218
    invoke-interface {v3, p1, v2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;->setVendorInfoElement(Ljava/util/ArrayList;B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2217
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2224
    goto :goto_0

    .line 2221
    :catch_0
    move-exception v2

    .line 2222
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantVendorP2PIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantVendorServiceDiedHandler()V

    .line 2226
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2227
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setupIface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->isV1_1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->addIfaceV1_1(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v1

    .local v1, "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    goto :goto_0

    .line 325
    .end local v1    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getIfaceV1_0(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v1

    .line 327
    .restart local v1    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :goto_0
    if-nez v1, :cond_2

    .line 328
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "initSupplicantP2pIface got null iface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    monitor-exit v0

    return v2

    .line 331
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getP2pIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 332
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToSupplicantP2pIfaceDeath()Z

    move-result v3

    if-nez v3, :cond_3

    .line 333
    monitor-exit v0

    return v2

    .line 335
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    if-eqz v3, :cond_4

    .line 336
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;-><init>(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V

    iput-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    .line 337
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 338
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Callback registration failed. Initialization incomplete."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v0

    return v2

    .line 343
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->vendor_setupIface(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 344
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Failed to create vendor setupiface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_5
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 347
    .end local v1    # "ifaceHwBinder":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1967
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1968
    const-string v0, "SupplicantP2pIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group name required when requesting WPS PBC. Got ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    return v1

    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1972
    :try_start_0
    const-string v2, "startWpsPbc"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1974
    :cond_1
    const/4 v2, 0x0

    .line 1976
    .local v2, "macAddress":[B
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1980
    .end local v2    # "macAddress":[B
    .local v1, "macAddress":[B
    nop

    .line 1982
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWpsPbc("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1985
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v3, p1, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1989
    goto :goto_0

    .line 1986
    :catch_0
    move-exception v3

    .line 1987
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 1991
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1977
    .end local v1    # "macAddress":[B
    .local v2, "macAddress":[B
    :catch_1
    move-exception v3

    .line 1978
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse BSSID."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1979
    monitor-exit v0

    return v1

    .line 1992
    .end local v2    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 2038
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2040
    :try_start_0
    const-string v2, "startWpsPinDisplay"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v1

    .line 2041
    :cond_1
    if-nez p1, :cond_2

    .line 2042
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Group name required when requesting WPS KEYPAD."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 2047
    :cond_2
    move-object v2, v1

    .line 2049
    .local v2, "macAddress":[B
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 2053
    .end local v2    # "macAddress":[B
    .local v1, "macAddress":[B
    nop

    .line 2055
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWpsPinDisplay("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2058
    .local v2, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/String;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$UAjZ3gewPdvsaFe5R3px-J4bp6U;

    invoke-direct {v4, v2}, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$UAjZ3gewPdvsaFe5R3px-J4bp6U;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V

    invoke-interface {v3, p1, v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2066
    goto :goto_0

    .line 2063
    :catch_0
    move-exception v3

    .line 2064
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2068
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 2050
    .end local v1    # "macAddress":[B
    .local v2, "macAddress":[B
    :catch_1
    move-exception v3

    .line 2051
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Could not parse BSSID."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2052
    monitor-exit v0

    return-object v1

    .line 2069
    .end local v2    # "macAddress":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .line 2004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2006
    :try_start_0
    const-string v2, "startWpsPinKeypad"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 2007
    :cond_1
    if-nez p1, :cond_2

    .line 2008
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "Group name required when requesting WPS KEYPAD."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    monitor-exit v0

    return v1

    .line 2011
    :cond_2
    if-nez p2, :cond_3

    .line 2012
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v3, "PIN required when requesting WPS KEYPAD."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    monitor-exit v0

    return v1

    .line 2016
    :cond_3
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWpsPinKeypad("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2023
    goto :goto_0

    .line 2020
    :catch_0
    move-exception v2

    .line 2021
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 2025
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2026
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2004
    :cond_4
    :goto_1
    return v1
.end method

.method public stopFind()Z
    .locals 6

    .line 931
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_0
    const-string v1, "stopFind"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 933
    :cond_0
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string v2, "stopFind()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    .local v1, "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->stopFind()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    goto :goto_0

    .line 936
    :catch_0
    move-exception v2

    .line 937
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    .line 940
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 941
    .end local v1    # "result":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->isV1_1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->removeIfaceV1_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 548
    const-string v1, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove iface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    monitor-exit v0

    return v2

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    if-nez v1, :cond_2

    .line 553
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Trying to teardown unknown vendor interface"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    monitor-exit v0

    return v2

    .line 556
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    .line 557
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public vendor_setupIface(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 357
    const-string v0, "vendor_setupIface"

    .line 358
    .local v0, "methodStr":Ljava/lang/String;
    const-string v1, "vendor_setupIface"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantVendorP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 359
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v3, "Already created vendor setupinterface"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return v2

    .line 362
    :cond_0
    const/4 v1, 0x0

    .line 364
    .local v1, "Vendor_ifaceHwBinder":Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->isVendor_2_0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    const-string v3, "SupplicantP2pIfaceHal"

    const-string v4, "Try to get Vendor HIDL@2.0 interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getVendorIfaceV2_0(Ljava/lang/String;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    move-result-object v1

    .line 368
    :cond_1
    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 369
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v4, "Failed to get vendor iface binder"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v3

    .line 373
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getVendorP2pIfaceMockable(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    .line 374
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    if-nez v4, :cond_3

    .line 375
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v4, "Failed to get ISupplicantVendorP2PIface proxy"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v3

    .line 379
    :cond_3
    const-string v4, "SupplicantP2pIfaceHal"

    const-string v5, "Successful get Vendor p2p interface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToSupplicantVendorP2pIfaceDeath(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 382
    return v3

    .line 385
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantVendorP2pIface:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIface;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    if-eqz v4, :cond_5

    .line 386
    new-instance v4, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    invoke-direct {v4, p1, v5}, Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;-><init>(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V

    iput-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mVendorCallback:Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;

    .line 387
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mVendorCallback:Lcom/android/server/wifi/p2p/SupplicantVendorP2pIfaceCallback;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->registerVendorCallback(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorP2PIfaceCallback;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 388
    const-string v2, "SupplicantP2pIfaceHal"

    const-string v4, "Callback registration failed. Initialization incomplete."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return v3

    .line 393
    :cond_5
    return v2
.end method
