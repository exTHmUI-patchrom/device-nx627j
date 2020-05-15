.class Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.source "CloseLogicalChannelInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CloseChan"


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 41
    return-void
.end method


# virtual methods
.method protected parseResult(Landroid/os/AsyncResult;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 51
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "CloseChan"

    const-string v1, "CommandException"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    :cond_1
    const-string v0, "CloseChan"

    const-string v1, "Unknown exception"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseResult(Landroid/os/AsyncResult;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->parseResult(Landroid/os/AsyncResult;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected sendRequestMessage(Ljava/lang/Integer;Landroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/Integer;
    .param p2, "msg"    # Landroid/os/Message;

    .line 45
    const-string v0, "CloseChan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 47
    return-void
.end method

.method protected bridge synthetic sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->sendRequestMessage(Ljava/lang/Integer;Landroid/os/Message;)V

    return-void
.end method
