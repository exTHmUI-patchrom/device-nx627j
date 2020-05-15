.class public abstract Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.super Landroid/os/Binder;
.source "IUceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/uceservice/IUceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/IUceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.uceservice.IUceService"

.field static final TRANSACTION_createOptionsService:I = 0x4

.field static final TRANSACTION_createOptionsServiceForSubscription:I = 0x5

.field static final TRANSACTION_createPresenceService:I = 0x7

.field static final TRANSACTION_createPresenceServiceForSubscription:I = 0x8

.field static final TRANSACTION_destroyOptionsService:I = 0x6

.field static final TRANSACTION_destroyPresenceService:I = 0x9

.field static final TRANSACTION_getOptionsService:I = 0xd

.field static final TRANSACTION_getOptionsServiceForSubscription:I = 0xe

.field static final TRANSACTION_getPresenceService:I = 0xb

.field static final TRANSACTION_getPresenceServiceForSubscription:I = 0xc

.field static final TRANSACTION_getServiceStatus:I = 0xa

.field static final TRANSACTION_isServiceStarted:I = 0x3

.field static final TRANSACTION_startService:I = 0x1

.field static final TRANSACTION_stopService:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    .line 41
    const-string v0, "com.android.ims.internal.uce.uceservice.IUceService"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_c

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 229
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v4

    .line 233
    .local v4, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/android/ims/internal/uce/options/IOptionsService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    nop

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 235
    return v2

    .line 221
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v1

    .line 223
    .local v1, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/ims/internal/uce/options/IOptionsService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    nop

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 225
    return v2

    .line 211
    .end local v1    # "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v4

    .line 215
    .local v4, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/ims/internal/uce/presence/IPresenceService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    nop

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 217
    return v2

    .line 203
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v1

    .line 205
    .local v1, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/ims/internal/uce/presence/IPresenceService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    nop

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 207
    return v2

    .line 195
    .end local v1    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getServiceStatus()Z

    move-result v1

    .line 197
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return v2

    .line 186
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyPresenceService(I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    return v2

    .line 160
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v4

    .line 164
    .local v4, "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .local v3, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_0

    .line 168
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :cond_4
    nop

    .line 171
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceServiceForSubscription(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v6

    .line 173
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    if-eqz v3, :cond_5

    .line 176
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {v3, p3, v2}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 180
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    :goto_1
    return v2

    .line 136
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v4

    .line 140
    .restart local v4    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_2

    .line 144
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :cond_6
    nop

    .line 146
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :goto_2
    invoke-virtual {p0, v4, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v5

    .line 147
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    if-eqz v3, :cond_7

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v3, p3, v2}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 154
    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    :goto_3
    return v2

    .line 127
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v5    # "_result":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyOptionsService(I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    return v2

    .line 101
    .end local v1    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v4

    .line 105
    .local v4, "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 106
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_4

    .line 109
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :cond_8
    nop

    .line 112
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsServiceForSubscription(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v6

    .line 114
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    if-eqz v3, :cond_9

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {v3, p3, v2}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 121
    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    :goto_5
    return v2

    .line 77
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v4

    .line 81
    .restart local v4    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 82
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_6

    .line 85
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :cond_a
    nop

    .line 87
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :goto_6
    invoke-virtual {p0, v4, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v5

    .line 88
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    if-eqz v3, :cond_b

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v3, p3, v2}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 95
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    :goto_7
    return v2

    .line 69
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v5    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->isServiceStarted()Z

    move-result v1

    .line 71
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return v2

    .line 61
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->stopService()Z

    move-result v1

    .line 63
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return v2

    .line 51
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/uce/uceservice/IUceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceListener;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result v3

    .line 55
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v2

    .line 46
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    .end local v3    # "_result":Z
    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
