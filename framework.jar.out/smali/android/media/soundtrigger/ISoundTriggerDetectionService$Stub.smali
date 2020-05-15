.class public abstract Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerDetectionService.java"

# interfaces
.implements Landroid/media/soundtrigger/ISoundTriggerDetectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/ISoundTriggerDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.soundtrigger.ISoundTriggerDetectionService"

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onGenericRecognitionEvent:I = 0x3

.field static final TRANSACTION_onStopOperation:I = 0x5

.field static final TRANSACTION_removeClient:I = 0x2

.field static final TRANSACTION_setClient:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.media.soundtrigger.ISoundTriggerDetectionService"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.media.soundtrigger.ISoundTriggerDetectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
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

    .line 43
    const-string v0, "android.media.soundtrigger.ISoundTriggerDetectionService"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 133
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_0
    nop

    .line 136
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 137
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->onStopOperation(Landroid/os/ParcelUuid;I)V

    .line 138
    return v2

    .line 110
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 116
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_1
    nop

    .line 119
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 122
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->onError(Landroid/os/ParcelUuid;II)V

    .line 123
    return v2

    .line 88
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .local v3, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_2

    .line 94
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :cond_2
    move-object v3, v1

    .line 97
    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 99
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .local v1, "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    goto :goto_3

    .line 103
    .end local v1    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    :cond_3
    nop

    .line 105
    .restart local v1    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    :goto_3
    invoke-virtual {p0, v3, v4, v1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->onGenericRecognitionEvent(Landroid/os/ParcelUuid;ILandroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 106
    return v2

    .line 75
    .end local v1    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_4

    .line 81
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_4
    nop

    .line 83
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->removeClient(Landroid/os/ParcelUuid;)V

    .line 84
    return v2

    .line 53
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_5

    .line 59
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :cond_5
    move-object v3, v1

    .line 62
    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 63
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_6

    .line 66
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_6
    nop

    .line 69
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    move-result-object v4

    .line 70
    .local v4, "_arg2":Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;
    invoke-virtual {p0, v3, v1, v4}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->setClient(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V

    .line 71
    return v2

    .line 48
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg2":Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
