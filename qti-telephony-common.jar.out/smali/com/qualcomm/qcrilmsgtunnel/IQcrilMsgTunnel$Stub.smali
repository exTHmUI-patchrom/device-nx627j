.class public abstract Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;
.super Landroid/os/Binder;
.source "IQcrilMsgTunnel.java"

# interfaces
.implements Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

.field static final TRANSACTION_sendOemRilRequestRaw:I = 0x1

.field static final TRANSACTION_sendOemRilRequestRawAsync:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 69
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 73
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/IOemHookCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilhook/IOemHookCallback;

    move-result-object v3

    .line 75
    .local v3, "_arg1":Lcom/qualcomm/qcrilhook/IOemHookCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 76
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v2

    .line 48
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":Lcom/qualcomm/qcrilhook/IOemHookCallback;
    .end local v4    # "_arg2":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 52
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 53
    .local v3, "_arg1_length":I
    if-gez v3, :cond_0

    .line 54
    const/4 v4, 0x0

    .local v4, "_arg1":[B
    goto :goto_0

    .line 57
    .end local v4    # "_arg1":[B
    :cond_0
    new-array v4, v3, [B

    .line 60
    .restart local v4    # "_arg1":[B
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 61
    .local v5, "_arg2":I
    invoke-virtual {p0, v1, v4, v5}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->sendOemRilRequestRaw([B[BI)I

    move-result v6

    .line 62
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 65
    return v2

    .line 43
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":I
    .end local v6    # "_result":I
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
