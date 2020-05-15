.class Lcom/android/internal/telephony/CarrierActionAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierActionAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierActionAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierActionAgent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierActionAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierActionAgent;

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent$1;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "iccState":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const-string v2, "rebroadcastOnUnlock"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent$1;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierActionAgent$1;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CarrierActionAgent;->sendMessage(Landroid/os/Message;)Z

    .line 98
    :cond_1
    return-void
.end method
