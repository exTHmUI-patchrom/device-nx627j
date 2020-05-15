.class Lcom/android/internal/telephony/CarrierSignalAgent$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CarrierSignalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CarrierSignalAgent;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierSignalAgent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierSignalAgent;

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$200(Lcom/android/internal/telephony/CarrierSignalAgent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$000(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "defaultNetworkAvailable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$202(Lcom/android/internal/telephony/CarrierSignalAgent;Z)Z

    .line 156
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$000(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "defaultNetworkAvailable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$202(Lcom/android/internal/telephony/CarrierSignalAgent;Z)Z

    .line 166
    return-void
.end method
