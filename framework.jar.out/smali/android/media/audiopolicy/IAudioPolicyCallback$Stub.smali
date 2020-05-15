.class public abstract Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyCallback.java"

# interfaces
.implements Landroid/media/audiopolicy/IAudioPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/IAudioPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.audiopolicy.IAudioPolicyCallback"

.field static final TRANSACTION_notifyAudioFocusAbandon:I = 0x4

.field static final TRANSACTION_notifyAudioFocusGrant:I = 0x1

.field static final TRANSACTION_notifyAudioFocusLoss:I = 0x2

.field static final TRANSACTION_notifyAudioFocusRequest:I = 0x3

.field static final TRANSACTION_notifyMixStateUpdate:I = 0x5

.field static final TRANSACTION_notifyVolumeAdjust:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "android.media.audiopolicy.IAudioPolicyCallback"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 119
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyVolumeAdjust(I)V

    .line 123
    return v2

    .line 109
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyMixStateUpdate(Ljava/lang/String;I)V

    .line 115
    return v2

    .line 96
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .local v1, "_arg0":Landroid/media/AudioFocusInfo;
    goto :goto_0

    .line 102
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :cond_0
    nop

    .line 104
    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V

    .line 105
    return v2

    .line 81
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    goto :goto_1

    .line 87
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :cond_1
    nop

    .line 90
    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V

    .line 92
    return v2

    .line 66
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    goto :goto_2

    .line 72
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :cond_2
    nop

    .line 75
    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 76
    .local v3, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v1, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V

    .line 77
    return v2

    .line 51
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    goto :goto_4

    .line 57
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :cond_4
    nop

    .line 60
    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V

    .line 62
    return v2

    .line 46
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v3    # "_arg1":I
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
