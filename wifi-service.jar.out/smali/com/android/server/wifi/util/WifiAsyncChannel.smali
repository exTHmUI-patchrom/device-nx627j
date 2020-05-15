.class public Lcom/android/server/wifi/util/WifiAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "WifiAsyncChannel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WifiAsyncChannel"


# instance fields
.field private mLog:Lcom/android/server/wifi/WifiLog;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceTag"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiAsyncChannel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/util/WifiAsyncChannel;->mTag:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private getOrInitLog()Lcom/android/server/wifi/WifiLog;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiAsyncChannel;->mLog:Lcom/android/server/wifi/WifiLog;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/util/WifiAsyncChannel;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/util/WifiAsyncChannel;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiAsyncChannel;->mLog:Lcom/android/server/wifi/WifiLog;

    return-object v0
.end method


# virtual methods
.method public replyToMessage(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "dstMsg"    # Landroid/os/Message;

    .line 72
    invoke-direct {p0}, Lcom/android/server/wifi/util/WifiAsyncChannel;->getOrInitLog()Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    const-string v1, "replyToMessage recvdMessage=% sendingUid=% sentMessage=%"

    .line 73
    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 74
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    int-to-long v1, v1

    .line 75
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget v1, p2, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 76
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 79
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 58
    invoke-direct {p0}, Lcom/android/server/wifi/util/WifiAsyncChannel;->getOrInitLog()Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    const-string v1, "sendMessage message=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 59
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 62
    return-void
.end method

.method public sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 89
    invoke-direct {p0}, Lcom/android/server/wifi/util/WifiAsyncChannel;->getOrInitLog()Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    const-string v1, "sendMessageSynchronously.send message=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 90
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 92
    invoke-super {p0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, "replyMessage":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/util/WifiAsyncChannel;->getOrInitLog()Lcom/android/server/wifi/WifiLog;

    move-result-object v1

    const-string v2, "sendMessageSynchronously.recv message=% sendingUid=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    int-to-long v2, v2

    .line 95
    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->sendingUid:I

    int-to-long v2, v2

    .line 96
    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 99
    :cond_0
    return-object v0
.end method

.method public setWifiLog(Lcom/android/server/wifi/WifiLog;)V
    .locals 0
    .param p1, "log"    # Lcom/android/server/wifi/WifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/android/server/wifi/util/WifiAsyncChannel;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 105
    return-void
.end method
