.class public abstract Lnubia/os/IFreezeCallback$Stub;
.super Landroid/os/Binder;
.source "IFreezeCallback.java"

# interfaces
.implements Lnubia/os/IFreezeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/IFreezeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/IFreezeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.IFreezeCallback"

.field static final TRANSACTION_getProcessStatus:I = 0x3

.field static final TRANSACTION_scheduleDeepFreeze:I = 0x6

.field static final TRANSACTION_scheduleEnterDoze:I = 0x4

.field static final TRANSACTION_scheduleFreeze:I = 0x1

.field static final TRANSACTION_scheduleLeaveDoze:I = 0x5

.field static final TRANSACTION_scheduleUnfreeze:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "nubia.os.IFreezeCallback"

    invoke-virtual {p0, p0, v0}, Lnubia/os/IFreezeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/IFreezeCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "nubia.os.IFreezeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/IFreezeCallback;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lnubia/os/IFreezeCallback;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lnubia/os/IFreezeCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/os/IFreezeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const-string v0, "nubia.os.IFreezeCallback"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 91
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/IFreezeCallback$Stub;->scheduleDeepFreeze(I)V

    .line 95
    return v2

    .line 83
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/IFreezeCallback$Stub;->scheduleLeaveDoze(I)V

    .line 87
    return v2

    .line 75
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/IFreezeCallback$Stub;->scheduleEnterDoze(I)V

    .line 79
    return v2

    .line 69
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lnubia/os/IFreezeCallback$Stub;->getProcessStatus()V

    .line 71
    return v2

    .line 59
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 64
    .local v3, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v1, v3}, Lnubia/os/IFreezeCallback$Stub;->scheduleUnfreeze(IZ)V

    .line 65
    return v2

    .line 51
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/IFreezeCallback$Stub;->scheduleFreeze(I)V

    .line 55
    return v2

    .line 46
    .end local v1    # "_arg0":I
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

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
