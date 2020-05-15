.class Landroid/os/CommonTimeUtils;
.super Ljava/lang/Object;
.source "CommonTimeUtils.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final SUCCESS:I


# instance fields
.field private mInterfaceDesc:Ljava/lang/String;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;
    .param p2, "interfaceDesc"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 45
    iput-object p2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public transactGetInt(II)I
    .locals 4
    .param p1, "method_code"    # I
    .param p2, "error_ret_val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 51
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 56
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 59
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "res":I
    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move v3, p2

    .end local v2    # "res":I
    :goto_0
    move v2, v3

    .line 63
    .local v2, "ret_val":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 65
    nop

    .line 64
    nop

    .line 67
    return v2

    .line 63
    .end local v2    # "ret_val":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public transactGetLong(IJ)J
    .locals 5
    .param p1, "method_code"    # I
    .param p2, "error_ret_val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .local v2, "res":I
    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-wide v3, p2

    .end local v2    # "res":I
    :goto_0
    move-wide v2, v3

    .line 105
    .local v2, "ret_val":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    nop

    .line 106
    nop

    .line 109
    return-wide v2

    .line 105
    .end local v2    # "ret_val":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public transactGetSockaddr(I)Ljava/net/InetSocketAddress;
    .locals 26
    .param p1, "method_code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 177
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 178
    .local v3, "reply":Landroid/os/Parcel;
    const/4 v0, 0x0

    move-object v4, v0

    .line 182
    .local v4, "ret_val":Ljava/net/InetSocketAddress;
    :try_start_0
    iget-object v0, v1, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    iget-object v0, v1, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    move/from16 v6, p1

    :try_start_1
    invoke-interface {v0, v6, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .local v0, "res":I
    if-nez v0, :cond_2

    .line 188
    const/4 v7, 0x0

    .line 189
    .local v7, "port":I
    const/4 v8, 0x0

    .line 191
    .local v8, "addrStr":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 193
    .local v9, "type":I
    sget v10, Landroid/system/OsConstants;->AF_INET:I

    const/4 v13, 0x1

    const/4 v14, 0x4

    if-ne v10, v9, :cond_0

    .line 194
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 195
    .local v10, "addr":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move v7, v15

    .line 196
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%d.%d.%d.%d"

    new-array v14, v14, [Ljava/lang/Object;

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    .line 197
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v5

    shr-int/lit8 v5, v10, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 198
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v13

    shr-int/lit8 v5, v10, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 199
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v14, v12

    and-int/lit16 v5, v10, 0xff

    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x3

    aput-object v5, v14, v12

    .line 196
    invoke-static {v15, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .line 201
    .end local v10    # "addr":I
    nop

    .line 219
    move/from16 v24, v0

    goto/16 :goto_0

    .line 201
    :cond_0
    sget v10, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v10, v9, :cond_1

    .line 202
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 203
    .local v10, "addr1":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 204
    .local v11, "addr2":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 205
    .local v12, "addr3":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 207
    .local v15, "addr4":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v7, v18

    .line 209
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 210
    .local v18, "flowinfo":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 212
    .local v19, "scope_id":I
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "[%04X:%04X:%04X:%04X:%04X:%04X:%04X:%04X]"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    shr-int/lit8 v22, v10, 0x10

    const v23, 0xffff

    move/from16 v24, v0

    and-int v0, v22, v23

    .line 213
    .end local v0    # "res":I
    .local v24, "res":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v21, 0x0

    aput-object v0, v5, v21

    and-int v0, v10, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v20, 0x1

    aput-object v0, v5, v20

    shr-int/lit8 v0, v11, 0x10

    and-int v0, v0, v23

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v17, 0x2

    aput-object v0, v5, v17

    and-int v0, v11, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x3

    aput-object v0, v5, v16

    shr-int/lit8 v0, v12, 0x10

    and-int v0, v0, v23

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x4

    aput-object v0, v5, v16

    and-int v0, v12, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x5

    aput-object v0, v5, v16

    shr-int/lit8 v16, v15, 0x10

    and-int v0, v16, v23

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x6

    aput-object v0, v5, v16

    and-int v0, v15, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x7

    aput-object v0, v5, v16

    .line 212
    invoke-static {v14, v13, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .end local v10    # "addr1":I
    .end local v11    # "addr2":I
    .end local v12    # "addr3":I
    .end local v15    # "addr4":I
    .end local v18    # "flowinfo":I
    .end local v19    # "scope_id":I
    goto :goto_0

    .line 219
    .end local v24    # "res":I
    .restart local v0    # "res":I
    :cond_1
    move/from16 v24, v0

    .end local v0    # "res":I
    .restart local v24    # "res":I
    :goto_0
    if-eqz v8, :cond_2

    .line 220
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v8, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    .line 225
    .end local v7    # "port":I
    .end local v8    # "addrStr":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v24    # "res":I
    :cond_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 227
    nop

    .line 229
    return-object v4

    .line 225
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v6, p1

    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public transactGetString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "method_code"    # I
    .param p2, "error_ret_val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 140
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "res":I
    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v3, p2

    .end local v2    # "res":I
    :goto_0
    move-object v2, v3

    .line 147
    .local v2, "ret_val":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 148
    nop

    .line 151
    return-object v2

    .line 147
    .end local v2    # "ret_val":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public transactSetInt(II)I
    .locals 4
    .param p1, "method_code"    # I
    .param p2, "val"    # I

    .line 71
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 72
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 75
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 79
    return v2

    .line 85
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, -0x7

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 82
    return v3
.end method

.method public transactSetLong(IJ)I
    .locals 4
    .param p1, "method_code"    # I
    .param p2, "val"    # J

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 117
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    return v2

    .line 127
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, -0x7

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    return v3
.end method

.method public transactSetSockaddr(ILjava/net/InetSocketAddress;)I
    .locals 15
    .param p1, "method_code"    # I
    .param p2, "addr"    # Ljava/net/InetSocketAddress;

    move-object v1, p0

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 234
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 235
    .local v3, "reply":Landroid/os/Parcel;
    const/4 v0, -0x1

    move v4, v0

    .line 238
    .local v4, "ret_val":I
    :try_start_0
    iget-object v0, v1, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 241
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 243
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 245
    .local v6, "a":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 246
    .local v7, "b":[B
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 248
    .local v8, "p":I
    instance-of v9, v6, Ljava/net/Inet4Address;

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v9, :cond_1

    .line 249
    aget-byte v9, v7, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v9

    aget-byte v9, v7, v11

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    aget-byte v9, v7, v10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    .line 254
    .local v5, "v4addr":I
    sget v9, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    .end local v5    # "v4addr":I
    goto :goto_1

    .line 258
    :cond_1
    instance-of v9, v6, Ljava/net/Inet6Address;

    if-eqz v9, :cond_3

    .line 260
    move-object v9, v6

    check-cast v9, Ljava/net/Inet6Address;

    .line 261
    .local v9, "v6":Ljava/net/Inet6Address;
    sget v12, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v2, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    move v12, v0

    .local v12, "i":I
    :goto_0
    const/4 v13, 0x4

    if-ge v12, v13, :cond_2

    .line 263
    mul-int/lit8 v13, v12, 0x4

    add-int/2addr v13, v0

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    mul-int/lit8 v14, v12, 0x4

    add-int/2addr v14, v5

    aget-byte v14, v7, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    mul-int/lit8 v14, v12, 0x4

    add-int/2addr v14, v11

    aget-byte v14, v7, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    mul-int/lit8 v14, v12, 0x4

    add-int/2addr v14, v10

    aget-byte v14, v7, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v13, v14

    .line 267
    .local v13, "aword":I
    invoke-virtual {v2, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    .end local v13    # "aword":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    invoke-virtual {v9}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    .end local v9    # "v6":Ljava/net/Inet6Address;
    .end local v12    # "i":I
    nop

    .line 277
    .end local v6    # "a":Ljava/net/InetAddress;
    .end local v7    # "b":[B
    .end local v8    # "p":I
    :goto_1
    iget-object v5, v1, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v9, p1

    :try_start_1
    invoke-interface {v5, v9, v2, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 278
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "ret_val":I
    .local v0, "ret_val":I
    goto :goto_4

    .line 284
    .end local v0    # "ret_val":I
    .restart local v4    # "ret_val":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 280
    :catch_0
    move-exception v0

    goto :goto_3

    .line 273
    .restart local v6    # "a":Ljava/net/InetAddress;
    .restart local v7    # "b":[B
    .restart local v8    # "p":I
    :cond_3
    move/from16 v9, p1

    const/4 v0, -0x4

    .line 284
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 273
    return v0

    .line 284
    .end local v6    # "a":Ljava/net/InetAddress;
    .end local v7    # "b":[B
    .end local v8    # "p":I
    :catchall_1
    move-exception v0

    move/from16 v9, p1

    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 280
    :catch_1
    move-exception v0

    move/from16 v9, p1

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    const/4 v0, -0x7

    .line 284
    .end local v4    # "ret_val":I
    .local v0, "ret_val":I
    :goto_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 286
    nop

    .line 288
    return v0
.end method

.method public transactSetString(ILjava/lang/String;)I
    .locals 4
    .param p1, "method_code"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 159
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    return v2

    .line 169
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, -0x7

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    return v3
.end method
