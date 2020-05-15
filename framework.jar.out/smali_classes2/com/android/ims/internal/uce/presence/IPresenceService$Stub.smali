.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;
.super Landroid/os/Binder;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getContactCap:I = 0x6

.field static final TRANSACTION_getContactListCap:I = 0x7

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_publishMyCap:I = 0x5

.field static final TRANSACTION_reenableService:I = 0x4

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_setNewFeatureTag:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/presence/IPresenceService;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
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

    .line 40
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    .line 41
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_d

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 204
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 211
    sget-object v1, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    .local v1, "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    goto :goto_0

    .line 214
    .end local v1    # "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    :cond_0
    nop

    .line 217
    .restart local v1    # "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 218
    .local v6, "_arg3":I
    invoke-virtual {p0, v4, v5, v1, v6}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v7

    .line 219
    .local v7, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v7, :cond_1

    .line 221
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    invoke-virtual {v7, p3, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 225
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    :goto_1
    return v2

    .line 184
    .end local v1    # "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 191
    .local v5, "_arg2":I
    invoke-virtual {p0, v1, v4, v5}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 192
    .local v6, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v6, :cond_2

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v6, p3, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 198
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    :goto_2
    return v2

    .line 164
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":[Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 171
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v1, v4, v5}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 172
    .restart local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v6, :cond_3

    .line 174
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v6, p3, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 178
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    :goto_3
    return v2

    .line 139
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 143
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    sget-object v1, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/presence/PresCapInfo;

    .local v1, "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    goto :goto_4

    .line 147
    .end local v1    # "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    :cond_4
    nop

    .line 150
    .restart local v1    # "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 151
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v4, v1, v5}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 152
    .restart local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v6, :cond_5

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {v6, p3, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 158
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    :goto_5
    return v2

    .line 121
    .end local v1    # "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .end local v4    # "_arg0":I
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 126
    .local v4, "_arg1":I
    invoke-virtual {p0, v1, v4}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 127
    .local v5, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v5, :cond_6

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {v5, p3, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 133
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :goto_6
    return v2

    .line 98
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 103
    sget-object v1, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/common/UceLong;

    .local v1, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_7

    .line 106
    .end local v1    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :cond_7
    nop

    .line 108
    .restart local v1    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :goto_7
    invoke-virtual {p0, v4, v1}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 109
    .restart local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v5, :cond_8

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v5, p3, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 115
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    :goto_8
    return v2

    .line 66
    .end local v1    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg0":I
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .restart local v4    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v5

    .line 72
    .local v5, "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 73
    sget-object v1, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/common/UceLong;

    .local v1, "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_9

    .line 76
    .end local v1    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    :cond_9
    nop

    .line 78
    .restart local v1    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    :goto_9
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 79
    .restart local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v6, :cond_a

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v6, p3, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 85
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    :goto_a
    if-eqz v1, :cond_b

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v1, p3, v2}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 92
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    :goto_b
    return v2

    .line 50
    .end local v1    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v4

    .line 54
    .local v4, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_c

    .line 56
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v4, p3, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 60
    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    :goto_c
    return v2

    .line 45
    .end local v1    # "_arg0":I
    .end local v4    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

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
