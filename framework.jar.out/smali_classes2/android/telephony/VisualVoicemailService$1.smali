.class Landroid/telephony/VisualVoicemailService$1;
.super Landroid/os/Handler;
.source "VisualVoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/VisualVoicemailService;


# direct methods
.method constructor <init>(Landroid/telephony/VisualVoicemailService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/VisualVoicemailService;

    .line 156
    iput-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 159
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data_phone_account_handle"

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 161
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    new-instance v1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;-><init>(Landroid/os/Messenger;ILandroid/telephony/VisualVoicemailService$1;)V

    .line 162
    .local v1, "task":Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 171
    :pswitch_0
    iget-object v2, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {v2, v1, v0}, Landroid/telephony/VisualVoicemailService;->onSimRemoved(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V

    .line 172
    goto :goto_0

    .line 167
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "data_sms"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/telephony/VisualVoicemailSms;

    .line 168
    .local v2, "sms":Landroid/telephony/VisualVoicemailSms;
    iget-object v3, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {v3, v1, v2}, Landroid/telephony/VisualVoicemailService;->onSmsReceived(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telephony/VisualVoicemailSms;)V

    .line 169
    goto :goto_0

    .line 164
    .end local v2    # "sms":Landroid/telephony/VisualVoicemailSms;
    :pswitch_2
    iget-object v2, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {v2, v1, v0}, Landroid/telephony/VisualVoicemailService;->onCellServiceConnected(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V

    .line 165
    goto :goto_0

    .line 174
    :cond_0
    iget-object v2, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {v2, v1}, Landroid/telephony/VisualVoicemailService;->onStopped(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V

    .line 175
    nop

    .line 180
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
