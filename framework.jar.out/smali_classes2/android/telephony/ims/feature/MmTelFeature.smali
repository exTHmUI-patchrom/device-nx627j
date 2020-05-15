.class public Landroid/telephony/ims/feature/MmTelFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "MmTelFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$ProcessCallResult;,
        Landroid/telephony/ims/feature/MmTelFeature$Listener;,
        Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MmTelFeature"

.field public static final PROCESS_CALL_CSFB:I = 0x1

.field public static final PROCESS_CALL_IMS:I


# instance fields
.field private final mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

.field private mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 61
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1;-><init>(Landroid/telephony/ims/feature/MmTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/feature/MmTelFeature;
    .param p1, "x1"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 57
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/ims/feature/MmTelFeature;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/feature/MmTelFeature;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method static synthetic access$200(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/feature/MmTelFeature;
    .param p1, "x1"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 57
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method static synthetic access$300(Landroid/telephony/ims/feature/MmTelFeature;IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/feature/MmTelFeature;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # [B

    .line 57
    invoke-direct/range {p0 .. p6}, Landroid/telephony/ims/feature/MmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method static synthetic access$400(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/feature/MmTelFeature;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSms(III)V

    return-void
.end method

.method static synthetic access$500(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/feature/MmTelFeature;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSmsReport(III)V

    return-void
.end method

.method static synthetic access$600(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/ims/feature/MmTelFeature;

    .line 57
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/telephony/ims/feature/MmTelFeature;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/feature/MmTelFeature;

    .line 57
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onSmsReady()V

    return-void
.end method

.method private acknowledgeSms(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 665
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 666
    return-void
.end method

.method private acknowledgeSmsReport(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 670
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 671
    return-void
.end method

.method private getSmsFormat()Ljava/lang/String;
    .locals 1

    .line 689
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSmsReady()V
    .locals 1

    .line 674
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onReady()V

    .line 675
    return-void
.end method

.method private queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 376
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityConfiguration(II)Z

    move-result v0

    .line 378
    .local v0, "enabled":Z
    if-eqz p3, :cond_0

    .line 379
    :try_start_0
    invoke-interface {p3, p1, p2, v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onQueryCapabilityConfiguration(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MmTelFeature"

    const-string/jumbo v3, "queryCapabilityConfigurationInternal called on dead binder!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 383
    :cond_0
    :goto_0
    nop

    .line 384
    :goto_1
    return-void
.end method

.method private sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 660
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 661
    return-void
.end method

.method private setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 366
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 368
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onFeatureReady()V

    .line 371
    :cond_0
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 655
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 656
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 0
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 515
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v0

    .line 546
    .local v0, "s":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getBinder()Landroid/os/IInterface;
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1

    .line 709
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1

    .line 617
    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    return-object v0
.end method

.method protected getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 591
    .local v0, "ecbmImpl":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 626
    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;-><init>()V

    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 599
    .local v0, "multiendpointImpl":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 1

    .line 685
    new-instance v0, Landroid/telephony/ims/stub/ImsSmsImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    return-object v0
.end method

.method public getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1

    .line 608
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    return-object v0
.end method

.method protected getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getUt()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v0

    .line 583
    .local v0, "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 0
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 410
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 411
    return-void
.end method

.method public final notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 418
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 423
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    nop

    .line 427
    :try_start_2
    monitor-exit v0

    .line 428
    return-void

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 420
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 435
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 440
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    nop

    .line 444
    :try_start_2
    monitor-exit v0

    .line 445
    return-void

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 437
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final notifyRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 456
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 461
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    nop

    .line 465
    :try_start_2
    monitor-exit v0

    .line 466
    return-void

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 458
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final notifyVoiceMessageCountUpdate(I)V
    .locals 3
    .param p1, "count"    # I

    .line 473
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 478
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onVoiceMessageCountUpdate(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    nop

    .line 482
    :try_start_2
    monitor-exit v0

    .line 483
    return-void

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 475
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onFeatureReady()V
    .locals 0

    .line 702
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 0

    .line 696
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 1
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 2

    .line 397
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-super {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-object v0
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 652
    return-void
.end method

.method public shouldProcessCall([Ljava/lang/String;)I
    .locals 1
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 574
    const/4 v0, 0x0

    return v0
.end method
