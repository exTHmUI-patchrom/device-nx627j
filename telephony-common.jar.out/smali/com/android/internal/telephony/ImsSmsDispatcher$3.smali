.class Lcom/android/internal/telephony/ImsSmsDispatcher$3;
.super Landroid/telephony/ims/aidl/IImsSmsListener$Stub;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSmsReceived$0(Lcom/android/internal/telephony/ImsSmsDispatcher$3;Landroid/telephony/SmsMessage;ILjava/lang/String;I)V
    .locals 6
    .param p1, "message"    # Landroid/telephony/SmsMessage;
    .param p2, "token"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "result"    # I

    .line 189
    const-string v0, "ImsSmsDispacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS handled result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p4, v0, :cond_0

    packed-switch p4, :pswitch_data_0

    .line 202
    move v0, v1

    goto :goto_0

    .line 199
    :pswitch_0
    const/4 v0, 0x4

    .line 200
    .local v0, "mappedResult":I
    goto :goto_0

    .line 196
    .end local v0    # "mappedResult":I
    :pswitch_1
    const/4 v0, 0x3

    .line 197
    .restart local v0    # "mappedResult":I
    goto :goto_0

    .line 193
    .end local v0    # "mappedResult":I
    :cond_0
    const/4 v0, 0x1

    .line 194
    .restart local v0    # "mappedResult":I
    nop

    .line 202
    :goto_0
    nop

    .line 206
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$400(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;

    move-result-object v2

    iget-object v3, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v3, v3, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {v2, p2, v3, v0}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V

    goto :goto_1

    .line 214
    :catch_0
    move-exception v2

    goto :goto_2

    .line 210
    :cond_1
    const-string v2, "ImsSmsDispacher"

    const-string v3, "SMS Received with a PDU that could not be parsed."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$400(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v0}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V

    .line 213
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$300(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, p3, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceNewSms(ILjava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_3

    .line 214
    :goto_2
    nop

    .line 215
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v3, "ImsSmsDispacher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$300(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4, p3, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceNewSms(ILjava/lang/String;I)V

    .line 219
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onSendSmsResult(IIII)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const-string v0, "ImsSmsDispacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendSmsResult token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " messageRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$300(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsServiceSmsSolicitedResponse(III)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 126
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v0, :cond_2

    .line 129
    iput p2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 130
    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 141
    iget v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 142
    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 143
    iput-boolean v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFallBackRetry:Z

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1, v3, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 146
    .local v1, "retryMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    .end local v1    # "retryMsg":Landroid/os/Message;
    goto :goto_0

    .line 148
    :cond_1
    const-string v2, "ImsSmsDispacher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendSmsResult Max retrys reaached: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p4, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 133
    nop

    .line 154
    :goto_0
    return-void

    .line 127
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid token."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSmsReceived(ILjava/lang/String;[B)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B

    .line 185
    const-string v0, "ImsSmsDispacher"

    const-string v1, "SMS received."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    nop

    .line 187
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 188
    .local v0, "message":Landroid/telephony/SmsMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    new-instance v2, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$CR64ZYXhJlC8VF6a8PnspQQkB-4;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher$3;Landroid/telephony/SmsMessage;ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;Z)V

    .line 220
    return-void
.end method

.method public onSmsStatusReportReceived(IILjava/lang/String;[B)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const-string v0, "ImsSmsDispacher"

    const-string v1, "Status report received."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 161
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v0, :cond_2

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object v1

    .line 166
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const-string v2, "ImsSmsDispacher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status report handle result, success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$400(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 172
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 173
    :cond_0
    const/4 v3, 0x2

    .line 169
    :goto_0
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/ims/ImsManager;->acknowledgeSmsReport(III)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_1

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v3, "ImsSmsDispacher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to acknowledgeSmsReport(). Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_1
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_1
    return-void

    .line 162
    .end local v1    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :cond_2
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Invalid token."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
