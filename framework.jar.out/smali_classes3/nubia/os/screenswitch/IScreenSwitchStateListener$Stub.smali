.class public abstract Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub;
.super Landroid/os/Binder;
.source "IScreenSwitchStateListener.java"

# interfaces
.implements Lnubia/os/screenswitch/IScreenSwitchStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/screenswitch/IScreenSwitchStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.screenswitch.IScreenSwitchStateListener"

.field static final TRANSACTION_onActivityResume:I = 0x5

.field static final TRANSACTION_onCameraUsing:I = 0x3

.field static final TRANSACTION_onDialogHide:I = 0x2

.field static final TRANSACTION_onDialogShown:I = 0x1

.field static final TRANSACTION_onInCalling:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "nubia.os.screenswitch.IScreenSwitchStateListener"

    invoke-virtual {p0, p0, v0}, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenSwitchStateListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "nubia.os.screenswitch.IScreenSwitchStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/screenswitch/IScreenSwitchStateListener;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lnubia/os/screenswitch/IScreenSwitchStateListener;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "nubia.os.screenswitch.IScreenSwitchStateListener"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 83
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub;->onActivityResume(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return v2

    .line 75
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 78
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub;->onInCalling(Z)V

    .line 79
    return v2

    .line 65
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 69
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    nop

    .line 70
    .local v1, "_arg1":Z
    :cond_1
    invoke-virtual {p0, v3, v1}, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub;->onCameraUsing(IZ)V

    .line 71
    return v2

    .line 57
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub;->onDialogHide(I)V

    .line 61
    return v2

    .line 49
    .end local v1    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub;->onDialogShown(I)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_arg0":I
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method