.class public Lcom/android/internal/telephony/SmsDispatchersController;
.super Landroid/os/Handler;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    }
.end annotation


# static fields
.field private static final EVENT_IMS_STATE_CHANGED:I = 0xc

.field private static final EVENT_IMS_STATE_DONE:I = 0xd

.field private static final EVENT_RADIO_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "SmsDispatchersController"


# instance fields
.field private mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIms:Z

.field private mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

.field private mImsSmsFormat:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 77
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    .line 81
    const-string v0, "SmsDispatchersController"

    const-string v1, "SmsDispatchersController created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 85
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 94
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-static {v0, p2, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->registerNewMessageNotificationActionHandler(Landroid/content/Context;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 620
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result v0

    .line 621
    .local v0, "success":Z
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private handleGsmStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 6
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 626
    nop

    .line 627
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 628
    .local v0, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v1, 0x0

    .line 629
    .local v1, "complete":Z
    const/4 v2, 0x0

    .line 630
    .local v2, "success":Z
    if-eqz v0, :cond_2

    .line 631
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v3

    .line 632
    .local v3, "tpStatus":I
    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 634
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 635
    const/4 v1, 0x1

    .line 637
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result v2

    .line 639
    .end local v3    # "tpStatus":I
    :cond_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private setImsSmsFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 167
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_0

    .line 164
    :pswitch_0
    const-string v0, "3gpp2"

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    .line 165
    goto :goto_0

    .line 161
    :pswitch_1
    const-string v0, "3gpp"

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    .line 162
    nop

    .line 170
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B

    .line 644
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 645
    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 646
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v2, "pdu"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 647
    const-string v2, "format"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    const/4 v2, 0x1

    return v2

    .line 651
    :catch_0
    move-exception v2

    .line 652
    .local v2, "ex":Landroid/app/PendingIntent$CanceledException;
    const/4 v3, 0x0

    return v3
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 173
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 174
    .local v0, "responseArray":[I
    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->setImsSmsFormat(I)V

    .line 175
    const/4 v2, 0x0

    aget v3, v0, v2

    if-ne v3, v1, :cond_0

    const-string v3, "unknown"

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 176
    const-string v1, "SmsDispatchersController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS registration state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispose()V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispose()V

    .line 121
    return-void
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 141
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 142
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 144
    :cond_0
    const-string v1, "SmsDispatchersController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS State query failed with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    goto :goto_0

    .line 135
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    .line 136
    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 156
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSmsStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 1
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 610
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->handleCdmaStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 613
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->handleGsmStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;Z)V
    .locals 6
    .param p1, "msg"    # Landroid/telephony/SmsMessage;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    .param p4, "ignoreClass"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 210
    const-string v0, "SmsDispatchersController"

    const-string v1, "SmsDispatchersController:injectSmsPdu"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 213
    :try_start_0
    const-string v1, "SmsDispatchersController"

    const-string v2, "injectSmsPdu: createFromPdu returned null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    .line 215
    return-void

    .line 240
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 218
    :cond_0
    if-nez p4, :cond_1

    .line 219
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v1, v2, :cond_1

    .line 220
    const-string v1, "SmsDispatchersController"

    const-string v2, "injectSmsPdu: not class 1"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    .line 222
    return-void

    .line 225
    :cond_1
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 227
    .local v1, "ar":Landroid/os/AsyncResult;
    const-string v2, "3gpp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 228
    const-string v2, "SmsDispatchersController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsDispatchersController:injectSmsText Sending msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "to mGsmInboundSmsHandler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 231
    :cond_2
    const-string v2, "3gpp2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    const-string v2, "SmsDispatchersController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsDispatchersController:injectSmsText Sending msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "to mCdmaInboundSmsHandler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_3
    const-string v2, "SmsDispatchersController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pdu format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :goto_0
    goto :goto_2

    .line 240
    :goto_1
    nop

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmsDispatchersController"

    const-string v3, "injectSmsPdu failed: "

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public injectSmsPdu([BLjava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    nop

    .line 193
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 194
    .local v0, "msg":Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;Z)V

    .line 195
    return-void
.end method

.method public isCdmaFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isCdmaMo()Z
    .locals 2

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIms()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 415
    :goto_0
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 15
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    .line 549
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_0

    .line 560
    :cond_1
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 565
    :goto_0
    return-void
.end method

.method protected sendRegisterData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZI)V
    .locals 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "isExpectMore"    # Z
    .param p10, "validityPeriod"    # I

    move-object v0, p0

    .line 487
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendRegisterData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZI)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendRegisterData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZI)V

    .line 496
    :goto_0
    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 252
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 256
    .local v0, "oldFormat":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_0

    .line 258
    .local v1, "newFormat":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFallBackRetry:Z

    if-nez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFallBackRetry:Z

    if-nez v2, :cond_2

    .line 265
    const-string v2, "SmsDispatchersController"

    const-string v3, "old format matched new format processing over IMS"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 267
    return-void

    .line 269
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    const-string v2, "SmsDispatchersController"

    const-string v3, "old format matched new format (cdma)"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 272
    return-void

    .line 274
    :cond_3
    const-string v2, "SmsDispatchersController"

    const-string v3, "old format matched new format (gsm)"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 276
    return-void

    .line 282
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v2

    .line 287
    .local v2, "map":Ljava/util/HashMap;
    const-string v3, "scAddr"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_10

    const-string v3, "destAddr"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "text"

    .line 288
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "data"

    .line 289
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "destPort"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_8

    .line 295
    :cond_5
    const-string v3, "scAddr"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    .local v3, "scAddr":Ljava/lang/String;
    const-string v6, "destAddr"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 298
    .local v6, "destAddr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 300
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v8, "text"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 301
    const-string v8, "SmsDispatchersController"

    const-string v9, "sms failed was text"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v8, "text"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 304
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    .line 305
    const-string v9, "SmsDispatchersController"

    const-string v11, "old format (gsm) ==> new format (cdma)"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_6

    move v4, v5

    nop

    :cond_6
    invoke-static {v3, v6, v8, v4, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    .line 313
    .end local v8    # "text":Ljava/lang/String;
    :goto_2
    move-object v7, v4

    goto :goto_3

    .line 309
    .restart local v8    # "text":Ljava/lang/String;
    :cond_7
    const-string v9, "SmsDispatchersController"

    const-string v11, "old format (cdma) ==> new format (gsm)"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_8

    move v4, v5

    nop

    :cond_8
    invoke-static {v3, v6, v8, v4, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v4

    .end local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .end local v8    # "text":Ljava/lang/String;
    .local v4, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_2

    .line 313
    .end local v4    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .restart local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_3
    goto :goto_6

    :cond_9
    const-string v8, "data"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 314
    const-string v8, "SmsDispatchersController"

    const-string v9, "sms failed was data"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v8, "data"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 316
    .local v8, "data":[B
    const-string v9, "destPort"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 318
    .local v9, "destPort":Ljava/lang/Integer;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 319
    const-string v10, "SmsDispatchersController"

    const-string v11, "old format (gsm) ==> new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    nop

    .line 321
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_a

    .line 320
    move v4, v5

    goto :goto_4

    .line 321
    :cond_a
    nop

    .line 320
    :goto_4
    invoke-static {v3, v6, v10, v8, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    goto :goto_6

    .line 324
    :cond_b
    const-string v10, "SmsDispatchersController"

    const-string v11, "old format (cdma) ==> new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    nop

    .line 326
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_c

    .line 325
    move v4, v5

    goto :goto_5

    .line 326
    :cond_c
    nop

    .line 325
    :goto_5
    invoke-static {v3, v6, v10, v8, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 332
    .end local v8    # "data":[B
    .end local v9    # "destPort":Ljava/lang/Integer;
    :cond_d
    :goto_6
    const-string v4, "smsc"

    iget-object v5, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v4, "pdu"

    iget-object v5, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFallBackRetry:Z

    if-nez v4, :cond_e

    .line 336
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .local v4, "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    goto :goto_7

    .line 338
    .end local v4    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_7

    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 341
    .restart local v4    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :goto_7
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 342
    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 343
    return-void

    .line 291
    .end local v3    # "scAddr":Ljava/lang/String;
    .end local v4    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .end local v6    # "destAddr":Ljava/lang/String;
    .end local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_10
    :goto_8
    const-string v3, "SmsDispatchersController"

    const-string v6, "sendRetrySms failed to re-encode per missing fields!"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 293
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 15
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I

    move-object v0, p0

    .line 465
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object/from16 v14, p1

    invoke-virtual {v1, v14}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_1

    .line 475
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_1

    .line 466
    :cond_2
    move-object/from16 v14, p1

    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 480
    :goto_1
    return-void
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 591
    return-void
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 107
    const-string v0, "SmsDispatchersController"

    const-string v1, "In IMS updatePhoneObject "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 112
    return-void
.end method
