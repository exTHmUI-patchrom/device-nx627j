.class public final Landroid/service/autofill/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCalled:Z

.field private final mRequestId:I


# direct methods
.method public constructor <init>(Landroid/service/autofill/IFillCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/service/autofill/IFillCallback;
    .param p2, "requestId"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    .line 38
    iput p2, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    .line 39
    return-void
.end method

.method private assertNotCalled()V
    .locals 2

    .line 104
    iget-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 94
    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    iget v1, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-interface {v0, v1, p1}, Landroid/service/autofill/IFillCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 1
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .line 58
    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget v0, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 66
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
