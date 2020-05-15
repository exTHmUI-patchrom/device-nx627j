.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;
.super Landroid/telephony/mbms/DownloadProgressListener;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VendorDownloadProgressListener"
.end annotation


# instance fields
.field private final mListener:Landroid/telephony/mbms/IDownloadProgressListener;


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/IDownloadProgressListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;

    .line 78
    invoke-direct {p0}, Landroid/telephony/mbms/DownloadProgressListener;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->mListener:Landroid/telephony/mbms/IDownloadProgressListener;

    .line 80
    return-void
.end method


# virtual methods
.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .locals 7
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "currentDownloadSize"    # I
    .param p4, "fullDownloadSize"    # I
    .param p5, "currentDecodedSize"    # I
    .param p6, "fullDecodedSize"    # I

    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->mListener:Landroid/telephony/mbms/IDownloadProgressListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/telephony/mbms/IDownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->onRemoteException(Landroid/os/RemoteException;)V

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected abstract onRemoteException(Landroid/os/RemoteException;)V
.end method
