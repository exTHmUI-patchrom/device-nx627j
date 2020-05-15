.class Lcom/android/server/wifi/WifiController$StaEnabledState$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController$StaEnabledState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiController$StaEnabledState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController$StaEnabledState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiController$StaEnabledState;

    .line 452
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 455
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "delayed disconnect cancelled. disconnecting..."

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$2800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v1, 0x2601e

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$2900(Lcom/android/server/wifi/WifiController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3000(Lcom/android/server/wifi/WifiController;I)V

    .line 458
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 460
    :cond_0
    return-void
.end method
