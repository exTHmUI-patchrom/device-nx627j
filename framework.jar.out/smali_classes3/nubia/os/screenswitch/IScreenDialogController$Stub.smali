.class public abstract Lnubia/os/screenswitch/IScreenDialogController$Stub;
.super Landroid/os/Binder;
.source "IScreenDialogController.java"

# interfaces
.implements Lnubia/os/screenswitch/IScreenDialogController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/screenswitch/IScreenDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/screenswitch/IScreenDialogController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.screenswitch.IScreenDialogController"

.field static final TRANSACTION_closeDoubleFPAnim:I = 0x4

.field static final TRANSACTION_dismiss:I = 0x2

.field static final TRANSACTION_displayDialog:I = 0x1

.field static final TRANSACTION_noteSwitchScreenTo:I = 0x6

.field static final TRANSACTION_openHeadsUp:I = 0x5

.field static final TRANSACTION_showDoubleFPAnim:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "nubia.os.screenswitch.IScreenDialogController"

    invoke-virtual {p0, p0, v0}, Lnubia/os/screenswitch/IScreenDialogController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenDialogController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "nubia.os.screenswitch.IScreenDialogController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/screenswitch/IScreenDialogController;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lnubia/os/screenswitch/IScreenDialogController;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lnubia/os/screenswitch/IScreenDialogController$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/os/screenswitch/IScreenDialogController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "nubia.os.screenswitch.IScreenDialogController"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 87
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenDialogController$Stub;->noteSwitchScreenTo(I)V

    .line 91
    return v2

    .line 81
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lnubia/os/screenswitch/IScreenDialogController$Stub;->openHeadsUp()V

    .line 83
    return v2

    .line 75
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lnubia/os/screenswitch/IScreenDialogController$Stub;->closeDoubleFPAnim()V

    .line 77
    return v2

    .line 67
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 70
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenDialogController$Stub;->showDoubleFPAnim(Z)V

    .line 71
    return v2

    .line 57
    .end local v1    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    nop

    .line 62
    .local v1, "_arg1":Z
    :cond_1
    invoke-virtual {p0, v3, v1}, Lnubia/os/screenswitch/IScreenDialogController$Stub;->dismiss(IZ)V

    .line 63
    return v2

    .line 49
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenDialogController$Stub;->displayDialog(I)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_arg0":I
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
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
