.class public abstract Landroid/telephony/mbms/IDownloadProgressListener$Stub;
.super Landroid/os/Binder;
.source "IDownloadProgressListener.java"

# interfaces
.implements Landroid/telephony/mbms/IDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/IDownloadProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IDownloadProgressListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.IDownloadProgressListener"

.field static final TRANSACTION_onProgressUpdated:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.telephony.mbms.IDownloadProgressListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadProgressListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.telephony.mbms.IDownloadProgressListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/mbms/IDownloadProgressListener;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/IDownloadProgressListener;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/telephony/mbms/IDownloadProgressListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/IDownloadProgressListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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

    .line 42
    const-string v2, "android.telephony.mbms.IDownloadProgressListener"

    .line 43
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const v4, 0x5f4e5446

    if-eq v0, v4, :cond_0

    .line 81
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 47
    :cond_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v3

    .line 52
    :cond_1
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 55
    sget-object v5, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/mbms/DownloadRequest;

    .line 58
    .local v5, "_arg0":Landroid/telephony/mbms/DownloadRequest;
    move-object v8, v5

    goto :goto_0

    .end local v5    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_2
    move-object v8, v6

    .line 61
    .local v8, "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    sget-object v5, Landroid/telephony/mbms/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/telephony/mbms/FileInfo;

    .line 65
    .local v9, "_arg1":Landroid/telephony/mbms/FileInfo;
    :goto_1
    move-object v9, v6

    goto :goto_2

    .end local v9    # "_arg1":Landroid/telephony/mbms/FileInfo;
    :cond_3
    goto :goto_1

    .line 68
    .restart local v9    # "_arg1":Landroid/telephony/mbms/FileInfo;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 70
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 72
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 74
    .local v14, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 75
    .local v15, "_arg5":I
    move-object/from16 v7, p0

    move v10, v5

    move v11, v6

    move v12, v14

    move v13, v15

    invoke-virtual/range {v7 .. v13}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v3
.end method
