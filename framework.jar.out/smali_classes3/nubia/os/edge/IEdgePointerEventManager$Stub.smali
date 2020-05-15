.class public abstract Lnubia/os/edge/IEdgePointerEventManager$Stub;
.super Landroid/os/Binder;
.source "IEdgePointerEventManager.java"

# interfaces
.implements Lnubia/os/edge/IEdgePointerEventManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/edge/IEdgePointerEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/edge/IEdgePointerEventManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.edge.IEdgePointerEventManager"

.field static final TRANSACTION_getEdgeDeviceWidth:I = 0x8

.field static final TRANSACTION_registerEdgePointerEventListener:I = 0x1

.field static final TRANSACTION_registerPointerEventListener:I = 0x3

.field static final TRANSACTION_setEdgeDeviceWidth:I = 0x7

.field static final TRANSACTION_unregisterEdgePointerEventListener:I = 0x2

.field static final TRANSACTION_unregisterPointerEventListener:I = 0x4

.field static final TRANSACTION_updateCZoneState:I = 0x6

.field static final TRANSACTION_updateTZoneState:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p0, p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "nubia.os.edge.IEdgePointerEventManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/edge/IEdgePointerEventManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lnubia/os/edge/IEdgePointerEventManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lnubia/os/edge/IEdgePointerEventManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/os/edge/IEdgePointerEventManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "nubia.os.edge.IEdgePointerEventManager"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->getEdgeDeviceWidth()I

    move-result v1

    .line 112
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v2

    .line 101
    .end local v1    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->setEdgeDeviceWidth(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    return v2

    .line 91
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 96
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->updateCZoneState(II)V

    .line 97
    return v2

    .line 81
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->updateTZoneState(II)V

    .line 87
    return v2

    .line 73
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/edge/IPointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IPointerEventListener;

    move-result-object v1

    .line 76
    .local v1, "_arg0":Lnubia/os/edge/IPointerEventListener;
    invoke-virtual {p0, v1}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->unregisterPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V

    .line 77
    return v2

    .line 65
    .end local v1    # "_arg0":Lnubia/os/edge/IPointerEventListener;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/edge/IPointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IPointerEventListener;

    move-result-object v1

    .line 68
    .restart local v1    # "_arg0":Lnubia/os/edge/IPointerEventListener;
    invoke-virtual {p0, v1}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->registerPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V

    .line 69
    return v2

    .line 57
    .end local v1    # "_arg0":Lnubia/os/edge/IPointerEventListener;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/edge/IEdgePointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventListener;

    move-result-object v1

    .line 60
    .local v1, "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    invoke-virtual {p0, v1}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    .line 61
    return v2

    .line 49
    .end local v1    # "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/edge/IEdgePointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventListener;

    move-result-object v1

    .line 52
    .restart local v1    # "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    invoke-virtual {p0, v1}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
