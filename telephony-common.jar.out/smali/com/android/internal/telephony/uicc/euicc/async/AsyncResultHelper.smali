.class public final Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;
.super Ljava/lang/Object;
.source "AsyncResultHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 37
    .local p0, "result":Ljava/lang/Object;, "TT;"
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<TT;>;"
    if-nez p2, :cond_0

    .line 38
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    :goto_0
    return-void
.end method

.method public static throwException(Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "*>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 57
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<*>;"
    if-nez p2, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$2;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$2;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :goto_0
    return-void
.end method
