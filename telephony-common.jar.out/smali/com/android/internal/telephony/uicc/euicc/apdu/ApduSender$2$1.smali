.class Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "ApduSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->onResult(Lcom/android/internal/telephony/uicc/IccIoResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Lcom/android/internal/telephony/uicc/IccIoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/android/internal/telephony/uicc/IccIoResult;)V
    .locals 8
    .param p1, "fullResponse"    # Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Full APDU response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$600(Ljava/lang/String;)V

    .line 163
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    or-int/2addr v0, v1

    .line 164
    .local v0, "status":I
    const v1, 0x9000

    if-eq v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v2, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$command:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v3, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->channel:I

    const/4 v4, 0x0

    new-instance v5, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v6, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v7, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$handler:Landroid/os/Handler;

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$400(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 167
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget v1, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$index:I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v2, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$command:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v3, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->channel:I

    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v6, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v7, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$handler:Landroid/os/Handler;

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$400(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 174
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$commands:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget v3, v3, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$index:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$handler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$500(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/util/List;ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 179
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 158
    check-cast p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->onResult(Lcom/android/internal/telephony/uicc/IccIoResult;)V

    return-void
.end method
