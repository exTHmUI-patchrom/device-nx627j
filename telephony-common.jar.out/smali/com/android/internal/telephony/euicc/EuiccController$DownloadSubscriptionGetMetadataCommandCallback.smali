.class Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;
.super Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;
.source "EuiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadSubscriptionGetMetadataCommandCallback"
.end annotation


# instance fields
.field private final mForceDeactivateSim:Z

.field private final mSwitchAfterDownload:Z

.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/internal/telephony/euicc/EuiccController;
    .param p2, "callingToken"    # J
    .param p4, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p5, "switchAfterDownload"    # Z
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "forceDeactivateSim"    # Z
    .param p8, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 343
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 344
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 345
    iput-boolean p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    .line 346
    iput-boolean p7, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mForceDeactivateSim:Z

    .line 347
    return-void
.end method


# virtual methods
.method protected getOperationForDeactivateSim()Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 5

    .line 425
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingToken:J

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v0

    return-object v0
.end method

.method public onGetMetadataComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .locals 16
    .param p1, "result"    # Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;

    move-object/from16 v1, p0

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v0, "extrasIntent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    const-string v5, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    iget-object v6, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingToken:J

    iget-object v4, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v10, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    iget-object v11, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 359
    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadNoPrivileges(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v8

    .line 356
    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccOperation;)V

    .line 362
    iget-object v3, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 363
    return-void

    .line 366
    .end local v0    # "extrasIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->onGetMetadataComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V

    .line 369
    return-void

    .line 372
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getDownloadableSubscription()Landroid/telephony/euicc/DownloadableSubscription;

    move-result-object v11

    .line 373
    .local v11, "subscription":Landroid/telephony/euicc/DownloadableSubscription;
    const/4 v0, 0x0

    .line 374
    .local v0, "rules":[Landroid/telephony/UiccAccessRule;
    invoke-virtual {v11}, Landroid/telephony/euicc/DownloadableSubscription;->getAccessRules()Ljava/util/List;

    move-result-object v12

    .line 375
    .local v12, "rulesList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    if-eqz v12, :cond_2

    .line 376
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/telephony/UiccAccessRule;

    invoke-interface {v12, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Landroid/telephony/UiccAccessRule;

    .line 378
    .end local v0    # "rules":[Landroid/telephony/UiccAccessRule;
    .local v13, "rules":[Landroid/telephony/UiccAccessRule;
    :cond_2
    move-object v13, v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v13, :cond_3

    .line 379
    const-string v0, "EuiccController"

    const-string v2, "No access rules but caller is unprivileged"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v2, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 381
    return-void

    .line 386
    :cond_3
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccController;->access$000(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 391
    nop

    .line 394
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move v14, v5

    .end local v5    # "i":I
    .local v14, "i":I
    array-length v5, v13

    if-ge v14, v5, :cond_6

    .line 395
    aget-object v5, v13, v14

    invoke-virtual {v5, v0}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v5

    if-ne v5, v2, :cond_5

    .line 400
    iget-object v3, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->access$100(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 401
    iget-object v3, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-wide v4, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingToken:J

    iget-boolean v7, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    iget-boolean v8, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mForceDeactivateSim:Z

    iget-object v9, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    move-object v6, v11

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(JLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 404
    return-void

    .line 408
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v3, "extrasIntent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    const-string v6, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    iget-object v7, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v9, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingToken:J

    iget-boolean v5, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    iget-object v15, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 412
    invoke-static {v9, v10, v11, v5, v15}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadNoPrivileges(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v9

    .line 409
    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccOperation;)V

    .line 415
    iget-object v4, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v5, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 416
    return-void

    .line 394
    .end local v3    # "extrasIntent":Landroid/content/Intent;
    :cond_5
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 419
    .end local v5    # "i":I
    :cond_6
    const-string v2, "EuiccController"

    const-string v5, "Caller is not permitted to download this profile"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v5, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 421
    return-void

    .line 388
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "EuiccController"

    const-string v5, "Calling package valid but gone"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v5, v1, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 391
    return-void
.end method
