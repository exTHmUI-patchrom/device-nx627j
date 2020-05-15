.class final Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierServicesSmsFilterCallback"
.end annotation


# instance fields
.field private final mDestPort:I

.field private final mPdus:[[B

.field private final mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

.field private final mSmsFormat:Ljava/lang/String;

.field private final mUserUnlocked:Z

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V
    .locals 0
    .param p2, "pdus"    # [[B
    .param p3, "destPort"    # I
    .param p4, "smsFormat"    # Ljava/lang/String;
    .param p5, "smsBroadcastReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .param p6, "userUnlocked"    # Z

    .line 1418
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1419
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    .line 1420
    iput p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    .line 1421
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    .line 1422
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 1423
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    .line 1424
    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 5
    .param p1, "result"    # I

    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilterComplete: result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1500(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    .line 1429
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1431
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 1430
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "Visual voicemail SMS dropped"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 1434
    return-void

    .line 1437
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    if-eqz v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1700(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    goto :goto_0

    .line 1444
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1800(Lcom/android/internal/telephony/InboundSmsHandler;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1900(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 1447
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    goto :goto_0

    .line 1451
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 1453
    :goto_0
    return-void
.end method
