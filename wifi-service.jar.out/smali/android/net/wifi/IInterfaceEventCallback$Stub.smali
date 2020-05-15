.class public abstract Landroid/net/wifi/IInterfaceEventCallback$Stub;
.super Landroid/os/Binder;
.source "IInterfaceEventCallback.java"

# interfaces
.implements Landroid/net/wifi/IInterfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IInterfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IInterfaceEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IInterfaceEventCallback"

.field static final TRANSACTION_OnApInterfaceReady:I = 0x2

.field static final TRANSACTION_OnApTorndownEvent:I = 0x4

.field static final TRANSACTION_OnClientInterfaceReady:I = 0x1

.field static final TRANSACTION_OnClientTorndownEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.net.wifi.IInterfaceEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IInterfaceEventCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "android.net.wifi.IInterfaceEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IInterfaceEventCallback;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IInterfaceEventCallback;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Landroid/net/wifi/IInterfaceEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IInterfaceEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
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

    .line 40
    const-string v0, "android.net.wifi.IInterfaceEventCallback"

    .line 41
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 74
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IApInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IApInterface;

    move-result-object v1

    .line 77
    .local v1, "_arg0":Landroid/net/wifi/IApInterface;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->OnApTorndownEvent(Landroid/net/wifi/IApInterface;)V

    .line 78
    return v2

    .line 66
    .end local v1    # "_arg0":Landroid/net/wifi/IApInterface;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IClientInterface;

    move-result-object v1

    .line 69
    .local v1, "_arg0":Landroid/net/wifi/IClientInterface;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->OnClientTorndownEvent(Landroid/net/wifi/IClientInterface;)V

    .line 70
    return v2

    .line 58
    .end local v1    # "_arg0":Landroid/net/wifi/IClientInterface;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IApInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IApInterface;

    move-result-object v1

    .line 61
    .local v1, "_arg0":Landroid/net/wifi/IApInterface;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->OnApInterfaceReady(Landroid/net/wifi/IApInterface;)V

    .line 62
    return v2

    .line 50
    .end local v1    # "_arg0":Landroid/net/wifi/IApInterface;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IClientInterface;

    move-result-object v1

    .line 53
    .local v1, "_arg0":Landroid/net/wifi/IClientInterface;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->OnClientInterfaceReady(Landroid/net/wifi/IClientInterface;)V

    .line 54
    return v2

    .line 45
    .end local v1    # "_arg0":Landroid/net/wifi/IClientInterface;
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
