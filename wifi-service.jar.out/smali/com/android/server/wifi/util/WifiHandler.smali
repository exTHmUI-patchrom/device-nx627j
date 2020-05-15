.class public Lcom/android/server/wifi/util/WifiHandler;
.super Landroid/os/Handler;
.source "WifiHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WifiHandler"


# instance fields
.field private mLog:Lcom/android/server/wifi/WifiLog;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 38
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiHandler."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/util/WifiHandler;->mTag:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private getOrInitLog()Lcom/android/server/wifi/WifiLog;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiHandler;->mLog:Lcom/android/server/wifi/WifiLog;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/util/WifiHandler;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/util/WifiHandler;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiHandler;->mLog:Lcom/android/server/wifi/WifiLog;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 53
    invoke-direct {p0}, Lcom/android/server/wifi/util/WifiHandler;->getOrInitLog()Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    const-string v1, "Received message=%d sendingUid=%"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 54
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    int-to-long v1, v1

    .line 55
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 57
    return-void
.end method

.method public setWifiLog(Lcom/android/server/wifi/WifiLog;)V
    .locals 0
    .param p1, "wifiLog"    # Lcom/android/server/wifi/WifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/android/server/wifi/util/WifiHandler;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 67
    return-void
.end method
