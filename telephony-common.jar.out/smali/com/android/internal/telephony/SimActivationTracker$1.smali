.class Lcom/android/internal/telephony/SimActivationTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SimActivationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SimActivationTracker;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SimActivationTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SimActivationTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SimActivationTracker;

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SimActivationTracker;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SimActivationTracker;->access$100(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V

    .line 82
    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "ABSENT"

    const-string v2, "ss"

    .line 84
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    const-string v2, "onSimAbsent, reset activation state to UNKNOWN"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SimActivationTracker;->access$100(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SimActivationTracker;->setVoiceActivationState(I)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SimActivationTracker;->setDataActivationState(I)V

    .line 90
    :cond_1
    return-void
.end method
