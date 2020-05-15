.class public abstract Landroid/net/INetworkStatsService$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsService.java"

# interfaces
.implements Landroid/net/INetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsService"

.field static final TRANSACTION_forceUpdate:I = 0x8

.field static final TRANSACTION_forceUpdateIfaces:I = 0x7

.field static final TRANSACTION_getDataLayerSnapshotForUid:I = 0x3

.field static final TRANSACTION_getDetailedUidStats:I = 0x4

.field static final TRANSACTION_getIfaceStats:I = 0xc

.field static final TRANSACTION_getMobileIfaces:I = 0x5

.field static final TRANSACTION_getTotalStats:I = 0xd

.field static final TRANSACTION_getUidStats:I = 0xb

.field static final TRANSACTION_incrementOperationCount:I = 0x6

.field static final TRANSACTION_openSession:I = 0x1

.field static final TRANSACTION_openSessionForUsageStats:I = 0x2

.field static final TRANSACTION_registerUsageCallback:I = 0x9

.field static final TRANSACTION_unregisterUsageRequest:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.INetworkStatsService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.net.INetworkStatsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStatsService;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkStatsService;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/net/INetworkStatsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const-string v0, "android.net.INetworkStatsService"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 208
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/INetworkStatsService$Stub;->getTotalStats(I)J

    move-result-wide v3

    .line 212
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    return v2

    .line 196
    .end local v1    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 201
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkStatsService$Stub;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v4

    .line 202
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    return v2

    .line 184
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":J
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkStatsService$Stub;->getUidStats(II)J

    move-result-wide v4

    .line 190
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 192
    return v2

    .line 170
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":J
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/DataUsageRequest;

    .local v3, "_arg0":Landroid/net/DataUsageRequest;
    goto :goto_0

    .line 176
    .end local v3    # "_arg0":Landroid/net/DataUsageRequest;
    :cond_0
    nop

    .restart local v3    # "_arg0":Landroid/net/DataUsageRequest;
    :goto_0
    move-object v1, v3

    .line 178
    .end local v3    # "_arg0":Landroid/net/DataUsageRequest;
    .local v1, "_arg0":Landroid/net/DataUsageRequest;
    invoke-virtual {p0, v1}, Landroid/net/INetworkStatsService$Stub;->unregisterUsageRequest(Landroid/net/DataUsageRequest;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    return v2

    .line 138
    .end local v1    # "_arg0":Landroid/net/DataUsageRequest;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    sget-object v5, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/DataUsageRequest;

    .local v5, "_arg1":Landroid/net/DataUsageRequest;
    goto :goto_1

    .line 146
    .end local v5    # "_arg1":Landroid/net/DataUsageRequest;
    :cond_1
    move-object v5, v3

    .line 149
    .restart local v5    # "_arg1":Landroid/net/DataUsageRequest;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    sget-object v3, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .local v3, "_arg2":Landroid/os/Messenger;
    goto :goto_2

    .line 153
    .end local v3    # "_arg2":Landroid/os/Messenger;
    :cond_2
    nop

    .line 156
    .restart local v3    # "_arg2":Landroid/os/Messenger;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 157
    .local v6, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v4, v5, v3, v6}, Landroid/net/INetworkStatsService$Stub;->registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;

    move-result-object v7

    .line 158
    .local v7, "_result":Landroid/net/DataUsageRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v7, :cond_3

    .line 160
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v7, p3, v2}, Landroid/net/DataUsageRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 164
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :goto_3
    return v2

    .line 131
    .end local v3    # "_arg2":Landroid/os/Messenger;
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/net/DataUsageRequest;
    .end local v6    # "_arg3":Landroid/os/IBinder;
    .end local v7    # "_result":Landroid/net/DataUsageRequest;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdate()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v2

    .line 122
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Network;

    .line 125
    .local v1, "_arg0":[Landroid/net/Network;
    invoke-virtual {p0, v1}, Landroid/net/INetworkStatsService$Stub;->forceUpdateIfaces([Landroid/net/Network;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v2

    .line 109
    .end local v1    # "_arg0":[Landroid/net/Network;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 116
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/net/INetworkStatsService$Stub;->incrementOperationCount(III)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v2

    .line 101
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 105
    return v2

    .line 85
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/net/INetworkStatsService$Stub;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v4

    .line 89
    .local v4, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v4, :cond_4

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v4, p3, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    :goto_4
    return v2

    .line 69
    .end local v3    # "_arg0":[Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/NetworkStats;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/net/INetworkStatsService$Stub;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v4

    .line 73
    .restart local v4    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_5

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {v4, p3, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 79
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    :goto_5
    return v2

    .line 57
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Landroid/net/NetworkStats;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/net/INetworkStatsService$Stub;->openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v5

    .line 63
    .local v5, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/net/INetworkStatsSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    nop

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 65
    return v2

    .line 49
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Landroid/net/INetworkStatsSession;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    .line 51
    .local v1, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/net/INetworkStatsSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    nop

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_result":Landroid/net/INetworkStatsSession;
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
