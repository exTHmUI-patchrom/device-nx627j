.class public abstract Lnubia/os/ISystemAccess$Stub;
.super Landroid/os/Binder;
.source "ISystemAccess.java"

# interfaces
.implements Lnubia/os/ISystemAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/ISystemAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/ISystemAccess$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.ISystemAccess"

.field static final TRANSACTION_enablePalmGesture:I = 0x2

.field static final TRANSACTION_enableWakeGesture:I = 0x1

.field static final TRANSACTION_getFactoryFlag:I = 0x5

.field static final TRANSACTION_isHomeKeyDisabled:I = 0x7

.field static final TRANSACTION_setFactoryFlag:I = 0x4

.field static final TRANSACTION_setFactoryFlagTimeOut:I = 0x3

.field static final TRANSACTION_setHomeKeyDisabled:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "nubia.os.ISystemAccess"

    invoke-virtual {p0, p0, v0}, Lnubia/os/ISystemAccess$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/ISystemAccess;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "nubia.os.ISystemAccess"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/ISystemAccess;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lnubia/os/ISystemAccess;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lnubia/os/ISystemAccess$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/os/ISystemAccess$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
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

    .line 43
    const-string v0, "nubia.os.ISystemAccess"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 118
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lnubia/os/ISystemAccess$Stub;->isHomeKeyDisabled()Z

    move-result v1

    .line 120
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return v2

    .line 107
    .end local v1    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 111
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    nop

    .line 112
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v3, v1}, Lnubia/os/ISystemAccess$Stub;->setHomeKeyDisabled(Landroid/os/IBinder;Z)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v2

    .line 97
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/ISystemAccess$Stub;->getFactoryFlag(I)Z

    move-result v3

    .line 101
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return v2

    .line 86
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 90
    .local v3, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    nop

    .line 91
    .local v1, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v3, v1}, Lnubia/os/ISystemAccess$Stub;->setFactoryFlag(ZZ)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v2

    .line 73
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 77
    .restart local v3    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    nop

    .line 79
    .restart local v1    # "_arg1":Z
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 80
    .local v4, "_arg2":I
    invoke-virtual {p0, v3, v1, v4}, Lnubia/os/ISystemAccess$Stub;->setFactoryFlagTimeOut(ZZI)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v2

    .line 63
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    nop

    .line 66
    .local v1, "_arg0":Z
    :cond_5
    invoke-virtual {p0, v1}, Lnubia/os/ISystemAccess$Stub;->enablePalmGesture(Z)Z

    move-result v3

    .line 67
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v2

    .line 53
    .end local v1    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    nop

    .line 56
    .restart local v1    # "_arg0":Z
    :cond_6
    invoke-virtual {p0, v1}, Lnubia/os/ISystemAccess$Stub;->enableWakeGesture(Z)Z

    move-result v3

    .line 57
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return v2

    .line 48
    .end local v1    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
