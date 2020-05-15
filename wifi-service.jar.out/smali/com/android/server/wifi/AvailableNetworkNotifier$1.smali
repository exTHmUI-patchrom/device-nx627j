.class Lcom/android/server/wifi/AvailableNetworkNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "AvailableNetworkNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/AvailableNetworkNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/AvailableNetworkNotifier;

    .line 194
    iput-object p1, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$1;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$1;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$100(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.wifi.ConnectToNetworkNotification.AVAILABLE_NETWORK_NOTIFIER_TAG"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x64dace01

    if-eq v2, v3, :cond_4

    const v3, -0x43fd1cde

    if-eq v2, v3, :cond_3

    const v3, 0x12194ef8

    if-eq v2, v3, :cond_2

    const v3, 0x4b28e0b5    # 1.1067573E7f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.android.server.wifi.ConnectToNetworkNotification.USER_DISMISSED_NOTIFICATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "com.android.server.wifi.ConnectToNetworkNotification.PICK_NETWORK_AFTER_FAILURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string v2, "com.android.server.wifi.ConnectToNetworkNotification.PICK_WIFI_NETWORK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const-string v2, "com.android.server.wifi.ConnectToNetworkNotification.CONNECT_TO_NETWORK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$1;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$100(Lcom/android/server/wifi/AvailableNetworkNotifier;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$1;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$500(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    .line 212
    goto :goto_1

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$1;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$400(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    .line 209
    goto :goto_1

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$1;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$300(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    .line 206
    goto :goto_1

    .line 202
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/AvailableNetworkNotifier$1;->this$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->access$200(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    .line 203
    nop

    .line 216
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
