.class public abstract Landroid/service/euicc/IEuiccService$Stub;
.super Landroid/os/Binder;
.source "IEuiccService.java"

# interfaces
.implements Landroid/service/euicc/IEuiccService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IEuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IEuiccService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.euicc.IEuiccService"

.field static final TRANSACTION_deleteSubscription:I = 0x9

.field static final TRANSACTION_downloadSubscription:I = 0x1

.field static final TRANSACTION_eraseSubscriptions:I = 0xc

.field static final TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x7

.field static final TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final TRANSACTION_getEid:I = 0x3

.field static final TRANSACTION_getEuiccInfo:I = 0x8

.field static final TRANSACTION_getEuiccProfileInfoList:I = 0x6

.field static final TRANSACTION_getOtaStatus:I = 0x4

.field static final TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xd

.field static final TRANSACTION_startOtaIfNecessary:I = 0x5

.field static final TRANSACTION_switchToSubscription:I = 0xa

.field static final TRANSACTION_updateSubscriptionNickname:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.euicc.IEuiccService"

    invoke-virtual {p0, p0, v0}, Landroid/service/euicc/IEuiccService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEuiccService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.service.euicc.IEuiccService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/euicc/IEuiccService;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/service/euicc/IEuiccService;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/service/euicc/IEuiccService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/euicc/IEuiccService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    .line 39
    const-string v9, "android.service.euicc.IEuiccService"

    .line 40
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 211
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 201
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;

    move-result-object v1

    .line 206
    .local v1, "_arg1":Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;
    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    .line 207
    return v10

    .line 191
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IEraseSubscriptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEraseSubscriptionsCallback;

    move-result-object v1

    .line 196
    .local v1, "_arg1":Landroid/service/euicc/IEraseSubscriptionsCallback;
    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    .line 197
    return v10

    .line 177
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IEraseSubscriptionsCallback;
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IUpdateSubscriptionNicknameCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    move-result-object v3

    .line 186
    .local v3, "_arg3":Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/service/euicc/IEuiccService$Stub;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    .line 187
    return v10

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v10

    nop

    .line 171
    .local v1, "_arg2":Z
    :cond_0
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/ISwitchToSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/ISwitchToSubscriptionCallback;

    move-result-object v3

    .line 172
    .local v3, "_arg3":Landroid/service/euicc/ISwitchToSubscriptionCallback;
    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/service/euicc/IEuiccService$Stub;->switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V

    .line 173
    return v10

    .line 151
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/service/euicc/ISwitchToSubscriptionCallback;
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IDeleteSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDeleteSubscriptionCallback;

    move-result-object v2

    .line 158
    .local v2, "_arg2":Landroid/service/euicc/IDeleteSubscriptionCallback;
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    .line 159
    return v10

    .line 141
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/service/euicc/IDeleteSubscriptionCallback;
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetEuiccInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccInfoCallback;

    move-result-object v1

    .line 146
    .local v1, "_arg1":Landroid/service/euicc/IGetEuiccInfoCallback;
    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    .line 147
    return v10

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IGetEuiccInfoCallback;
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v10

    nop

    .line 135
    .local v1, "_arg1":Z
    :cond_1
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    move-result-object v2

    .line 136
    .local v2, "_arg2":Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    .line 137
    return v10

    .line 119
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetEuiccProfileInfoListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

    move-result-object v1

    .line 124
    .local v1, "_arg1":Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    .line 125
    return v10

    .line 109
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IOtaStatusChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IOtaStatusChangedCallback;

    move-result-object v1

    .line 114
    .local v1, "_arg1":Landroid/service/euicc/IOtaStatusChangedCallback;
    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    .line 115
    return v10

    .line 99
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IOtaStatusChangedCallback;
    :pswitch_9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetOtaStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetOtaStatusCallback;

    move-result-object v1

    .line 104
    .local v1, "_arg1":Landroid/service/euicc/IGetOtaStatusCallback;
    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V

    .line 105
    return v10

    .line 89
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IGetOtaStatusCallback;
    :pswitch_a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetEidCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEidCallback;

    move-result-object v1

    .line 94
    .local v1, "_arg1":Landroid/service/euicc/IGetEidCallback;
    invoke-virtual {v6, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getEid(ILandroid/service/euicc/IGetEidCallback;)V

    .line 95
    return v10

    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IGetEidCallback;
    :pswitch_b
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .local v2, "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    .local v0, "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    goto :goto_0

    .line 78
    .end local v0    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    :cond_2
    nop

    .line 81
    .restart local v0    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    :goto_0
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v10

    nop

    .line 83
    .local v1, "_arg2":Z
    :cond_3
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    move-result-object v3

    .line 84
    .local v3, "_arg3":Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
    invoke-virtual {v6, v2, v0, v1, v3}, Landroid/service/euicc/IEuiccService$Stub;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    .line 85
    return v10

    .line 49
    .end local v0    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg0":I
    .end local v3    # "_arg3":Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
    :pswitch_c
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 53
    .local v11, "_arg0":I
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    .line 57
    .local v2, "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    :goto_1
    move-object v2, v0

    goto :goto_2

    .end local v2    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    :cond_4
    goto :goto_1

    .line 60
    .restart local v2    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    :goto_2
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v1

    .line 62
    .local v3, "_arg2":Z
    :goto_3
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v4, v10

    goto :goto_4

    :cond_6
    move v4, v1

    .line 64
    .local v4, "_arg3":Z
    :goto_4
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/euicc/IDownloadSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDownloadSubscriptionCallback;

    move-result-object v12

    .line 65
    .local v12, "_arg4":Landroid/service/euicc/IDownloadSubscriptionCallback;
    move-object v0, v6

    move v1, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/service/euicc/IEuiccService$Stub;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V

    .line 66
    return v10

    .line 44
    .end local v2    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v11    # "_arg0":I
    .end local v12    # "_arg4":Landroid/service/euicc/IDownloadSubscriptionCallback;
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v10

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
