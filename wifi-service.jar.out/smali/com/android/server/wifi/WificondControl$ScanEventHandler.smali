.class Lcom/android/server/wifi/WificondControl$ScanEventHandler;
.super Landroid/net/wifi/IScanEvent$Stub;
.source "WificondControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WificondControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanEventHandler"
.end annotation


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WificondControl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WificondControl;Ljava/lang/String;)V
    .locals 0
    .param p2, "ifaceName"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/android/server/wifi/WificondControl$ScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-direct {p0}, Landroid/net/wifi/IScanEvent$Stub;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/android/server/wifi/WificondControl$ScanEventHandler;->mIfaceName:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public OnScanFailed()V
    .locals 2

    .line 99
    const-string v0, "WificondControl"

    const-string v1, "Scan failed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$ScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-static {v0}, Lcom/android/server/wifi/WificondControl;->access$000(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl$ScanEventHandler;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastScanFailedEvent(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public OnScanResultReady()V
    .locals 2

    .line 93
    const-string v0, "WificondControl"

    const-string v1, "Scan result ready event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$ScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-static {v0}, Lcom/android/server/wifi/WificondControl;->access$000(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl$ScanEventHandler;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastScanResultEvent(Ljava/lang/String;)V

    .line 95
    return-void
.end method
