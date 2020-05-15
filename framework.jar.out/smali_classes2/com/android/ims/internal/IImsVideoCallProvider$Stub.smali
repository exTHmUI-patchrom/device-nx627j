.class public abstract Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallProvider.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallProvider"

.field static final TRANSACTION_requestCallDataUsage:I = 0xa

.field static final TRANSACTION_requestCameraCapabilities:I = 0x9

.field static final TRANSACTION_sendSessionModifyRequest:I = 0x7

.field static final TRANSACTION_sendSessionModifyResponse:I = 0x8

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setCamera:I = 0x2

.field static final TRANSACTION_setDeviceOrientation:I = 0x5

.field static final TRANSACTION_setDisplaySurface:I = 0x4

.field static final TRANSACTION_setPauseImage:I = 0xb

.field static final TRANSACTION_setPreviewSurface:I = 0x3

.field static final TRANSACTION_setZoom:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 171
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg0":Landroid/net/Uri;
    goto :goto_0

    .line 177
    .end local v1    # "_arg0":Landroid/net/Uri;
    :cond_0
    nop

    .line 179
    .restart local v1    # "_arg0":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    .line 180
    return v2

    .line 165
    .end local v1    # "_arg0":Landroid/net/Uri;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCallDataUsage()V

    .line 167
    return v2

    .line 159
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCameraCapabilities()V

    .line 161
    return v2

    .line 146
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    sget-object v1, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile;

    .local v1, "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_1

    .line 152
    .end local v1    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_1
    nop

    .line 154
    .restart local v1    # "_arg0":Landroid/telecom/VideoProfile;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 155
    return v2

    .line 126
    .end local v1    # "_arg0":Landroid/telecom/VideoProfile;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/VideoProfile;

    .local v3, "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_2

    .line 132
    .end local v3    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_2
    move-object v3, v1

    .line 135
    .restart local v3    # "_arg0":Landroid/telecom/VideoProfile;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    sget-object v1, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile;

    .local v1, "_arg1":Landroid/telecom/VideoProfile;
    goto :goto_3

    .line 139
    .end local v1    # "_arg1":Landroid/telecom/VideoProfile;
    :cond_3
    nop

    .line 141
    .restart local v1    # "_arg1":Landroid/telecom/VideoProfile;
    :goto_3
    invoke-virtual {p0, v3, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 142
    return v2

    .line 118
    .end local v1    # "_arg1":Landroid/telecom/VideoProfile;
    .end local v3    # "_arg0":Landroid/telecom/VideoProfile;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 121
    .local v1, "_arg0":F
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setZoom(F)V

    .line 122
    return v2

    .line 110
    .end local v1    # "_arg0":F
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDeviceOrientation(I)V

    .line 114
    return v2

    .line 97
    .end local v1    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .local v1, "_arg0":Landroid/view/Surface;
    goto :goto_4

    .line 103
    .end local v1    # "_arg0":Landroid/view/Surface;
    :cond_4
    nop

    .line 105
    .restart local v1    # "_arg0":Landroid/view/Surface;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    .line 106
    return v2

    .line 84
    .end local v1    # "_arg0":Landroid/view/Surface;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 87
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .restart local v1    # "_arg0":Landroid/view/Surface;
    goto :goto_5

    .line 90
    .end local v1    # "_arg0":Landroid/view/Surface;
    :cond_5
    nop

    .line 92
    .restart local v1    # "_arg0":Landroid/view/Surface;
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    .line 93
    return v2

    .line 74
    .end local v1    # "_arg0":Landroid/view/Surface;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCamera(Ljava/lang/String;I)V

    .line 80
    return v2

    .line 66
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;

    move-result-object v1

    .line 69
    .local v1, "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 70
    return v2

    .line 61
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
