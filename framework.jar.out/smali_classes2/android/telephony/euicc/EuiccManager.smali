.class public Landroid/telephony/euicc/EuiccManager;
.super Ljava/lang/Object;
.source "EuiccManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccManager$OtaStatus;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS"

.field public static final ACTION_NOTIFY_CARRIER_SETUP_INCOMPLETE:Ljava/lang/String; = "android.telephony.euicc.action.NOTIFY_CARRIER_SETUP_INCOMPLETE"

.field public static final ACTION_OTA_STATUS_CHANGED:Ljava/lang/String; = "android.telephony.euicc.action.OTA_STATUS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PROVISION_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_RESOLVE_ERROR:Ljava/lang/String; = "android.telephony.euicc.action.RESOLVE_ERROR"

.field public static final EMBEDDED_SUBSCRIPTION_RESULT_ERROR:I = 0x2

.field public static final EMBEDDED_SUBSCRIPTION_RESULT_OK:I = 0x0

.field public static final EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR:I = 0x1

.field public static final EUICC_OTA_FAILED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EUICC_OTA_IN_PROGRESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EUICC_OTA_NOT_NEEDED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EUICC_OTA_STATUS_UNAVAILABLE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EUICC_OTA_SUCCEEDED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION"

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

.field public static final EXTRA_FORCE_PROVISION:Ljava/lang/String; = "android.telephony.euicc.extra.FORCE_PROVISION"

.field public static final META_DATA_CARRIER_ICON:Ljava/lang/String; = "android.telephony.euicc.carriericon"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 255
    return-void
.end method

.method private static getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;
    .locals 1

    .line 635
    const-string v0, "econtroller"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    return-object v0
.end method

.method private static sendUnavailableError(Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 628
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 632
    :goto_0
    return-void
.end method


# virtual methods
.method public continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "resolutionIntent"    # Landroid/content/Intent;
    .param p2, "resolutionExtras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 394
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    .line 396
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 398
    .local v0, "callbackIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 399
    invoke-static {v0}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 401
    :cond_0
    return-void

    .line 404
    .end local v0    # "callbackIntent":Landroid/app/PendingIntent;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    nop

    .line 408
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deleteSubscription(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "subscriptionId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 506
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 508
    return-void

    .line 511
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 512
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->deleteSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    nop

    .line 516
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "switchAfterDownload"    # Z
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 332
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 334
    return-void

    .line 337
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 338
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/euicc/IEuiccController;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    nop

    .line 342
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public eraseSubscriptions(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 585
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 587
    return-void

    .line 590
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->eraseSubscriptions(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    nop

    .line 594
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultDownloadableSubscriptionList(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 461
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 463
    return-void

    .line 466
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDefaultDownloadableSubscriptionList(Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    nop

    .line 471
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 431
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 433
    return-void

    .line 436
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 437
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    nop

    .line 441
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEid()Ljava/lang/String;
    .locals 2

    .line 283
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 287
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;
    .locals 2

    .line 481
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOtaStatus()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 306
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x5

    return v0

    .line 310
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/euicc/IEuiccController;->getOtaStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 270
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 615
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 617
    return-void

    .line 620
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    nop

    .line 624
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startResolutionActivity(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultIntent"    # Landroid/content/Intent;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 365
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

    .line 366
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 367
    .local v0, "resolutionIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 370
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v1, "fillInIntent":Landroid/content/Intent;
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 373
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 375
    return-void

    .line 368
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid result intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public switchToSubscription(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "subscriptionId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 534
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 536
    return-void

    .line 539
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 540
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->switchToSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    nop

    .line 544
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "subscriptionId"    # I
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 561
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 563
    return-void

    .line 566
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccController;->updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    nop

    .line 571
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
