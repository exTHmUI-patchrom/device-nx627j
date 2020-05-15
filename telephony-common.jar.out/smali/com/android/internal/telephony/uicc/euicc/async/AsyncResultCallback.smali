.class public abstract Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.super Ljava/lang/Object;
.source "AsyncResultCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AsyncResultCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 50
    .local p0, "this":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<TResult;>;"
    const-string v0, "AsyncResultCallback"

    const-string v1, "Error in onException"

    invoke-static {v0, v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-void
.end method

.method public abstract onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method
