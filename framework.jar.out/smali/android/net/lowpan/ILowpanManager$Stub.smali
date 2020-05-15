.class public abstract Landroid/net/lowpan/ILowpanManager$Stub;
.super Landroid/os/Binder;
.source "ILowpanManager.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanManager"

.field static final TRANSACTION_addInterface:I = 0x5

.field static final TRANSACTION_addListener:I = 0x3

.field static final TRANSACTION_getInterface:I = 0x1

.field static final TRANSACTION_getInterfaceList:I = 0x2

.field static final TRANSACTION_removeInterface:I = 0x6

.field static final TRANSACTION_removeListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.net.lowpan.ILowpanManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/lowpan/ILowpanManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/net/lowpan/ILowpanManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "android.net.lowpan.ILowpanManager"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v1

    .line 97
    .local v1, "_arg0":Landroid/net/lowpan/ILowpanInterface;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanManager$Stub;->removeInterface(Landroid/net/lowpan/ILowpanInterface;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    return v2

    .line 85
    .end local v1    # "_arg0":Landroid/net/lowpan/ILowpanInterface;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v1

    .line 88
    .restart local v1    # "_arg0":Landroid/net/lowpan/ILowpanInterface;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanManager$Stub;->addInterface(Landroid/net/lowpan/ILowpanInterface;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v2

    .line 76
    .end local v1    # "_arg0":Landroid/net/lowpan/ILowpanInterface;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/lowpan/ILowpanManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManagerListener;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanManager$Stub;->removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v2

    .line 67
    .end local v1    # "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/lowpan/ILowpanManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManagerListener;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanManager$Stub;->addListener(Landroid/net/lowpan/ILowpanManagerListener;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v2

    .line 59
    .end local v1    # "_arg0":Landroid/net/lowpan/ILowpanManagerListener;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanManager$Stub;->getInterfaceList()[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 63
    return v2

    .line 49
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanManager$Stub;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v3

    .line 53
    .local v3, "_result":Landroid/net/lowpan/ILowpanInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 55
    return v2

    .line 44
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/lowpan/ILowpanInterface;
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
