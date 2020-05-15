.class Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.source "OpenLogicalChannelInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<",
        "Ljava/lang/String;",
        "Landroid/telephony/IccOpenLogicalChannelResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OpenChan"


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 44
    return-void
.end method


# virtual methods
.method protected parseResult(Landroid/os/AsyncResult;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 56
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 58
    .local v0, "result":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 59
    .local v1, "channel":I
    const/4 v2, 0x0

    .line 60
    .local v2, "selectResponse":[B
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 61
    array-length v3, v0

    sub-int/2addr v3, v4

    new-array v2, v3, [B

    .line 62
    move v3, v4

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 63
    add-int/lit8 v5, v3, -0x1

    aget v6, v0, v3

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Landroid/telephony/IccOpenLogicalChannelResponse;

    invoke-direct {v3, v1, v4, v2}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    .end local v0    # "result":[I
    .end local v1    # "channel":I
    .end local v2    # "selectResponse":[B
    move-object v0, v3

    .line 68
    .local v0, "openChannelResp":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_2

    .line 69
    .end local v0    # "openChannelResp":Landroid/telephony/IccOpenLogicalChannelResponse;
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 70
    const-string v0, "OpenChan"

    const-string v1, "Empty response"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 73
    const-string v0, "OpenChan"

    const-string v1, "Exception"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_3
    const/4 v0, 0x4

    .line 77
    .local v0, "errorCode":I
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_5

    .line 78
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 79
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 80
    .local v1, "error":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_4

    .line 81
    const/4 v0, 0x2

    goto :goto_1

    .line 82
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_5

    .line 83
    const/4 v0, 0x3

    .line 86
    .end local v1    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    new-instance v1, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    .end local v0    # "errorCode":I
    move-object v0, v1

    .line 90
    .local v0, "openChannelResp":Landroid/telephony/IccOpenLogicalChannelResponse;
    :goto_2
    const-string v1, "OpenChan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v0
.end method

.method protected bridge synthetic parseResult(Landroid/os/AsyncResult;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->parseResult(Landroid/os/AsyncResult;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->sendRequestMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected sendRequestMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    .line 49
    return-void
.end method
