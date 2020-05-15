.class public Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;
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
    name = "EmergencyNetworkNotification"
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

    .line 456
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    .line 457
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mTypeId:I

    .line 458
    return-void
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 474
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    return v0
.end method

.method public getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 5

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 500
    .local v0, "context":Landroid/content/Context;
    const v1, 0x104002c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 502
    .local v1, "title":Ljava/lang/CharSequence;
    const v2, 0x104002b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 504
    .local v2, "details":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 505
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 506
    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 507
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "wfc"

    .line 508
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 504
    return-object v3
.end method

.method public getTypeId()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mTypeId:I

    return v0
.end method

.method public sendMessage()Z
    .locals 3

    .line 485
    const-string v0, "CSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmergencyNetworkNotification: sendMessage() w/values: ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 486
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$900(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 487
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$1000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$800(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$900(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 489
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$1000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 490
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDelay(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 464
    if-nez p1, :cond_0

    .line 465
    const-string v0, "CSST"

    const-string v1, "bundle is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 468
    :cond_0
    const-string v0, "emergency_notification_delay_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    .line 470
    const-string v0, "CSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reading time to delay notification emergency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;->mDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method
