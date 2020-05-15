.class public abstract Landroid/net/INetworkStatsSession$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsSession.java"

# interfaces
.implements Landroid/net/INetworkStatsSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsSession"

.field static final TRANSACTION_close:I = 0x8

.field static final TRANSACTION_getDeviceSummaryForNetwork:I = 0x1

.field static final TRANSACTION_getHistoryForNetwork:I = 0x3

.field static final TRANSACTION_getHistoryForUid:I = 0x5

.field static final TRANSACTION_getHistoryIntervalForUid:I = 0x6

.field static final TRANSACTION_getRelevantUids:I = 0x7

.field static final TRANSACTION_getSummaryForAllUid:I = 0x4

.field static final TRANSACTION_getSummaryForNetwork:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.INetworkStatsSession"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.net.INetworkStatsSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkStatsSession;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/net/INetworkStatsSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStatsSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
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

    .line 39
    const-string v3, "android.net.INetworkStatsSession"

    .line 40
    .local v3, "descriptor":Ljava/lang/String;
    const v4, 0x5f4e5446

    const/4 v5, 0x1

    if-eq v0, v4, :cond_d

    const/4 v4, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .line 226
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 219
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->close()V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    return v5

    .line 211
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->getRelevantUids()[I

    move-result-object v4

    .line 213
    .local v4, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 215
    return v5

    .line 178
    .end local v4    # "_result":[I
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 184
    .local v8, "_arg0":Landroid/net/NetworkTemplate;
    :goto_0
    move-object v8, v4

    goto :goto_1

    .end local v8    # "_arg0":Landroid/net/NetworkTemplate;
    :cond_0
    goto :goto_0

    .line 187
    .restart local v8    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 191
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 193
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 195
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 197
    .local v20, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 198
    .local v22, "_arg6":J
    move-object/from16 v7, p0

    move v9, v4

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v13, v20

    move-wide/from16 v15, v22

    invoke-virtual/range {v7 .. v16}, Landroid/net/INetworkStatsSession$Stub;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v7

    .line 199
    .local v7, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v7, :cond_1

    .line 201
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {v7, v2, v5}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 205
    :cond_1
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    :goto_2
    return v5

    .line 149
    .end local v4    # "_arg1":I
    .end local v7    # "_result":Landroid/net/NetworkStatsHistory;
    .end local v8    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":J
    .end local v22    # "_arg6":J
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 152
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 155
    .restart local v8    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_3
    move-object v8, v4

    goto :goto_4

    .end local v8    # "_arg0":Landroid/net/NetworkTemplate;
    :cond_2
    goto :goto_3

    .line 158
    .restart local v8    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 162
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 164
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 165
    .local v15, "_arg4":I
    move-object/from16 v7, p0

    move v9, v4

    move v10, v13

    move v11, v14

    move v12, v15

    invoke-virtual/range {v7 .. v12}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v7

    .line 166
    .restart local v7    # "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v7, :cond_3

    .line 168
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v7, v2, v5}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 172
    :cond_3
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    :goto_5
    return v5

    .line 122
    .end local v4    # "_arg1":I
    .end local v7    # "_result":Landroid/net/NetworkStatsHistory;
    .end local v8    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 125
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 128
    .restart local v8    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_6
    move-object v8, v4

    goto :goto_7

    .end local v8    # "_arg0":Landroid/net/NetworkTemplate;
    :cond_4
    goto :goto_6

    .line 131
    .restart local v8    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 133
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 135
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v13, v5

    goto :goto_8

    :cond_5
    move v13, v6

    .line 136
    .local v13, "_arg3":Z
    :goto_8
    move-object/from16 v7, p0

    move-wide v9, v14

    move-wide/from16 v11, v16

    invoke-virtual/range {v7 .. v13}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v4

    .line 137
    .local v4, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v4, :cond_6

    .line 139
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v4, v2, v5}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 143
    :cond_6
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    :goto_9
    return v5

    .line 99
    .end local v4    # "_result":Landroid/net/NetworkStats;
    .end local v8    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v13    # "_arg3":Z
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    .line 102
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .local v4, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_a

    .line 105
    .end local v4    # "_arg0":Landroid/net/NetworkTemplate;
    :cond_7
    nop

    .line 108
    .restart local v4    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 109
    .local v7, "_arg1":I
    move-object/from16 v14, p0

    invoke-virtual {v14, v4, v7}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v8

    .line 110
    .local v8, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v8, :cond_8

    .line 112
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v8, v2, v5}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 116
    :cond_8
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    :goto_b
    return v5

    .line 74
    .end local v4    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v7    # "_arg1":I
    .end local v8    # "_result":Landroid/net/NetworkStatsHistory;
    :pswitch_6
    move-object/from16 v14, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    .line 77
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 80
    .local v9, "_arg0":Landroid/net/NetworkTemplate;
    :goto_c
    move-object v9, v4

    goto :goto_d

    .end local v9    # "_arg0":Landroid/net/NetworkTemplate;
    :cond_9
    goto :goto_c

    .line 83
    .restart local v9    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 85
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 86
    .local v17, "_arg2":J
    move-object v8, v14

    move-wide v10, v15

    move-wide/from16 v12, v17

    invoke-virtual/range {v8 .. v13}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v4

    .line 87
    .local v4, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v4, :cond_a

    .line 89
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v4, v2, v5}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 93
    :cond_a
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    :goto_e
    return v5

    .line 49
    .end local v4    # "_result":Landroid/net/NetworkStats;
    .end local v9    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":J
    :pswitch_7
    move-object/from16 v14, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    .line 52
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 55
    .restart local v9    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_f
    move-object v9, v4

    goto :goto_10

    .end local v9    # "_arg0":Landroid/net/NetworkTemplate;
    :cond_b
    goto :goto_f

    .line 58
    .restart local v9    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 60
    .restart local v15    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 61
    .restart local v17    # "_arg2":J
    move-object v8, v14

    move-wide v10, v15

    move-wide/from16 v12, v17

    invoke-virtual/range {v8 .. v13}, Landroid/net/INetworkStatsSession$Stub;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v4

    .line 62
    .restart local v4    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_c

    .line 64
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v4, v2, v5}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 68
    :cond_c
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    :goto_11
    return v5

    .line 44
    .end local v4    # "_result":Landroid/net/NetworkStats;
    .end local v9    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":J
    :cond_d
    move-object/from16 v14, p0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v5

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
