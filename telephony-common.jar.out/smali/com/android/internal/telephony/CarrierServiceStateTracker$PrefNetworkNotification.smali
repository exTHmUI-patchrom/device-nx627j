.class public Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;
.super Ljava/lang/Object;
.source "CarrierServiceStateTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrefNetworkNotification"
.end annotation


# instance fields
.field private mDelay:I

.field private final mTypeId:I

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;
    .param p2, "typeId"    # I

    .line 361
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    .line 362
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mTypeId:I

    .line 363
    return-void
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    return v0
.end method

.method public getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 7

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 406
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, "notificationIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 431
    const-string v2, "expandable"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 434
    .local v2, "settingsIntent":Landroid/app/PendingIntent;
    const v3, 0x104002f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 436
    .local v3, "title":Ljava/lang/CharSequence;
    const v4, 0x104002e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 438
    .local v4, "details":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 440
    invoke-virtual {v6, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 441
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "alert"

    .line 442
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 443
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 438
    return-object v5
.end method

.method public getTypeId()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mTypeId:I

    return v0
.end method

.method public sendMessage()Z
    .locals 3

    .line 390
    const-string v0, "CSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrefNetworkNotification: sendMessage() w/values: ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 391
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$600(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$700(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 392
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$800(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$600(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$700(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isRadioOffOrAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 395
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDelay(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 369
    if-nez p1, :cond_0

    .line 370
    const-string v0, "CSST"

    const-string v1, "bundle is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 373
    :cond_0
    const-string v0, "network_notification_delay_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    .line 375
    const-string v0, "CSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reading time to delay notification pref network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method
