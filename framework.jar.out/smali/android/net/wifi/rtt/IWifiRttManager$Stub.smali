.class public abstract Landroid/net/wifi/rtt/IWifiRttManager$Stub;
.super Landroid/os/Binder;
.source "IWifiRttManager.java"

# interfaces
.implements Landroid/net/wifi/rtt/IWifiRttManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/IWifiRttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/IWifiRttManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.rtt.IWifiRttManager"

.field static final TRANSACTION_cancelRanging:I = 0x3

.field static final TRANSACTION_isAvailable:I = 0x1

.field static final TRANSACTION_startRanging:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.net.wifi.rtt.IWifiRttManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/rtt/IWifiRttManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.net.wifi.rtt.IWifiRttManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/rtt/IWifiRttManager;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/rtt/IWifiRttManager;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/net/wifi/rtt/IWifiRttManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/rtt/IWifiRttManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "android.net.wifi.rtt.IWifiRttManager"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 86
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .local v1, "_arg0":Landroid/os/WorkSource;
    goto :goto_0

    .line 92
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_0
    nop

    .line 94
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->cancelRanging(Landroid/os/WorkSource;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v2

    .line 59
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 63
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 69
    .local v3, "_arg2":Landroid/os/WorkSource;
    move-object v6, v3

    goto :goto_1

    .end local v3    # "_arg2":Landroid/os/WorkSource;
    :cond_1
    move-object v6, v1

    .line 72
    .local v6, "_arg2":Landroid/os/WorkSource;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    sget-object v1, Landroid/net/wifi/rtt/RangingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/rtt/RangingRequest;

    .line 76
    .local v7, "_arg3":Landroid/net/wifi/rtt/RangingRequest;
    :goto_2
    move-object v7, v1

    goto :goto_3

    .end local v7    # "_arg3":Landroid/net/wifi/rtt/RangingRequest;
    :cond_2
    goto :goto_2

    .line 79
    .restart local v7    # "_arg3":Landroid/net/wifi/rtt/RangingRequest;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/rtt/IRttCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/rtt/IRttCallback;

    move-result-object v1

    .line 80
    .local v1, "_arg4":Landroid/net/wifi/rtt/IRttCallback;
    move-object v3, p0

    move-object v4, v9

    move-object v5, v10

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->startRanging(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v2

    .line 51
    .end local v1    # "_arg4":Landroid/net/wifi/rtt/IRttCallback;
    .end local v6    # "_arg2":Landroid/os/WorkSource;
    .end local v7    # "_arg3":Landroid/net/wifi/rtt/RangingRequest;
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->isAvailable()Z

    move-result v1

    .line 53
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return v2

    .line 46
    .end local v1    # "_result":Z
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
