.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
.super Landroid/service/euicc/IEuiccService$Stub;
.source "EuiccService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/EuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IEuiccServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/euicc/EuiccService;


# direct methods
.method private constructor <init>(Landroid/service/euicc/EuiccService;)V
    .locals 0

    .line 401
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-direct {p0}, Landroid/service/euicc/IEuiccService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/euicc/EuiccService;Landroid/service/euicc/EuiccService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/euicc/EuiccService;
    .param p2, "x1"    # Landroid/service/euicc/EuiccService$1;

    .line 401
    invoke-direct {p0, p1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;-><init>(Landroid/service/euicc/EuiccService;)V

    return-void
.end method


# virtual methods
.method public deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/service/euicc/IDeleteSubscriptionCallback;

    .line 543
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 554
    return-void
.end method

.method public downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "forceDeactivateSim"    # Z
    .param p5, "callback"    # Landroid/service/euicc/IDownloadSubscriptionCallback;

    .line 406
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v8, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IEraseSubscriptionsCallback;

    .line 593
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 604
    return-void
.end method

.method public getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "forceDeactivateSim"    # Z
    .param p3, "callback"    # Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    .line 493
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method public getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "forceDeactivateSim"    # Z
    .param p4, "callback"    # Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    .line 475
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 488
    return-void
.end method

.method public getEid(ILandroid/service/euicc/IGetEidCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetEidCallback;

    .line 422
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEidCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method

.method public getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetEuiccInfoCallback;

    .line 526
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 538
    return-void
.end method

.method public getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

    .line 510
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 522
    return-void
.end method

.method public getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetOtaStatusCallback;

    .line 457
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetOtaStatusCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method public retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;

    .line 609
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 620
    return-void
.end method

.method public startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "statusChangedCallback"    # Landroid/service/euicc/IOtaStatusChangedCallback;

    .line 438
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method public switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "forceDeactivateSim"    # Z
    .param p4, "callback"    # Landroid/service/euicc/ISwitchToSubscriptionCallback;

    .line 559
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 572
    return-void
.end method

.method public updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    .line 577
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method
