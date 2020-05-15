.class public interface abstract Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;
.super Ljava/lang/Object;
.source "IHidlConnectionInterface.java"


# virtual methods
.method public abstract disable5g(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enable5g(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enable5gOnly(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableEndc(IZ)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract query5gConfigInfo(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract query5gStatus(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryEndcStatus(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryNrBearerAllocation(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryNrDcParam(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryNrIconType(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryNrSignalStrength(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryUpperLayerIndInfo(I)Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
.end method

.method public abstract unRegisterCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
.end method
