.class public abstract Landroid/hardware/location/IContextHubService$Stub;
.super Landroid/os/Binder;
.source "IContextHubService.java"

# interfaces
.implements Landroid/hardware/location/IContextHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubService"

.field static final TRANSACTION_createClient:I = 0x9

.field static final TRANSACTION_disableNanoApp:I = 0xe

.field static final TRANSACTION_enableNanoApp:I = 0xd

.field static final TRANSACTION_findNanoAppOnHub:I = 0x7

.field static final TRANSACTION_getContextHubHandles:I = 0x2

.field static final TRANSACTION_getContextHubInfo:I = 0x3

.field static final TRANSACTION_getContextHubs:I = 0xa

.field static final TRANSACTION_getNanoAppInstanceInfo:I = 0x6

.field static final TRANSACTION_loadNanoApp:I = 0x4

.field static final TRANSACTION_loadNanoAppOnHub:I = 0xb

.field static final TRANSACTION_queryNanoApps:I = 0xf

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x8

.field static final TRANSACTION_unloadNanoApp:I = 0x5

.field static final TRANSACTION_unloadNanoAppFromHub:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.hardware.location.IContextHubService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.hardware.location.IContextHubService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IContextHubService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IContextHubService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/hardware/location/IContextHubService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IContextHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "android.hardware.location.IContextHubService"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 241
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 245
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 246
    .local v3, "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p0, v1, v3}, Landroid/hardware/location/IContextHubService$Stub;->queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    return v2

    .line 228
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 234
    .restart local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 235
    .local v4, "_arg2":J
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/location/IContextHubService$Stub;->disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    return v2

    .line 215
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v4    # "_arg2":J
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 221
    .restart local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 222
    .restart local v4    # "_arg2":J
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/location/IContextHubService$Stub;->enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    return v2

    .line 202
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v4    # "_arg2":J
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 208
    .restart local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 209
    .restart local v4    # "_arg2":J
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    return v2

    .line 184
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v4    # "_arg2":J
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v4

    .line 190
    .local v4, "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    sget-object v3, Landroid/hardware/location/NanoAppBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/NanoAppBinary;

    .local v3, "_arg2":Landroid/hardware/location/NanoAppBinary;
    goto :goto_0

    .line 194
    .end local v3    # "_arg2":Landroid/hardware/location/NanoAppBinary;
    :cond_0
    nop

    .line 196
    .restart local v3    # "_arg2":Landroid/hardware/location/NanoAppBinary;
    :goto_0
    invoke-virtual {p0, v1, v4, v3}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    return v2

    .line 176
    .end local v1    # "_arg0":I
    .end local v3    # "_arg2":Landroid/hardware/location/NanoAppBinary;
    .end local v4    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubs()Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 180
    return v2

    .line 164
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;"
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v1

    .line 168
    .local v1, "_arg0":Landroid/hardware/location/IContextHubClientCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .local v4, "_arg1":I
    invoke-virtual {p0, v1, v4}, Landroid/hardware/location/IContextHubService$Stub;->createClient(Landroid/hardware/location/IContextHubClientCallback;I)Landroid/hardware/location/IContextHubClient;

    move-result-object v5

    .line 170
    .local v5, "_result":Landroid/hardware/location/IContextHubClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/hardware/location/IContextHubClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    nop

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 172
    return v2

    .line 145
    .end local v1    # "_arg0":Landroid/hardware/location/IContextHubClientCallback;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Landroid/hardware/location/IContextHubClient;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 151
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    sget-object v3, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/ContextHubMessage;

    .local v3, "_arg2":Landroid/hardware/location/ContextHubMessage;
    goto :goto_1

    .line 155
    .end local v3    # "_arg2":Landroid/hardware/location/ContextHubMessage;
    :cond_2
    nop

    .line 157
    .restart local v3    # "_arg2":Landroid/hardware/location/ContextHubMessage;
    :goto_1
    invoke-virtual {p0, v1, v4, v3}, Landroid/hardware/location/IContextHubService$Stub;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    move-result v5

    .line 158
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return v2

    .line 128
    .end local v1    # "_arg0":I
    .end local v3    # "_arg2":Landroid/hardware/location/ContextHubMessage;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    sget-object v3, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/NanoAppFilter;

    .local v3, "_arg1":Landroid/hardware/location/NanoAppFilter;
    goto :goto_2

    .line 136
    .end local v3    # "_arg1":Landroid/hardware/location/NanoAppFilter;
    :cond_3
    nop

    .line 138
    .restart local v3    # "_arg1":Landroid/hardware/location/NanoAppFilter;
    :goto_2
    invoke-virtual {p0, v1, v3}, Landroid/hardware/location/IContextHubService$Stub;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    move-result-object v4

    .line 139
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 141
    return v2

    .line 112
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/NanoAppFilter;
    .end local v4    # "_result":[I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/hardware/location/IContextHubService$Stub;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v4

    .line 116
    .local v4, "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v4, :cond_4

    .line 118
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v4, p3, v2}, Landroid/hardware/location/NanoAppInstanceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 122
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    :goto_3
    return v2

    .line 102
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoApp(I)I

    move-result v3

    .line 106
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v2

    .line 85
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 90
    sget-object v3, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/NanoApp;

    .local v3, "_arg1":Landroid/hardware/location/NanoApp;
    goto :goto_4

    .line 93
    .end local v3    # "_arg1":Landroid/hardware/location/NanoApp;
    :cond_5
    nop

    .line 95
    .restart local v3    # "_arg1":Landroid/hardware/location/NanoApp;
    :goto_4
    invoke-virtual {p0, v1, v3}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    move-result v4

    .line 96
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v2

    .line 69
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/NanoApp;
    .end local v4    # "_result":I
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    move-result-object v4

    .line 73
    .local v4, "_result":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_6

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {v4, p3, v2}, Landroid/hardware/location/ContextHubInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 79
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    :goto_5
    return v2

    .line 61
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Landroid/hardware/location/ContextHubInfo;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubHandles()[I

    move-result-object v1

    .line 63
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 65
    return v2

    .line 51
    .end local v1    # "_result":[I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IContextHubCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubCallback;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Landroid/hardware/location/IContextHubCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/location/IContextHubService$Stub;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I

    move-result v3

    .line 55
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v2

    .line 46
    .end local v1    # "_arg0":Landroid/hardware/location/IContextHubCallback;
    .end local v3    # "_result":I
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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
