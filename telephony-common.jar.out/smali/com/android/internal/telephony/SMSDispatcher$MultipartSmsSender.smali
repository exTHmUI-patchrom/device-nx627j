.class final Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
.super Landroid/telephony/CarrierMessagingServiceManager;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultipartSmsSender"
.end annotation


# instance fields
.field private final mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

.field public final mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p3, "trackers"    # [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ")V"
        }
    .end annotation

    .line 541
    .local p2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    .line 542
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mParts:Ljava/util/List;

    .line 543
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 544
    return-void
.end method


# virtual methods
.method protected onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 7
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mParts:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 563
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 564
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->access$000(Landroid/app/PendingIntent;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    .line 562
    move-object v0, p1

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Landroid/service/carrier/ICarrierMessagingService;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception sending the SMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->onSendMultipartSmsComplete(I[I)V

    .line 571
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V
    .locals 3
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "senderCallback"    # Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    .line 548
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    const-string v0, "SMSDispatcher"

    const-string v1, "bindService() for carrier messaging service failed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->onSendMultipartSmsComplete(I[I)V

    goto :goto_0

    .line 555
    :cond_0
    const-string v0, "SMSDispatcher"

    const-string v1, "bindService() for carrier messaging service succeeded"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :goto_0
    return-void
.end method
