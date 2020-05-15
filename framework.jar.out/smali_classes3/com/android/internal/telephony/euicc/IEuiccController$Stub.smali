.class public abstract Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.super Landroid/os/Binder;
.source "IEuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IEuiccController"

.field static final TRANSACTION_continueOperation:I = 0x1

.field static final TRANSACTION_deleteSubscription:I = 0x8

.field static final TRANSACTION_downloadSubscription:I = 0x6

.field static final TRANSACTION_eraseSubscriptions:I = 0xb

.field static final TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x3

.field static final TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final TRANSACTION_getEid:I = 0x4

.field static final TRANSACTION_getEuiccInfo:I = 0x7

.field static final TRANSACTION_getOtaStatus:I = 0x5

.field static final TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xc

.field static final TRANSACTION_switchToSubscription:I = 0x9

.field static final TRANSACTION_updateSubscriptionNickname:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccController;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/euicc/IEuiccController;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
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

    .line 39
    const-string v0, "com.android.internal.telephony.euicc.IEuiccController"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_e

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 224
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/PendingIntent;

    .local v3, "_arg0":Landroid/app/PendingIntent;
    goto :goto_0

    .line 230
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    :cond_0
    nop

    .restart local v3    # "_arg0":Landroid/app/PendingIntent;
    :goto_0
    move-object v1, v3

    .line 232
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .local v1, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V

    .line 233
    return v2

    .line 211
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/PendingIntent;

    .restart local v3    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1

    .line 217
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    :cond_1
    nop

    .restart local v3    # "_arg0":Landroid/app/PendingIntent;
    :goto_1
    move-object v1, v3

    .line 219
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .restart local v1    # "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 220
    return v2

    .line 194
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .local v3, "_arg2":Landroid/app/PendingIntent;
    goto :goto_2

    .line 204
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    :cond_2
    nop

    .line 206
    .restart local v3    # "_arg2":Landroid/app/PendingIntent;
    :goto_2
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 207
    return v2

    .line 177
    .end local v1    # "_arg0":I
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 183
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .restart local v3    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_3

    .line 187
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    :cond_3
    nop

    .line 189
    .restart local v3    # "_arg2":Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->switchToSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 190
    return v2

    .line 160
    .end local v1    # "_arg0":I
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 166
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .restart local v3    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_4

    .line 170
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    :cond_4
    nop

    .line 172
    .restart local v3    # "_arg2":Landroid/app/PendingIntent;
    :goto_4
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->deleteSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 173
    return v2

    .line 146
    .end local v1    # "_arg0":I
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;

    move-result-object v3

    .line 148
    .local v3, "_result":Landroid/telephony/euicc/EuiccInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_5

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v3, p3, v2}, Landroid/telephony/euicc/EuiccInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 154
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    :goto_5
    return v2

    .line 122
    .end local v3    # "_result":Landroid/telephony/euicc/EuiccInfo;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 125
    sget-object v4, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/euicc/DownloadableSubscription;

    .local v4, "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    goto :goto_6

    .line 128
    .end local v4    # "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    :cond_6
    move-object v4, v3

    .line 131
    .restart local v4    # "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v1, v2

    nop

    .line 133
    .local v1, "_arg1":Z
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 136
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .local v3, "_arg3":Landroid/app/PendingIntent;
    goto :goto_7

    .line 139
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :cond_8
    nop

    .line 141
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual {p0, v4, v1, v5, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 142
    return v2

    .line 114
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v5    # "_arg2":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getOtaStatus()I

    move-result v1

    .line 116
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v2

    .line 106
    .end local v1    # "_result":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEid()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v2

    .line 91
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 96
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .local v3, "_arg1":Landroid/app/PendingIntent;
    goto :goto_8

    .line 99
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    :cond_9
    nop

    .line 101
    .restart local v3    # "_arg1":Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDefaultDownloadableSubscriptionList(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 102
    return v2

    .line 69
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 72
    sget-object v1, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/euicc/DownloadableSubscription;

    .local v1, "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    goto :goto_9

    .line 75
    .end local v1    # "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    :cond_a
    move-object v1, v3

    .line 78
    .restart local v1    # "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 81
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .local v3, "_arg2":Landroid/app/PendingIntent;
    goto :goto_a

    .line 84
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    :cond_b
    nop

    .line 86
    .restart local v3    # "_arg2":Landroid/app/PendingIntent;
    :goto_a
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 87
    return v2

    .line 49
    .end local v1    # "_arg0":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 52
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_b

    .line 55
    .end local v1    # "_arg0":Landroid/content/Intent;
    :cond_c
    move-object v1, v3

    .line 58
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 59
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_c

    .line 62
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_d
    nop

    .line 64
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 65
    return v2

    .line 44
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
