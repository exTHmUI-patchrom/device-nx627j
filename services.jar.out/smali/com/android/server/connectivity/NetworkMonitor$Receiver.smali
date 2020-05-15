.class Lcom/android/server/connectivity/NetworkMonitor$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .line 1676
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$Receiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .line 1676
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$Receiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1679
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x8200c

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1681
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$Receiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2902(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 1682
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$Receiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4502(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 1683
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$Receiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 1684
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$Receiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIJ)V

    goto :goto_0

    .line 1685
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1686
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$Receiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$2902(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 1687
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$Receiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$4700(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 1689
    :cond_1
    :goto_0
    return-void
.end method
