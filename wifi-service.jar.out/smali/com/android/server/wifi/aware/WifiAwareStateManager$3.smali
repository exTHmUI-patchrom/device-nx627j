.class Lcom/android/server/wifi/aware/WifiAwareStateManager$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/aware/WifiAwareStateManager;->start(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 441
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$3;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 444
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 446
    .local v0, "isEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 447
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$3;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->enableUsage()V

    goto :goto_1

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$3;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disableUsage()V

    .line 451
    :goto_1
    return-void
.end method
