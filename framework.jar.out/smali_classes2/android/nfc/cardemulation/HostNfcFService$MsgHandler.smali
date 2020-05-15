.class final Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;
.super Landroid/os/Handler;
.source "HostNfcFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/HostNfcFService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/cardemulation/HostNfcFService;


# direct methods
.method constructor <init>(Landroid/nfc/cardemulation/HostNfcFService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/cardemulation/HostNfcFService;

    .line 173
    iput-object p1, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 226
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 222
    :pswitch_0
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iput-object v1, v0, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    .line 223
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/HostNfcFService;->onDeactivated(I)V

    .line 224
    goto/16 :goto_1

    .line 209
    :pswitch_1
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "NfcFService"

    const-string v1, "Response not sent; service was deactivated."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 215
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NfcFService"

    const-string v2, "RemoteException calling into NfcService."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 178
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    .local v0, "dataBundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 180
    return-void

    .line 182
    :cond_1
    iget-object v2, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v2, v2, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    .line 184
    :cond_2
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 185
    .local v2, "packet":[B
    if-eqz v2, :cond_5

    .line 186
    iget-object v3, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v3, v2, v1}, Landroid/nfc/cardemulation/HostNfcFService;->processNfcFPacket([BLandroid/os/Bundle;)[B

    move-result-object v3

    .line 187
    .local v3, "responsePacket":[B
    if-eqz v3, :cond_4

    .line 188
    iget-object v4, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v4, v4, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    if-nez v4, :cond_3

    .line 189
    const-string v1, "NfcFService"

    const-string v4, "Response not sent; service was deactivated."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 192
    :cond_3
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 193
    .local v1, "responseMsg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v4, "responseBundle":Landroid/os/Bundle;
    const-string v5, "data"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 195
    invoke-virtual {v1, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 196
    iget-object v5, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v5, v5, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    iput-object v5, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 198
    :try_start_1
    iget-object v5, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v5, v5, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v5, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    goto :goto_0

    .line 199
    :catch_1
    move-exception v5

    .line 200
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "TAG"

    const-string v7, "Response not sent; RemoteException calling into NfcService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "responseMsg":Landroid/os/Message;
    .end local v3    # "responsePacket":[B
    .end local v4    # "responseBundle":Landroid/os/Bundle;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    goto :goto_1

    .line 205
    :cond_5
    const-string v1, "NfcFService"

    const-string v3, "Received MSG_COMMAND_PACKET without data."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    nop

    .line 228
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v2    # "packet":[B
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
