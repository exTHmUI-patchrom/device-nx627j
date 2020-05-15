.class Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "ApduSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->send(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Landroid/telephony/IccOpenLogicalChannelResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$requestProvider:Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

.field final synthetic val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$requestProvider:Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/telephony/IccOpenLogicalChannelResponse;)V
    .locals 10
    .param p1, "openChannelResponse"    # Landroid/telephony/IccOpenLogicalChannelResponse;

    .line 107
    invoke-virtual {p1}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v6

    .line 108
    .local v6, "channel":I
    invoke-virtual {p1}, Landroid/telephony/IccOpenLogicalChannelResponse;->getStatus()I

    move-result v7

    .line 109
    .local v7, "status":I
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq v6, v1, :cond_3

    const/4 v1, 0x1

    if-eq v7, v1, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$300(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Z

    move-result v2

    invoke-direct {v1, v6, v2}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;-><init>(IZ)V

    move-object v8, v1

    .line 121
    .local v8, "builder":Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    const/4 v1, 0x0

    .line 123
    .local v1, "requestException":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$requestProvider:Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    invoke-virtual {p1}, Landroid/telephony/IccOpenLogicalChannelResponse;->getSelectResponse()[B

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;->buildRequest([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Throwable;
    move-object v1, v2

    .line 127
    .end local v1    # "requestException":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    .local v9, "requestException":Ljava/lang/Throwable;
    :goto_0
    move-object v9, v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->getCommands()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v9, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->getCommands()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$handler:Landroid/os/Handler;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$500(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/util/List;ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 135
    return-void

    .line 130
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$handler:Landroid/os/Handler;

    move v1, v6

    move-object v3, v9

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$400(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 132
    return-void

    .line 111
    .end local v8    # "builder":Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .end local v9    # "requestException":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$000(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 112
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$102(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Z)Z

    .line 113
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open logical channel opened for AID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    .line 116
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$200(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    .line 117
    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Landroid/telephony/IccOpenLogicalChannelResponse;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->onResult(Landroid/telephony/IccOpenLogicalChannelResponse;)V

    return-void
.end method
