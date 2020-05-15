.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;
.super Landroid/os/Binder;
.source "IPresenceListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceListener"

.field static final TRANSACTION_capInfoReceived:I = 0x7

.field static final TRANSACTION_cmdStatus:I = 0x5

.field static final TRANSACTION_getVersionCb:I = 0x1

.field static final TRANSACTION_listCapInfoReceived:I = 0x8

.field static final TRANSACTION_publishTriggering:I = 0x4

.field static final TRANSACTION_serviceAvailable:I = 0x2

.field static final TRANSACTION_serviceUnAvailable:I = 0x3

.field static final TRANSACTION_sipResponseReceived:I = 0x6

.field static final TRANSACTION_unpublishMessageSent:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 157
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->unpublishMessageSent()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    return v2

    .line 141
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    sget-object v1, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;

    .local v1, "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    goto :goto_0

    .line 147
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    :cond_0
    nop

    .line 150
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    :goto_0
    sget-object v3, Lcom/android/ims/internal/uce/presence/PresResInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ims/internal/uce/presence/PresResInfo;

    .line 151
    .local v3, "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->listCapInfoReceived(Lcom/android/ims/internal/uce/presence/PresRlmiInfo;[Lcom/android/ims/internal/uce/presence/PresResInfo;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    return v2

    .line 130
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    .end local v3    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 135
    .local v3, "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->capInfoReceived(Ljava/lang/String;[Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v2

    .line 116
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    sget-object v1, Lcom/android/ims/internal/uce/presence/PresSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/presence/PresSipResponse;

    .local v1, "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    goto :goto_1

    .line 122
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    :cond_1
    nop

    .line 124
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->sipResponseReceived(Lcom/android/ims/internal/uce/presence/PresSipResponse;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v2

    .line 102
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    sget-object v1, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/presence/PresCmdStatus;

    .local v1, "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    goto :goto_2

    .line 108
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    :cond_2
    nop

    .line 110
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->cmdStatus(Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v2

    .line 88
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    sget-object v1, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    .local v1, "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    goto :goto_3

    .line 94
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    :cond_3
    nop

    .line 96
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->publishTriggering(Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v2

    .line 74
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    sget-object v1, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/common/StatusCode;

    .local v1, "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_4

    .line 80
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_4
    nop

    .line 82
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceUnAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v2

    .line 60
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 63
    sget-object v1, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/common/StatusCode;

    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_5

    .line 66
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_5
    nop

    .line 68
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v2

    .line 51
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->getVersionCb(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    return v2

    .line 46
    .end local v1    # "_arg0":Ljava/lang/String;
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
