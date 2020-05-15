.class public abstract Landroid/app/IBackupAgent$Stub;
.super Landroid/os/Binder;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBackupAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IBackupAgent"

.field static final TRANSACTION_doBackup:I = 0x1

.field static final TRANSACTION_doFullBackup:I = 0x3

.field static final TRANSACTION_doMeasureFullBackup:I = 0x4

.field static final TRANSACTION_doQuotaExceeded:I = 0x5

.field static final TRANSACTION_doRestore:I = 0x2

.field static final TRANSACTION_doRestoreFile:I = 0x6

.field static final TRANSACTION_doRestoreFinished:I = 0x7

.field static final TRANSACTION_fail:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {p0, p0, v0}, Landroid/app/IBackupAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "android.app.IBackupAgent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IBackupAgent;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Landroid/app/IBackupAgent;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Landroid/app/IBackupAgent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IBackupAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    .line 45
    const-string v12, "android.app.IBackupAgent"

    .line 46
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v14, v0, :cond_7

    const/4 v0, 0x0

    packed-switch v14, :pswitch_data_0

    .line 208
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 200
    :pswitch_0
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Landroid/app/IBackupAgent$Stub;->fail(Ljava/lang/String;)V

    .line 204
    return v16

    .line 190
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 195
    .local v1, "_arg1":Landroid/app/backup/IBackupManager;
    invoke-virtual {v13, v0, v1}, Landroid/app/IBackupAgent$Stub;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 196
    return v16

    .line 161
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/backup/IBackupManager;
    :pswitch_2
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 167
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_0
    move-object v1, v0

    goto :goto_1

    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_0
    goto :goto_0

    .line 170
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 172
    .local v17, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 174
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 176
    .local v20, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 178
    .local v21, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 180
    .local v22, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 182
    .local v24, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 184
    .local v26, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v27

    .line 185
    .local v27, "_arg8":Landroid/app/backup/IBackupManager;
    move-object v0, v13

    move-wide/from16 v2, v17

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-wide/from16 v7, v22

    move-wide/from16 v9, v24

    move/from16 v11, v26

    move-object v14, v12

    move-object/from16 v12, v27

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v14, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v12}, Landroid/app/IBackupAgent$Stub;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    .line 186
    return v16

    .line 151
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg1":J
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v21    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg5":J
    .end local v24    # "_arg6":J
    .end local v26    # "_arg7":I
    .end local v27    # "_arg8":Landroid/app/backup/IBackupManager;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3
    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 155
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 156
    .local v2, "_arg1":J
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IBackupAgent$Stub;->doQuotaExceeded(JJ)V

    .line 157
    return v16

    .line 137
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4
    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 141
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 143
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v9

    .line 145
    .local v9, "_arg2":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 146
    .local v10, "_arg3":I
    move-object v0, v13

    move-wide v1, v6

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IBackupAgent$Stub;->doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V

    .line 147
    return v16

    .line 116
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/app/backup/IBackupManager;
    .end local v10    # "_arg3":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_5
    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 122
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_2
    move-object v1, v0

    goto :goto_3

    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_1
    goto :goto_2

    .line 125
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 127
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 129
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v10

    .line 131
    .local v10, "_arg3":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 132
    .local v11, "_arg4":I
    move-object v0, v13

    move-wide v2, v7

    move v4, v9

    move-object v5, v10

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/app/IBackupAgent$Stub;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V

    .line 133
    return v16

    .line 90
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Landroid/app/backup/IBackupManager;
    .end local v11    # "_arg4":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_6
    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 96
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_2
    move-object v1, v0

    .line 99
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 101
    .restart local v7    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 105
    .local v4, "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_5
    move-object v4, v0

    goto :goto_6

    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_3
    goto :goto_5

    .line 108
    .restart local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 110
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v10

    .line 111
    .local v10, "_arg4":Landroid/app/backup/IBackupManager;
    move-object v0, v13

    move-wide v2, v7

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/app/IBackupAgent$Stub;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 112
    return v16

    .line 55
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "_arg1":J
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Landroid/app/backup/IBackupManager;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_7
    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_7

    .line 61
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_4
    move-object v1, v0

    .line 64
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .line 68
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_5
    move-object v2, v0

    .line 71
    .restart local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 72
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 75
    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_9
    move-object v3, v0

    goto :goto_a

    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_6
    goto :goto_9

    .line 78
    .restart local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 80
    .local v9, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 82
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v12

    .line 84
    .local v12, "_arg5":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 85
    .local v17, "_arg6":I
    move-object v0, v13

    move-wide v4, v9

    move v6, v11

    move-object v7, v12

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/app/IBackupAgent$Stub;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V

    .line 86
    return v16

    .line 50
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "_arg3":J
    .end local v11    # "_arg4":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg6":I
    .local v12, "descriptor":Ljava/lang/String;
    :cond_7
    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v16

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
