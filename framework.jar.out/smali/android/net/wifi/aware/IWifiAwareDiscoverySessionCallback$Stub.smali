.class public abstract Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareDiscoverySessionCallback.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

.field static final TRANSACTION_onMatch:I = 0x5

.field static final TRANSACTION_onMatchWithDistance:I = 0x6

.field static final TRANSACTION_onMessageReceived:I = 0x9

.field static final TRANSACTION_onMessageSendFail:I = 0x8

.field static final TRANSACTION_onMessageSendSuccess:I = 0x7

.field static final TRANSACTION_onSessionConfigFail:I = 0x3

.field static final TRANSACTION_onSessionConfigSuccess:I = 0x2

.field static final TRANSACTION_onSessionStarted:I = 0x1

.field static final TRANSACTION_onSessionTerminated:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-string v0, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 132
    .local v3, "_arg1":[B
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageReceived(I[B)V

    .line 133
    return v2

    .line 117
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageSendFail(II)V

    .line 123
    return v2

    .line 109
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageSendSuccess(I)V

    .line 113
    return v2

    .line 95
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 101
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 103
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 104
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMatchWithDistance(I[B[BI)V

    .line 105
    return v2

    .line 83
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 89
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 90
    .restart local v4    # "_arg2":[B
    invoke-virtual {p0, v1, v3, v4}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMatch(I[B[B)V

    .line 91
    return v2

    .line 75
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":[B
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionTerminated(I)V

    .line 79
    return v2

    .line 67
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionConfigFail(I)V

    .line 71
    return v2

    .line 61
    .end local v1    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionConfigSuccess()V

    .line 63
    return v2

    .line 53
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionStarted(I)V

    .line 57
    return v2

    .line 48
    .end local v1    # "_arg0":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
