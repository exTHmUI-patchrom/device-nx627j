.class Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppTransitionAnimationSpecsFuture.java"

# interfaces
.implements Landroid/view/IAppTransitionAnimationSpecsFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 71
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public get()[Landroid/view/AppTransitionAnimationSpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 83
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 86
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.view.IAppTransitionAnimationSpecsFuture"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 89
    sget-object v2, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/AppTransitionAnimationSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .local v2, "_result":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    nop

    .line 93
    nop

    .line 95
    return-object v2

    .line 92
    .end local v2    # "_result":[Landroid/view/AppTransitionAnimationSpec;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "android.view.IAppTransitionAnimationSpecsFuture"

    return-object v0
.end method
