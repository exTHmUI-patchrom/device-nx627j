.class public abstract Lnubia/os/screenswitch/IScreenSwitchManager$Stub;
.super Landroid/os/Binder;
.source "IScreenSwitchManager.java"

# interfaces
.implements Lnubia/os/screenswitch/IScreenSwitchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/screenswitch/IScreenSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/screenswitch/IScreenSwitchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.screenswitch.IScreenSwitchManager"

.field static final TRANSACTION_getCurrentDisplayId:I = 0x3

.field static final TRANSACTION_noteScreenState:I = 0xc

.field static final TRANSACTION_noteScreenStateChanged:I = 0x8

.field static final TRANSACTION_notifyHeadsUpShowing:I = 0xe

.field static final TRANSACTION_registerStateListener:I = 0x4

.field static final TRANSACTION_registerSwtichCallBack:I = 0x9

.field static final TRANSACTION_reportCallBackComplete:I = 0xb

.field static final TRANSACTION_requestSwitchScreen:I = 0x2

.field static final TRANSACTION_resetSkipSwitchTask:I = 0xd

.field static final TRANSACTION_setDialogController:I = 0x6

.field static final TRANSACTION_setDialogVisibilityChanged:I = 0x7

.field static final TRANSACTION_switchScreen:I = 0x1

.field static final TRANSACTION_unRegisterStateListener:I = 0x5

.field static final TRANSACTION_unregisterSwtichCallBack:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "nubia.os.screenswitch.IScreenSwitchManager"

    invoke-virtual {p0, p0, v0}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenSwitchManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "nubia.os.screenswitch.IScreenSwitchManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lnubia/os/screenswitch/IScreenSwitchManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lnubia/os/screenswitch/IScreenSwitchManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
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

    .line 39
    const-string v0, "nubia.os.screenswitch.IScreenSwitchManager"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 159
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 162
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->notifyHeadsUpShowing(Z)V

    .line 163
    return v2

    .line 153
    .end local v1    # "_arg0":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->resetSkipSwitchTask()V

    .line 155
    return v2

    .line 145
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->noteScreenState(I)V

    .line 149
    return v2

    .line 135
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/screenswitch/IScreenSwitchCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenSwitchCallback;

    move-result-object v1

    .line 139
    .local v1, "_arg0":Lnubia/os/screenswitch/IScreenSwitchCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->reportCallBackComplete(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V

    .line 141
    return v2

    .line 125
    .end local v1    # "_arg0":Lnubia/os/screenswitch/IScreenSwitchCallback;
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/screenswitch/IScreenSwitchCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenSwitchCallback;

    move-result-object v1

    .line 129
    .restart local v1    # "_arg0":Lnubia/os/screenswitch/IScreenSwitchCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->unregisterSwtichCallBack(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V

    .line 131
    return v2

    .line 115
    .end local v1    # "_arg0":Lnubia/os/screenswitch/IScreenSwitchCallback;
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/screenswitch/IScreenSwitchCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenSwitchCallback;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg0":Lnubia/os/screenswitch/IScreenSwitchCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 120
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->registerSwtichCallBack(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V

    .line 121
    return v2

    .line 107
    .end local v1    # "_arg0":Lnubia/os/screenswitch/IScreenSwitchCallback;
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->noteScreenStateChanged(I)V

    .line 111
    return v2

    .line 97
    .end local v1    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->setDialogVisibilityChanged(II)V

    .line 103
    return v2

    .line 89
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/screenswitch/IScreenDialogController$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenDialogController;

    move-result-object v1

    .line 92
    .local v1, "_arg0":Lnubia/os/screenswitch/IScreenDialogController;
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->setDialogController(Lnubia/os/screenswitch/IScreenDialogController;)V

    .line 93
    return v2

    .line 81
    .end local v1    # "_arg0":Lnubia/os/screenswitch/IScreenDialogController;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenSwitchStateListener;

    move-result-object v1

    .line 84
    .local v1, "_arg0":Lnubia/os/screenswitch/IScreenSwitchStateListener;
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->unRegisterStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V

    .line 85
    return v2

    .line 73
    .end local v1    # "_arg0":Lnubia/os/screenswitch/IScreenSwitchStateListener;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/screenswitch/IScreenSwitchStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenSwitchStateListener;

    move-result-object v1

    .line 76
    .restart local v1    # "_arg0":Lnubia/os/screenswitch/IScreenSwitchStateListener;
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->registerStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V

    .line 77
    return v2

    .line 65
    .end local v1    # "_arg0":Lnubia/os/screenswitch/IScreenSwitchStateListener;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->getCurrentDisplayId()I

    move-result v1

    .line 67
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v2

    .line 57
    .end local v1    # "_result":I
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->requestSwitchScreen(I)V

    .line 61
    return v2

    .line 49
    .end local v1    # "_arg0":I
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->switchScreen(I)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_arg0":I
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
