.class Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;
.super Landroid/net/wifi/IPnoScanEvent$Stub;
.source "WificondControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WificondControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanEventHandler"
.end annotation


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WificondControl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WificondControl;Ljava/lang/String;)V
    .locals 0
    .param p2, "ifaceName"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-direct {p0}, Landroid/net/wifi/IPnoScanEvent$Stub;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->mIfaceName:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public OnPnoNetworkFound()V
    .locals 2

    .line 120
    const-string v0, "WificondControl"

    const-string v1, "Pno scan result event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-static {v0}, Lcom/android/server/wifi/WificondControl;->access$000(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastPnoScanResultEvent(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-static {v0}, Lcom/android/server/wifi/WificondControl;->access$100(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementPnoFoundNetworkEventCount()V

    .line 123
    return-void
.end method

.method public OnPnoScanFailed()V
    .locals 2

    .line 127
    const-string v0, "WificondControl"

    const-string v1, "Pno Scan failed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-static {v0}, Lcom/android/server/wifi/WificondControl;->access$100(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementPnoScanFailedCount()V

    .line 129
    return-void
.end method

.method public OnPnoScanOverOffloadFailed(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 139
    const-string v0, "WificondControl"

    const-string v1, "Pno scan over offload failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-static {v0}, Lcom/android/server/wifi/WificondControl;->access$100(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementPnoScanFailedOverOffloadCount()V

    .line 141
    return-void
.end method

.method public OnPnoScanOverOffloadStarted()V
    .locals 2

    .line 133
    const-string v0, "WificondControl"

    const-string v1, "Pno scan over offload started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-static {v0}, Lcom/android/server/wifi/WificondControl;->access$100(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementPnoScanStartedOverOffloadCount()V

    .line 135
    return-void
.end method
