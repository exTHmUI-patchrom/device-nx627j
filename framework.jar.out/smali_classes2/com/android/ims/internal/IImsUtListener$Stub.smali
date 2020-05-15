.class public abstract Lcom/android/ims/internal/IImsUtListener$Stub;
.super Landroid/os/Binder;
.source "IImsUtListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUtListener"

.field static final TRANSACTION_onSupplementaryServiceIndication:I = 0x8

.field static final TRANSACTION_utConfigurationCallBarringQueried:I = 0x5

.field static final TRANSACTION_utConfigurationCallForwardQueried:I = 0x6

.field static final TRANSACTION_utConfigurationCallWaitingQueried:I = 0x7

.field static final TRANSACTION_utConfigurationQueried:I = 0x3

.field static final TRANSACTION_utConfigurationQueryFailed:I = 0x4

.field static final TRANSACTION_utConfigurationUpdateFailed:I = 0x2

.field static final TRANSACTION_utConfigurationUpdated:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.android.ims.internal.IImsUtListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsUtListener;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.android.ims.internal.IImsUtListener"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    sget-object v1, Landroid/telephony/ims/ImsSsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsData;

    .local v1, "_arg0":Landroid/telephony/ims/ImsSsData;
    goto :goto_0

    .line 154
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsSsData;
    :cond_0
    nop

    .line 156
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsSsData;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUtListener$Stub;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 157
    return v2

    .line 136
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsSsData;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 140
    .local v1, "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .local v3, "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 143
    .local v4, "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 144
    return v2

    .line 124
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 128
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 131
    .local v4, "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 132
    return v2

    .line 112
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 116
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 119
    .local v4, "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 120
    return v2

    .line 95
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v3

    .line 99
    .local v3, "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 101
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_1

    .line 105
    .end local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    nop

    .line 107
    .restart local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 108
    return v2

    .line 78
    .end local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v4    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v3

    .line 82
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 84
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg2":Landroid/os/Bundle;
    goto :goto_2

    .line 88
    .end local v1    # "_arg2":Landroid/os/Bundle;
    :cond_2
    nop

    .line 90
    .restart local v1    # "_arg2":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 91
    return v2

    .line 61
    .end local v1    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v4    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v3

    .line 65
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 67
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 71
    .end local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :cond_3
    nop

    .line 73
    .restart local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :goto_3
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 74
    return v2

    .line 51
    .end local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v4    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 55
    .local v1, "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 57
    return v2

    .line 46
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

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
