.class final Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;
.super Lcom/android/server/autofill/RemoteFillService$PendingRequest;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingSaveRequest"
.end annotation


# instance fields
.field private final mCallback:Landroid/service/autofill/ISaveCallback;

.field private final mRequest:Landroid/service/autofill/SaveRequest;


# direct methods
.method public constructor <init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V
    .locals 1
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;
    .param p2, "service"    # Lcom/android/server/autofill/RemoteFillService;

    .line 629
    invoke-direct {p0, p2}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    .line 630
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mRequest:Landroid/service/autofill/SaveRequest;

    .line 632
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mCallback:Landroid/service/autofill/ISaveCallback;

    .line 655
    return-void
.end method


# virtual methods
.method public isFinal()Z
    .locals 1

    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 1
    .param p1, "remoteService"    # Lcom/android/server/autofill/RemoteFillService;

    .line 659
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/server/autofill/RemoteFillService;->access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    .line 660
    return-void
.end method

.method public run()V
    .locals 4

    .line 664
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 665
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_0

    .line 667
    :try_start_0
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mRequest:Landroid/service/autofill/SaveRequest;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v1, v2, v3}, Landroid/service/autofill/IAutoFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteFillService"

    const-string v3, "Error calling on save request"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/android/server/autofill/RemoteFillService;->access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    .line 674
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
