.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;
.super Landroid/telephony/mbms/DownloadStatusListener;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VendorDownloadStatusListener"
.end annotation


# instance fields
.field private final mListener:Landroid/telephony/mbms/IDownloadStatusListener;


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/IDownloadStatusListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/mbms/IDownloadStatusListener;

    .line 58
    invoke-direct {p0}, Landroid/telephony/mbms/DownloadStatusListener;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;->mListener:Landroid/telephony/mbms/IDownloadStatusListener;

    .line 60
    return-void
.end method


# virtual methods
.method protected abstract onRemoteException(Landroid/os/RemoteException;)V
.end method

.method public onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 1
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "state"    # I

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;->mListener:Landroid/telephony/mbms/IDownloadStatusListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/mbms/IDownloadStatusListener;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;->onRemoteException(Landroid/os/RemoteException;)V

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
