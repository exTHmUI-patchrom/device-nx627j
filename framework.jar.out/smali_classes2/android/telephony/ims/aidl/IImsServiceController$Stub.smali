.class public abstract Landroid/telephony/ims/aidl/IImsServiceController$Stub;
.super Landroid/os/Binder;
.source "IImsServiceController.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsServiceController"

.field static final TRANSACTION_createMmTelFeature:I = 0x2

.field static final TRANSACTION_createRcsFeature:I = 0x3

.field static final TRANSACTION_disableIms:I = 0xa

.field static final TRANSACTION_enableIms:I = 0x9

.field static final TRANSACTION_getConfig:I = 0x7

.field static final TRANSACTION_getRegistration:I = 0x8

.field static final TRANSACTION_notifyImsServiceReadyForFeatureCreation:I = 0x5

.field static final TRANSACTION_querySupportedImsFeatures:I = 0x4

.field static final TRANSACTION_removeImsFeature:I = 0x6

.field static final TRANSACTION_setListener:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsServiceController;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
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

    .line 42
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 147
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->disableIms(I)V

    .line 151
    return v2

    .line 139
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->enableIms(I)V

    .line 143
    return v2

    .line 129
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v4

    .line 133
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/telephony/ims/aidl/IImsRegistration;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 135
    return v2

    .line 119
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3    # "_arg0":I
    invoke-virtual {p0, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v4

    .line 123
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/telephony/ims/aidl/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 125
    return v2

    .line 106
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsConfig;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 113
    .local v4, "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p0, v1, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    return v2

    .line 99
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->notifyImsServiceReadyForFeatureCreation()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v2

    .line 85
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v1

    .line 87
    .local v1, "_result":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v1, p3, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    :goto_0
    return v2

    .line 73
    .end local v1    # "_result":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 78
    .local v4, "_arg1":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p0, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createRcsFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v5

    .line 79
    .local v5, "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/telephony/ims/aidl/IImsRcsFeature;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 81
    return v2

    .line 61
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .end local v5    # "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 65
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 66
    .restart local v4    # "_arg1":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p0, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createMmTelFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v5

    .line 67
    .local v5, "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 69
    return v2

    .line 52
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .end local v5    # "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsServiceControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    move-result-object v1

    .line 55
    .local v1, "_arg0":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v2

    .line 47
    .end local v1    # "_arg0":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
