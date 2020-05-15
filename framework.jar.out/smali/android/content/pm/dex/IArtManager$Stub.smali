.class public abstract Landroid/content/pm/dex/IArtManager$Stub;
.super Landroid/os/Binder;
.source "IArtManager.java"

# interfaces
.implements Landroid/content/pm/dex/IArtManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dex/IArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dex/IArtManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.dex.IArtManager"

.field static final TRANSACTION_isRuntimeProfilingEnabled:I = 0x2

.field static final TRANSACTION_snapshotRuntimeProfile:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.content.pm.dex.IArtManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/dex/IArtManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/dex/IArtManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.content.pm.dex.IArtManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/dex/IArtManager;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/content/pm/dex/IArtManager;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/content/pm/dex/IArtManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/dex/IArtManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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

    move-object/from16 v2, p3

    .line 43
    const-string v3, "android.content.pm.dex.IArtManager"

    .line 44
    .local v3, "descriptor":Ljava/lang/String;
    const v4, 0x5f4e5446

    const/4 v5, 0x1

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 82
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 70
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 74
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v13, p0

    invoke-virtual {v13, v4, v6}, Landroid/content/pm/dex/IArtManager$Stub;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v7

    .line 76
    .local v7, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v5

    .line 53
    .end local v4    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :pswitch_1
    move-object/from16 v13, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 59
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 61
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    move-result-object v15

    .line 63
    .local v15, "_arg3":Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 64
    .local v16, "_arg4":Ljava/lang/String;
    move-object v7, v13

    move v8, v4

    move-object v9, v6

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/dex/IArtManager$Stub;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v5

    .line 48
    .end local v4    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .end local v16    # "_arg4":Ljava/lang/String;
    :cond_0
    move-object/from16 v13, p0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
