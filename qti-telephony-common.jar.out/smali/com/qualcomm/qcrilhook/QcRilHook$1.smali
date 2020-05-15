.class Lcom/qualcomm/qcrilhook/QcRilHook$1;
.super Landroid/content/BroadcastReceiver;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 143
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "response_id":I
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    const-string v3, "Received Broadcast Intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$000(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V

    .line 152
    const-string v2, "payload"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 153
    .local v2, "payload":[B
    const-string v3, "INSTANCE_ID"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 155
    .local v3, "instanceId":I
    if-eqz v2, :cond_2

    .line 157
    array-length v4, v2

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$100(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 158
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "UNSOL_RESPONSE_OEM_HOOK_RAW incomplete header"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$100(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes. Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 163
    :cond_0
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 164
    .local v4, "response":Ljava/nio/ByteBuffer;
    const-string v5, "QOEMHOOK"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [B

    .line 165
    .local v5, "oem_id_bytes":[B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 166
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 167
    .local v6, "oem_id_str":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Oem ID in QCRILHOOK UNSOL RESP is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$000(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V

    .line 168
    const-string v7, "QOEMHOOK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 169
    const-string v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect Oem ID in QCRILHOOK UNSOL RESP. Expected QOEMHOOK. Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 174
    :cond_1
    array-length v7, v2

    const-string v8, "QOEMHOOK"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    .line 175
    .local v7, "remainingSize":I
    if-lez v7, :cond_2

    .line 176
    new-array v8, v7, [B

    .line 178
    .local v8, "remainingPayload":[B
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 179
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 180
    .local v9, "msg":Landroid/os/Message;
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    iput v3, v9, Landroid/os/Message;->arg1:I

    .line 187
    new-instance v10, Landroid/os/AsyncResult;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v9, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 188
    .local v10, "ar":Landroid/os/AsyncResult;
    invoke-static {v10}, Lcom/qualcomm/qcrilhook/QcRilHook;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 192
    .end local v1    # "response_id":I
    .end local v2    # "payload":[B
    .end local v3    # "instanceId":I
    .end local v4    # "response":Ljava/nio/ByteBuffer;
    .end local v5    # "oem_id_bytes":[B
    .end local v6    # "oem_id_str":Ljava/lang/String;
    .end local v7    # "remainingSize":I
    .end local v8    # "remainingPayload":[B
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :cond_2
    goto :goto_0

    .line 193
    :cond_3
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Unknown Intent: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void
.end method
