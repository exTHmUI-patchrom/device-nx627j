.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 299
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 302
    const-string v0, "scan_enabled"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 305
    .local v0, "state":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    move-result-object v1

    const v2, 0x27106

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    .line 307
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    .line 308
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 309
    :cond_0
    if-ne v0, v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    move-result-object v1

    const v2, 0x27107

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    .line 311
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    .line 312
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(I)V

    .line 314
    :cond_1
    :goto_0
    return-void
.end method
