.class public abstract Landroid/net/lowpan/ILowpanNetScanCallback$Stub;
.super Landroid/os/Binder;
.source "ILowpanNetScanCallback.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanNetScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanNetScanCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanNetScanCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanNetScanCallback"

.field static final TRANSACTION_onNetScanBeacon:I = 0x1

.field static final TRANSACTION_onNetScanFinished:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.lowpan.ILowpanNetScanCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanNetScanCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.net.lowpan.ILowpanNetScanCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/lowpan/ILowpanNetScanCallback;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanNetScanCallback;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/net/lowpan/ILowpanNetScanCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "android.net.lowpan.ILowpanNetScanCallback"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;->onNetScanFinished()V

    .line 64
    return v2

    .line 49
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/LowpanBeaconInfo;

    .local v1, "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    goto :goto_0

    .line 55
    .end local v1    # "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    :cond_0
    const/4 v1, 0x0

    .line 57
    .restart local v1    # "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;->onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V

    .line 58
    return v2

    .line 44
    .end local v1    # "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
