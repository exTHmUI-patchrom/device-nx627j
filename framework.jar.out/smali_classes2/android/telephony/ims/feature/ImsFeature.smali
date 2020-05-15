.class public abstract Landroid/telephony/ims/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ImsFeature$Capabilities;,
        Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;,
        Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;,
        Landroid/telephony/ims/feature/ImsFeature$ImsCapabilityError;,
        Landroid/telephony/ims/feature/ImsFeature$ImsState;,
        Landroid/telephony/ims/feature/ImsFeature$FeatureType;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field public static final CAPABILITY_ERROR_GENERIC:I = -0x1

.field public static final CAPABILITY_SUCCESS:I = 0x0

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final FEATURE_EMERGENCY_MMTEL:I = 0x0

.field public static final FEATURE_INVALID:I = -0x1

.field public static final FEATURE_MAX:I = 0x3

.field public static final FEATURE_MMTEL:I = 0x1

.field public static final FEATURE_RCS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_READY:I = 0x2

.field public static final STATE_UNAVAILABLE:I


# instance fields
.field private final mCapabilityCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IImsCapabilityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

.field protected mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field private mSlotId:I

.field private mState:I

.field private final mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    .line 349
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    .line 352
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    .line 353
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    .line 355
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    return-void
.end method

.method private notifyFeatureState(I)V
    .locals 7
    .param p1, "state"    # I

    .line 424
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 426
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsFeatureStatusCallback;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    .local v2, "callback":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_start_1
    const-string v3, "ImsFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying ImsFeatureState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    goto :goto_1

    .line 431
    :catch_0
    move-exception v3

    .line 433
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 434
    const-string v4, "ImsFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t notify feature state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v2    # "callback":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 437
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsFeatureStatusCallback;>;"
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->sendImsServiceIntent(I)V

    .line 439
    return-void

    .line 437
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private sendImsServiceIntent(I)V
    .locals 3
    .param p1, "state"    # I

    .line 445
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 452
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .restart local v0    # "intent":Landroid/content/Intent;
    nop

    .line 458
    :goto_0
    nop

    .line 460
    const-string v1, "android:phone_id"

    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    return-void

    .line 446
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 468
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 469
    return-void
.end method

.method public addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 399
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    .line 401
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    monitor-exit v0

    .line 406
    goto :goto_0

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t notify feature state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public abstract changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end method

.method protected abstract getBinder()Landroid/os/IInterface;
.end method

.method public getFeatureState()I
    .locals 2

    .line 371
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    monitor-exit v0

    return v1

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final initialize(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 361
    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    .line 362
    iput p2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    .line 363
    return-void
.end method

.method protected final notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 6
    .param p1, "c"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 511
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 513
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 514
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 516
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 518
    :try_start_1
    iget-object v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    iget v3, p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onCapabilitiesStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    goto :goto_1

    .line 526
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 520
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "ImsFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " notifyCapabilitiesStatusChanged() - Skipping callback."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v1    # "i":I
    :goto_2
    iget-object v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 527
    nop

    .line 528
    return-void

    .line 513
    .end local v0    # "count":I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public abstract onFeatureReady()V
.end method

.method public abstract onFeatureRemoved()V
.end method

.method public queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 484
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 475
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 476
    return-void
.end method

.method public removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 415
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 417
    monitor-exit v0

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 496
    if-eqz p1, :cond_0

    .line 500
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    invoke-direct {v0, p2}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;-><init>(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/feature/ImsFeature;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V

    .line 501
    return-void

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsFeature#requestChangeEnabledCapabilities called with invalid params."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setFeatureState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 383
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    if-eq v1, p1, :cond_0

    .line 385
    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    .line 386
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureState(I)V

    .line 388
    :cond_0
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
