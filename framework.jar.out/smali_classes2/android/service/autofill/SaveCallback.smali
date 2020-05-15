.class public final Landroid/service/autofill/SaveCallback;
.super Ljava/lang/Object;
.source "SaveCallback.java"


# instance fields
.field private final mCallback:Landroid/service/autofill/ISaveCallback;

.field private mCalled:Z


# direct methods
.method constructor <init>(Landroid/service/autofill/ISaveCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/autofill/ISaveCallback;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    .line 38
    return-void
.end method

.method private assertNotCalled()V
    .locals 2

    .line 113
    iget-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onSuccessInternal(Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 73
    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    .line 76
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/ISaveCallback;->onSuccess(Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 103
    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/ISaveCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/autofill/SaveCallback;->onSuccessInternal(Landroid/content/IntentSender;)V

    .line 50
    return-void
.end method

.method public onSuccess(Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 69
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    invoke-direct {p0, v0}, Landroid/service/autofill/SaveCallback;->onSuccessInternal(Landroid/content/IntentSender;)V

    .line 70
    return-void
.end method
