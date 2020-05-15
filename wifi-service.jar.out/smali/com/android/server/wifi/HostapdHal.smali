.class public Lcom/android/server/wifi/HostapdHal;
.super Ljava/lang/Object;
.source "HostapdHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HostapdHal"


# instance fields
.field private mCountryCode:Ljava/lang/String;

.field private mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

.field private final mEnableAcs:Z

.field private final mEnableIeee80211AC:Z

.field private final mHostapdDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mHostapdVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

.field private mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

.field private mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mCountryCode:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 62
    new-instance v0, Lcom/android/server/wifi/HostapdHal$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/HostapdHal$1;-><init>(Lcom/android/server/wifi/HostapdHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 79
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$HostapdHal$ykyXfQPF5iy3e1W0s1ikBBPfH-Y;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$HostapdHal$ykyXfQPF5iy3e1W0s1ikBBPfH-Y;-><init>(Lcom/android/server/wifi/HostapdHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 87
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$HostapdHal$BanSRPFiiwZZpFD4d63QpeU1xBA;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$HostapdHal$BanSRPFiiwZZpFD4d63QpeU1xBA;-><init>(Lcom/android/server/wifi/HostapdHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mHostapdDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 94
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$HostapdHal$--Q8KVyXL91SVqo2RISnfhZqQGg;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$HostapdHal$--Q8KVyXL91SVqo2RISnfhZqQGg;-><init>(Lcom/android/server/wifi/HostapdHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mHostapdVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/HostapdHal;->mEnableAcs:Z

    .line 105
    nop

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/HostapdHal;->mEnableIeee80211AC:Z

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HostapdHal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HostapdHal;

    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HostapdHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HostapdHal;

    .line 47
    iget-boolean v0, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HostapdHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HostapdHal;

    .line 47
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->initHostapdService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HostapdHal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HostapdHal;

    .line 47
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    return-void
.end method

.method private checkHostapdAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    if-nez v1, :cond_0

    .line 642
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", IHostapd is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 645
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkHostapdVendorAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    if-nez v1, :cond_0

    .line 676
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", IHostapdVendor is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 679
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    if-eqz v1, :cond_0

    .line 657
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapd."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 661
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 662
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapd."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 689
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    if-eqz v1, :cond_0

    .line 691
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapdVendor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 695
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 696
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapdVendor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearState()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    .line 509
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    .line 510
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getBand(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "localConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 605
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    packed-switch v0, :pswitch_data_0

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 610
    :pswitch_0
    const/4 v0, 0x1

    .line 611
    .local v0, "bandType":I
    goto :goto_0

    .line 607
    .end local v0    # "bandType":I
    :pswitch_1
    const/4 v0, 0x0

    .line 608
    .restart local v0    # "bandType":I
    goto :goto_0

    .line 613
    .end local v0    # "bandType":I
    :pswitch_2
    const/4 v0, 0x2

    .line 614
    .restart local v0    # "bandType":I
    nop

    .line 616
    :goto_0
    nop

    .line 618
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEncryptionType(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "localConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 584
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 597
    const/4 v0, 0x0

    goto :goto_0

    .line 589
    :pswitch_0
    const/4 v0, 0x1

    .line 590
    .local v0, "encryptionType":I
    goto :goto_0

    .line 586
    .end local v0    # "encryptionType":I
    :pswitch_1
    const/4 v0, 0x0

    .line 587
    .restart local v0    # "encryptionType":I
    goto :goto_0

    .line 592
    .end local v0    # "encryptionType":I
    :cond_0
    const/4 v0, 0x2

    .line 593
    .restart local v0    # "encryptionType":I
    nop

    .line 597
    :goto_0
    nop

    .line 600
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Landroid/os/RemoteException;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 706
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapd."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    monitor-exit v0

    .line 708
    return-void

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hostapdServiceDiedHandler()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->clearState()V

    .line 519
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    invoke-interface {v1}, Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;->onDeath()V

    .line 522
    :cond_0
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initHostapdService()Z
    .locals 6

    .line 215
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/HostapdHal;->getHostapdMockable()Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    nop

    .line 222
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    if-nez v2, :cond_0

    .line 223
    const-string v2, "HostapdHal"

    const-string v3, "Got null IHostapd service. Stopping hostapd HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    monitor-exit v0

    return v1

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->linkToHostapdDeath()Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    monitor-exit v0

    return v1

    .line 229
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wifi/HostapdHal;->initHostapdVendorService()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    const-string v0, "HostapdHal"

    const-string v1, "Failed to init HostapdVendor service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 229
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "HostapdHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IHostapd.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0

    return v1

    .line 229
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wifi/HostapdHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IServiceManager died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wifi/HostapdHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 89
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapd/IHostapd died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/wifi/HostapdHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapdVendor died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private linkToHostapdDeath()Z
    .locals 6

    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 197
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    iget-object v3, p0, Lcom/android/server/wifi/HostapdHal;->mHostapdDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    const-string v1, "HostapdHal"

    const-string v3, "Error on linkToDeath on IHostapd"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :try_start_2
    monitor-exit v0

    return v2

    .line 205
    :cond_1
    nop

    .line 206
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HostapdHal"

    const-string v4, "IHostapd.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    monitor-exit v0

    return v2

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToHostapdVendorDeath()Z
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 245
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    iget-object v3, p0, Lcom/android/server/wifi/HostapdHal;->mHostapdVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    const-string v1, "HostapdHal"

    const-string v3, "Error on linkToDeath on IHostapdVendor"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    monitor-exit v0

    return v2

    .line 253
    :cond_1
    nop

    .line 254
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HostapdHal"

    const-string v4, "IHostapdVendor.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    monitor-exit v0

    return v2

    .line 255
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToServiceManagerDeath()Z
    .locals 7

    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 128
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v4, p0, Lcom/android/server/wifi/HostapdHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    const-string v3, "HostapdHal"

    const-string v4, "Error on linkToDeath on IServiceManager"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 131
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    monitor-exit v0

    return v2

    .line 138
    :cond_1
    nop

    .line 139
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 134
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "HostapdHal"

    const-string v5, "IServiceManager.linkToDeath exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 137
    monitor-exit v0

    return v2

    .line 140
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 711
    const-string v0, "HostapdHal"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 719
    const-string v0, "HostapdHal"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 715
    const-string v0, "HostapdHal"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method private registerVendorCallback(Ljava/lang/String;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "service"    # Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;
    .param p3, "callback"    # Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;

    .line 745
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_0
    const-string v1, "registerVendorCallback"

    .line 747
    .local v1, "methodStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 749
    :cond_0
    :try_start_1
    invoke-interface {p2, p1, p3}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->registerVendorCallback(Ljava/lang/String;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v3

    .line 750
    .local v3, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v4, "registerVendorCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/HostapdHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 751
    .end local v3    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v3

    .line 752
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "registerVendorCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 753
    monitor-exit v0

    return v2

    .line 755
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public addAccessPoint(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 290
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    const-string v1, "addAccessPoint"

    .line 292
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-direct {v2}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;-><init>()V

    .line 293
    .local v2, "ifaceParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;
    iput-object p1, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->ifaceName:Ljava/lang/String;

    .line 294
    iget-object v3, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->hwModeParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;->enable80211N:Z

    .line 295
    iget-object v3, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->hwModeParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;

    iget-boolean v5, p0, Lcom/android/server/wifi/HostapdHal;->mEnableIeee80211AC:Z

    iput-boolean v5, v3, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;->enable80211AC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    const/4 v3, 0x0

    :try_start_1
    iget-object v5, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    invoke-static {p2}, Lcom/android/server/wifi/HostapdHal;->getBand(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    iput v6, v5, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    nop

    .line 302
    :try_start_2
    iget-boolean v5, p0, Lcom/android/server/wifi/HostapdHal;->mEnableAcs:Z

    if-eqz v5, :cond_0

    .line 303
    iget-object v5, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v4, v5, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 304
    iget-object v5, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v4, v5, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    goto :goto_0

    .line 310
    :cond_0
    iget-object v4, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iget v4, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 311
    const-string v4, "HostapdHal"

    const-string v5, "ACS is not supported on this device, using 2.4 GHz band."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v4, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput v3, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    .line 314
    :cond_1
    iget-object v4, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v3, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 315
    iget-object v4, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    .line 318
    :goto_0
    new-instance v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    invoke-direct {v4}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 323
    .local v4, "nwParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;
    iget-object v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->ssid:Ljava/util/ArrayList;

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 324
    iget-boolean v5, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->isHidden:Z

    .line 325
    invoke-static {p2}, Lcom/android/server/wifi/HostapdHal;->getEncryptionType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    iput v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->encryptionType:I

    .line 326
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v5, ""

    :goto_1
    iput-object v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->pskPassphrase:Ljava/lang/String;

    .line 327
    const-string v5, "addAccessPoint"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/HostapdHal;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    .line 329
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    invoke-interface {v5, v2, v4}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->addAccessPoint(Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v5

    .line 330
    .local v5, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v6, "addAccessPoint"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/HostapdHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return v6

    .line 331
    .end local v5    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v5

    .line 332
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "addAccessPoint"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 333
    monitor-exit v0

    return v3

    .line 298
    .end local v4    # "nwParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 299
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "HostapdHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized apBand "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v0

    return v3

    .line 335
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "ifaceParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public addVendorAccessPoint(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z
    .locals 12
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "listener"    # Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    const-string v1, "addVendorAccessPoint"

    .line 369
    .local v1, "methodStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v2

    .line 370
    .local v2, "apConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    new-instance v3, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;

    invoke-direct {v3}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;-><init>()V

    .line 371
    .local v3, "vendorIfaceParams":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;
    iget-object v4, v3, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    .line 372
    .local v4, "ifaceParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;
    iput-object p1, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->ifaceName:Ljava/lang/String;

    .line 373
    iget-object v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->hwModeParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;->enable80211N:Z

    .line 374
    iget-object v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->hwModeParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;

    iget-boolean v7, p0, Lcom/android/server/wifi/HostapdHal;->mEnableIeee80211AC:Z

    iput-boolean v7, v5, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;->enable80211AC:Z

    .line 375
    iget-object v5, p0, Lcom/android/server/wifi/HostapdHal;->mCountryCode:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/HostapdHal;->mCountryCode:Ljava/lang/String;

    :goto_0
    iput-object v5, v3, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    .line 376
    const-string v5, ""

    iput-object v5, v3, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    const/4 v5, 0x0

    :try_start_1
    iget-object v7, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    invoke-static {p2}, Lcom/android/server/wifi/HostapdHal;->getBand(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    iput v8, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    nop

    .line 383
    :try_start_2
    iget-boolean v7, p0, Lcom/android/server/wifi/HostapdHal;->mEnableAcs:Z

    if-eqz v7, :cond_1

    .line 384
    iget-object v7, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v6, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 385
    iget-object v7, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v6, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    goto :goto_1

    .line 391
    :cond_1
    iget-object v7, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iget v7, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 392
    const-string v7, "HostapdHal"

    const-string v8, "ACS is not supported on this device, using 2.4 GHz band."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v7, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput v5, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    .line 395
    :cond_2
    iget-object v7, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v5, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 396
    iget-object v7, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iget v8, p2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v8, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    .line 399
    :goto_1
    new-instance v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    invoke-direct {v7}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 400
    .local v7, "nwParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;
    iget-object v8, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->ssid:Ljava/util/ArrayList;

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-boolean v8, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v8, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->isHidden:Z

    .line 402
    invoke-static {p2}, Lcom/android/server/wifi/HostapdHal;->getEncryptionType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    iput v8, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->encryptionType:I

    .line 403
    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v8, ""

    :goto_2
    iput-object v8, v7, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->pskPassphrase:Ljava/lang/String;

    .line 405
    const-string v8, "addVendorAccessPoint"

    invoke-direct {p0, v8}, Lcom/android/server/wifi/HostapdHal;->checkHostapdVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v5

    .line 407
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiApConfigStore;->getDualSapStatus()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 408
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiApConfigStore;->getBridgeInterface()Ljava/lang/String;

    move-result-object v8

    .line 409
    .local v8, "bridgeIfaceName":Ljava/lang/String;
    if-eqz v8, :cond_5

    move-object v9, v8

    goto :goto_3

    :cond_5
    const-string v9, ""

    :goto_3
    iput-object v9, v3, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    .line 412
    .end local v8    # "bridgeIfaceName":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-interface {v8, v3, v7}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->addVendorAccessPoint(Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v8

    .line 413
    .local v8, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v9, "addVendorAccessPoint"

    invoke-direct {p0, v8, v9}, Lcom/android/server/wifi/HostapdHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    if-eqz v9, :cond_8

    .line 414
    new-instance v9, Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;

    invoke-direct {v9, p0, p1, p3}, Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;-><init>(Lcom/android/server/wifi/HostapdHal;Ljava/lang/String;Lcom/android/server/wifi/WifiNative$SoftApListener;)V

    .line 415
    .local v9, "vendorcallback":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;
    nop

    .line 416
    iget-object v10, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->ifaceName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-direct {p0, v10, v11, v9}, Lcom/android/server/wifi/HostapdHal;->registerVendorCallback(Ljava/lang/String;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 417
    const-string v6, "HostapdHal"

    const-string v10, "Failed to register Hostapd Vendor callback"

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    :try_start_4
    monitor-exit v0

    return v5

    .line 423
    :cond_7
    monitor-exit v0

    return v6

    .line 428
    .end local v8    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    .end local v9    # "vendorcallback":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;
    :cond_8
    nop

    .line 429
    monitor-exit v0

    return v5

    .line 425
    :catch_0
    move-exception v6

    .line 426
    .local v6, "e":Landroid/os/RemoteException;
    const-string v8, "addVendorAccessPoint"

    invoke-direct {p0, v6, v8}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 427
    monitor-exit v0

    return v5

    .line 379
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "nwParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;
    :catch_1
    move-exception v6

    .line 380
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "HostapdHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized apBand "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    monitor-exit v0

    return v5

    .line 430
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "apConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    .end local v3    # "vendorIfaceParams":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;
    .end local v4    # "ifaceParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public deregisterDeathHandler()Z
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    if-nez v0, :cond_0

    .line 497
    const-string v0, "HostapdHal"

    const-string v1, "No Death handler present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method enableVerboseLogging(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getHostapdMockable()Landroid/hardware/wifi/hostapd/V1_0/IHostapd;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->getService()Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getHostapdVendorMockable()Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_0
    invoke-static {}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->getService()Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 565
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initHostapdVendorService()Z
    .locals 6

    .line 263
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/HostapdHal;->getHostapdVendorMockable()Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    nop

    .line 270
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    if-nez v2, :cond_0

    .line 271
    const-string v2, "HostapdHal"

    const-string v3, "Got null IHostapdVendor service. Stopping hostapdVendor HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    monitor-exit v0

    return v1

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->linkToHostapdVendorDeath()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    monitor-exit v0

    return v1

    .line 277
    :cond_1
    monitor-exit v0

    .line 278
    const/4 v0, 0x1

    return v0

    .line 277
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HostapdHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IHostapdVendor.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    monitor-exit v0

    return v1

    .line 277
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initialize()Z
    .locals 8

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "HostapdHal"

    const-string v2, "Registering IHostapd service ready callback."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    .line 154
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    .line 155
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 161
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/HostapdHal;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 162
    iget-object v4, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v4, :cond_2

    .line 163
    const-string v3, "HostapdHal"

    const-string v4, "Failed to get HIDL Service Manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 166
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->linkToServiceManagerDeath()Z

    move-result v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    .line 167
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    .line 171
    :cond_3
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v5, "android.hardware.wifi.hostapd@1.0::IHostapd"

    const-string v6, "default"

    iget-object v7, p0, Lcom/android/server/wifi/HostapdHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v4, v5, v6, v7}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 173
    const-string v3, "HostapdHal"

    const-string v4, "Failed to register for notifications to android.hardware.wifi.hostapd@1.0::IHostapd"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    :try_start_6
    monitor-exit v0

    return v2

    .line 184
    :cond_4
    nop

    .line 185
    monitor-exit v0

    return v3

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "HostapdHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while trying to register a listener for IHostapd service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 182
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 183
    monitor-exit v0

    return v2

    .line 186
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public isInitializationComplete()Z
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInitializationStarted()Z
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 531
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isVendorHostapdHal()Z
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerDeathHandler(Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;)Z
    .locals 2
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    .line 484
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "HostapdHal"

    const-string v1, "Death handler already present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method public removeAccessPoint(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    const-string v1, "removeAccessPoint"

    .line 347
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "removeAccessPoint"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/HostapdHal;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 349
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->removeAccessPoint(Ljava/lang/String;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v2

    .line 350
    .local v2, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v4, "removeAccessPoint"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/HostapdHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 351
    .end local v2    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "removeAccessPoint"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 353
    monitor-exit v0

    return v3

    .line 355
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeVendorAccessPoint(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    const-string v1, "removeVendorAccessPoint"

    .line 442
    .local v1, "methodStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v2

    .line 444
    .local v2, "apConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    const-string v3, "removeVendorAccessPoint"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/HostapdHal;->checkHostapdVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    .line 446
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-interface {v3, p1}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->removeVendorAccessPoint(Ljava/lang/String;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v3

    .line 447
    .local v3, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v5, "removeVendorAccessPoint"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/HostapdHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 448
    .end local v3    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v3

    .line 449
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "removeVendorAccessPoint"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 450
    monitor-exit v0

    return v4

    .line 452
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "apConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 625
    iput-object p1, p0, Lcom/android/server/wifi/HostapdHal;->mCountryCode:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public setHostapdParams(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    const-string v1, "setHostapdParams"

    .line 467
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setHostapdParams"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/HostapdHal;->checkHostapdVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 469
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->setHostapdParams(Ljava/lang/String;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v2

    .line 470
    .local v2, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v4, "setHostapdParams"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/HostapdHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 471
    .end local v2    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v2

    .line 472
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setHostapdParams"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 473
    monitor-exit v0

    return v3

    .line 475
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public terminate()V
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    const-string v1, "terminate"

    .line 549
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "terminate"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/HostapdHal;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 551
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    invoke-interface {v2}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->terminate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    goto :goto_0

    .line 552
    :catch_0
    move-exception v2

    .line 553
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "terminate"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 555
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
