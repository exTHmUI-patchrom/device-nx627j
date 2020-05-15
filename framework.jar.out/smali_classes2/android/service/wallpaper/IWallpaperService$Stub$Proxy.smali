.class Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWallpaperService.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 86
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "connection"    # Landroid/service/wallpaper/IWallpaperConnection;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "windowType"    # I
    .param p4, "isPreview"    # Z
    .param p5, "reqWidth"    # I
    .param p6, "reqHeight"    # I
    .param p7, "padding"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.wallpaper.IWallpaperService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 102
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p7, :cond_1

    .line 107
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p7, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :goto_1
    iget-object v2, p0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    nop

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "android.service.wallpaper.IWallpaperService"

    return-object v0
.end method
