.class public abstract Lcom/android/ims/internal/IImsVideoCallCallback$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallCallback.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallCallback"

.field static final TRANSACTION_changeCallDataUsage:I = 0x5

.field static final TRANSACTION_changeCameraCapabilities:I = 0x6

.field static final TRANSACTION_changePeerDimensions:I = 0x4

.field static final TRANSACTION_changeVideoQuality:I = 0x7

.field static final TRANSACTION_handleCallSessionEvent:I = 0x3

.field static final TRANSACTION_receiveSessionModifyRequest:I = 0x1

.field static final TRANSACTION_receiveSessionModifyResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const-string v0, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v1, :cond_1

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsVideoCallCallback;

    return-object v1

    .line 42
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsVideoCallCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
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

    .line 50
    const-string v0, "com.android.ims.internal.IImsVideoCallCallback"

    .line 51
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 134
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changeVideoQuality(I)V

    .line 138
    return v2

    .line 121
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    sget-object v1, Landroid/telecom/VideoProfile$CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    .local v1, "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    goto :goto_0

    .line 127
    .end local v1    # "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    :cond_0
    nop

    .line 129
    .restart local v1    # "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 130
    return v2

    .line 113
    .end local v1    # "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 116
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changeCallDataUsage(J)V

    .line 117
    return v2

    .line 103
    .end local v3    # "_arg0":J
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changePeerDimensions(II)V

    .line 109
    return v2

    .line 95
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->handleCallSessionEvent(I)V

    .line 99
    return v2

    .line 73
    .end local v1    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    sget-object v4, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/VideoProfile;

    .local v4, "_arg1":Landroid/telecom/VideoProfile;
    goto :goto_1

    .line 81
    .end local v4    # "_arg1":Landroid/telecom/VideoProfile;
    :cond_1
    move-object v4, v1

    .line 84
    .restart local v4    # "_arg1":Landroid/telecom/VideoProfile;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    sget-object v1, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile;

    .local v1, "_arg2":Landroid/telecom/VideoProfile;
    goto :goto_2

    .line 88
    .end local v1    # "_arg2":Landroid/telecom/VideoProfile;
    :cond_2
    nop

    .line 90
    .restart local v1    # "_arg2":Landroid/telecom/VideoProfile;
    :goto_2
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 91
    return v2

    .line 60
    .end local v1    # "_arg2":Landroid/telecom/VideoProfile;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/telecom/VideoProfile;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    sget-object v1, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile;

    .local v1, "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_3

    .line 66
    .end local v1    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_3
    nop

    .line 68
    .restart local v1    # "_arg0":Landroid/telecom/VideoProfile;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 69
    return v2

    .line 55
    .end local v1    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
