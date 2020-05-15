.class public abstract Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.super Ljava/lang/Object;
.source "AsyncMessageInvocation.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Ljava/lang/Object;",
        "Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    .local p0, "this":Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<TRequest;TResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 53
    .local p0, "this":Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<TRequest;TResponse;>;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 54
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    .line 57
    .local v1, "resultCallback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<TResponse;>;"
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;->parseResult(Landroid/os/AsyncResult;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    .line 61
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public final invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TResponse;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<TRequest;TResponse;>;"
    .local p1, "request":Ljava/lang/Object;, "TRequest;"
    .local p2, "resultCallback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<TResponse;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 47
    .local v0, "h":Landroid/os/Handler;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;->sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V

    .line 48
    return-void
.end method

.method protected abstract parseResult(Landroid/os/AsyncResult;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncResult;",
            ")TResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected abstract sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method
