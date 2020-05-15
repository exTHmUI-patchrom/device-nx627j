.class public abstract Lnubia/hardware/IBreathingLightManager$Stub;
.super Landroid/os/Binder;
.source "IBreathingLightManager.java"

# interfaces
.implements Lnubia/hardware/IBreathingLightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/hardware/IBreathingLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/hardware/IBreathingLightManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.hardware.IBreathingLightManager"

.field static final TRANSACTION_requestBreathingLight:I = 0x1

.field static final TRANSACTION_requestBreathingLightExt:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "nubia.hardware.IBreathingLightManager"

    invoke-virtual {p0, p0, v0}, Lnubia/hardware/IBreathingLightManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/hardware/IBreathingLightManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "nubia.hardware.IBreathingLightManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/hardware/IBreathingLightManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lnubia/hardware/IBreathingLightManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lnubia/hardware/IBreathingLightManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/hardware/IBreathingLightManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 39
    const-string v2, "nubia.hardware.IBreathingLightManager"

    .line 40
    .local v2, "descriptor":Ljava/lang/String;
    const v3, 0x5f4e5446

    const/4 v4, 0x1

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 75
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 58
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 62
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 64
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 66
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 68
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 69
    .local v14, "_arg4":I
    move-object v5, p0

    move v6, v3

    move v7, v11

    move v8, v12

    move v9, v13

    move v10, v14

    invoke-virtual/range {v5 .. v10}, Lnubia/hardware/IBreathingLightManager$Stub;->requestBreathingLightExt(IIIII)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v4

    .line 49
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    .restart local v3    # "_arg0":I
    move-object v5, p0

    invoke-virtual {v5, v3}, Lnubia/hardware/IBreathingLightManager$Stub;->requestBreathingLight(I)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v4

    .line 44
    .end local v3    # "_arg0":I
    :cond_0
    move-object v5, p0

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
