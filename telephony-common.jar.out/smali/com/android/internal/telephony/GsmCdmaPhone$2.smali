.class Lcom/android/internal/telephony/GsmCdmaPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3679
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3682
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3683
    .local v0, "action":Ljava/lang/String;
    const-string v1, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3684
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->access$000(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 3686
    :cond_0
    return-void
.end method
