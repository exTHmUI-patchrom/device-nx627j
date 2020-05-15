.class public Lcom/android/internal/telephony/RIL$RilHandler;
.super Landroid/os/Handler;
.source "RIL.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RilHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    .line 227
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRadioProxyCookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 293
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 294
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList()V

    goto/16 :goto_1

    .line 272
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 273
    .local v0, "serial":I
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 275
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v1, :cond_0

    .line 276
    goto/16 :goto_1

    .line 280
    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 281
    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object v2

    .line 282
    .local v2, "timeoutResponse":Ljava/lang/Object;
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 283
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 284
    iget-object v3, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v4, v4, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v6, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    .line 287
    .end local v2    # "timeoutResponse":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    .line 288
    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 289
    goto/16 :goto_1

    .line 264
    .end local v0    # "serial":I
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget v1, v1, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;I)Z

    move-result v0

    goto :goto_1

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 248
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget v2, v2, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 251
    .local v1, "count":I
    const-string v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 254
    iget-object v3, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    .line 255
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 256
    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_3
    monitor-exit v0

    .line 261
    nop

    .line 299
    :cond_4
    :goto_1
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
