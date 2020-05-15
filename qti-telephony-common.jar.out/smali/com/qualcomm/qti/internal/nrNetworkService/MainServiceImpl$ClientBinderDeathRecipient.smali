.class Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;
.super Ljava/lang/Object;
.source "MainServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientBinderDeathRecipient"
.end annotation


# instance fields
.field mCallback:Lorg/codeaurora/internal/INetworkCallback;

.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 3
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p2, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 497
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registering for client cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-interface {p2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " death notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iput-object p2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    .line 501
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 505
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-interface {v2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-interface {v0}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 509
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->unRegisterCallback(Lorg/codeaurora/internal/INetworkCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_0

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MainServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while unregistering callback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    .line 515
    invoke-interface {v4}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
