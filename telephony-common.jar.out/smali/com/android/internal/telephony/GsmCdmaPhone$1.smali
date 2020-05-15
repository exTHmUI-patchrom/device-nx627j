.class Lcom/android/internal/telephony/GsmCdmaPhone$1;
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

    .line 236
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 239
    const-string v0, "GsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadcastReceiver: action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 246
    :cond_0
    return-void
.end method
