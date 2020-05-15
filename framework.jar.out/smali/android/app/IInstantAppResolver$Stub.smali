.class public abstract Landroid/app/IInstantAppResolver$Stub;
.super Landroid/os/Binder;
.source "IInstantAppResolver.java"

# interfaces
.implements Landroid/app/IInstantAppResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IInstantAppResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IInstantAppResolver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IInstantAppResolver"

.field static final TRANSACTION_getInstantAppIntentFilterList:I = 0x2

.field static final TRANSACTION_getInstantAppResolveInfoList:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.IInstantAppResolver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IInstantAppResolver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IInstantAppResolver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.app.IInstantAppResolver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IInstantAppResolver;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/app/IInstantAppResolver;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/app/IInstantAppResolver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IInstantAppResolver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v2, "android.app.IInstantAppResolver"

    .line 40
    .local v2, "descriptor":Ljava/lang/String;
    const v3, 0x5f4e5446

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 70
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .local v3, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 76
    .end local v3    # "_arg0":Landroid/content/Intent;
    :cond_0
    nop

    .line 79
    .restart local v3    # "_arg0":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 81
    .local v5, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v7

    .line 84
    .local v7, "_arg3":Landroid/os/IRemoteCallback;
    move-object v14, p0

    invoke-virtual {v14, v3, v5, v6, v7}, Landroid/app/IInstantAppResolver$Stub;->getInstantAppIntentFilterList(Landroid/content/Intent;[ILjava/lang/String;Landroid/os/IRemoteCallback;)V

    .line 85
    return v4

    .line 49
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v5    # "_arg1":[I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Landroid/os/IRemoteCallback;
    :pswitch_1
    move-object v14, p0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 55
    .local v9, "_arg0":Landroid/content/Intent;
    :goto_1
    move-object v9, v3

    goto :goto_2

    .end local v9    # "_arg0":Landroid/content/Intent;
    :cond_1
    goto :goto_1

    .line 58
    .restart local v9    # "_arg0":Landroid/content/Intent;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 60
    .local v3, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 64
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v7

    .line 65
    .local v7, "_arg4":Landroid/os/IRemoteCallback;
    move-object v8, v14

    move-object v10, v3

    move-object v11, v5

    move v12, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/app/IInstantAppResolver$Stub;->getInstantAppResolveInfoList(Landroid/content/Intent;[ILjava/lang/String;ILandroid/os/IRemoteCallback;)V

    .line 66
    return v4

    .line 44
    .end local v3    # "_arg1":[I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/os/IRemoteCallback;
    .end local v9    # "_arg0":Landroid/content/Intent;
    :cond_2
    move-object v14, p0

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
