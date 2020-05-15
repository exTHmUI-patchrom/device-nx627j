.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x28

.field static final TRANSACTION_addMixForPolicy:I = 0x41

.field static final TRANSACTION_adjustStreamVolume:I = 0x6

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x5

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x20

.field static final TRANSACTION_disableRingtoneSync:I = 0x4b

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x3c

.field static final TRANSACTION_dispatchFocusChange:I = 0x4d

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x9

.field static final TRANSACTION_forceVolumeControlStream:I = 0x2f

.field static final TRANSACTION_getActivePlaybackConfigurations:I = 0x4a

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x47

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x2a

.field static final TRANSACTION_getFocusRampTimeMs:I = 0x4c

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xf

.field static final TRANSACTION_getMode:I = 0x1a

.field static final TRANSACTION_getRingerModeExternal:I = 0x13

.field static final TRANSACTION_getRingerModeInternal:I = 0x14

.field static final TRANSACTION_getRingtonePlayer:I = 0x31

.field static final TRANSACTION_getStreamMaxVolume:I = 0xe

.field static final TRANSACTION_getStreamMinVolume:I = 0xd

.field static final TRANSACTION_getStreamVolume:I = 0xc

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x32

.field static final TRANSACTION_getVibrateSetting:I = 0x17

.field static final TRANSACTION_handleBluetoothA2dpDeviceConfigChange:I = 0x35

.field static final TRANSACTION_isAppInFocus:I = 0x2b

.field static final TRANSACTION_isAudioServerRunning:I = 0x54

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x26

.field static final TRANSACTION_isBluetoothScoOn:I = 0x24

.field static final TRANSACTION_isCameraSoundForced:I = 0x37

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x3e

.field static final TRANSACTION_isMasterMute:I = 0xa

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x22

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x3b

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x3a

.field static final TRANSACTION_isStreamMute:I = 0x8

.field static final TRANSACTION_isValidRingerMode:I = 0x15

.field static final TRANSACTION_loadSoundEffects:I = 0x1d

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x39

.field static final TRANSACTION_playSoundEffect:I = 0x1b

.field static final TRANSACTION_playSoundEffectVolume:I = 0x1c

.field static final TRANSACTION_playerAttributes:I = 0x2

.field static final TRANSACTION_playerEvent:I = 0x3

.field static final TRANSACTION_playerHasOpPlayAudio:I = 0x4e

.field static final TRANSACTION_registerAudioPolicy:I = 0x3f

.field static final TRANSACTION_registerAudioServerStateDispatcher:I = 0x52

.field static final TRANSACTION_registerPlaybackCallback:I = 0x48

.field static final TRANSACTION_registerRecordingCallback:I = 0x45

.field static final TRANSACTION_releasePlayer:I = 0x4

.field static final TRANSACTION_reloadAudioSettings:I = 0x1f

.field static final TRANSACTION_removeMixForPolicy:I = 0x42

.field static final TRANSACTION_requestAudioFocus:I = 0x27

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x34

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent:I = 0x50

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x25

.field static final TRANSACTION_setBluetoothHearingAidDeviceConnectionState:I = 0x4f

.field static final TRANSACTION_setBluetoothScoOn:I = 0x23

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x43

.field static final TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x51

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x3d

.field static final TRANSACTION_setMasterMute:I = 0xb

.field static final TRANSACTION_setMicrophoneMute:I = 0x10

.field static final TRANSACTION_setMode:I = 0x19

.field static final TRANSACTION_setRingerModeExternal:I = 0x11

.field static final TRANSACTION_setRingerModeInternal:I = 0x12

.field static final TRANSACTION_setRingtonePlayer:I = 0x30

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x21

.field static final TRANSACTION_setStreamVolume:I = 0x7

.field static final TRANSACTION_setVibrateSetting:I = 0x16

.field static final TRANSACTION_setVolumeController:I = 0x38

.field static final TRANSACTION_setVolumePolicy:I = 0x44

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x33

.field static final TRANSACTION_shouldVibrate:I = 0x18

.field static final TRANSACTION_startBluetoothSco:I = 0x2c

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x2d

.field static final TRANSACTION_startWatchingRoutes:I = 0x36

.field static final TRANSACTION_stopBluetoothSco:I = 0x2e

.field static final TRANSACTION_trackPlayer:I = 0x1

.field static final TRANSACTION_unloadSoundEffects:I = 0x1e

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x29

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x40

.field static final TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x53

.field static final TRANSACTION_unregisterPlaybackCallback:I = 0x49

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x46


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 41
    const-string v14, "android.media.IAudioService"

    .line 42
    .local v14, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v11, v0, :cond_20

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v11, :pswitch_data_0

    .line 1008
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1000
    :pswitch_0
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v0

    .line 1002
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    return v15

    .line 992
    .end local v0    # "_result":Z
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 995
    .local v0, "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 996
    return v15

    .line 983
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_2
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 986
    .restart local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    return v15

    .line 966
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_3
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/AudioFocusInfo;

    .local v1, "_arg0":Landroid/media/AudioFocusInfo;
    goto :goto_0

    .line 972
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :cond_0
    nop

    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :goto_0
    move-object v0, v1

    .line 975
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 977
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 978
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 979
    return v15

    .line 943
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_4
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 946
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 949
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    nop

    .line 952
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 954
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 956
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v4, v15

    goto :goto_2

    :cond_2
    move v4, v0

    .line 958
    .local v4, "_arg3":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 959
    .local v8, "_arg4":I
    move-object v0, v10

    move v2, v6

    move v3, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)I

    move-result v0

    .line 960
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    return v15

    .line 922
    .end local v0    # "_result":I
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg3":Z
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg4":I
    :pswitch_5
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 925
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 928
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    nop

    .line 931
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 933
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v15

    nop

    .line 935
    .local v0, "_arg2":Z
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 936
    .local v3, "_arg3":I
    invoke-virtual {v10, v1, v2, v0, v3}, Landroid/media/IAudioService$Stub;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I

    move-result v4

    .line 937
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    return v15

    .line 912
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_6
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 916
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v15

    nop

    .line 917
    .local v0, "_arg1":Z
    :cond_5
    invoke-virtual {v10, v1, v0}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    .line 918
    return v15

    .line 893
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_7
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 896
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/AudioFocusInfo;

    .local v1, "_arg0":Landroid/media/AudioFocusInfo;
    goto :goto_4

    .line 899
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :cond_6
    nop

    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    :goto_4
    move-object v0, v1

    .line 902
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 904
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 905
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10, v0, v1, v2}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 906
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    return v15

    .line 876
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_8
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 880
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 881
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .local v1, "_arg1":Landroid/media/AudioAttributes;
    goto :goto_5

    .line 884
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    :cond_7
    nop

    .line 886
    .restart local v1    # "_arg1":Landroid/media/AudioAttributes;
    :goto_5
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v2

    .line 887
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    return v15

    .line 867
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 870
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->disableRingtoneSync(I)V

    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    return v15

    .line 859
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    .line 861
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 863
    return v15

    .line 851
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :pswitch_b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 854
    .local v0, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 855
    return v15

    .line 842
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 845
    .restart local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    return v15

    .line 834
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    .line 836
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 838
    return v15

    .line 826
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :pswitch_e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 829
    .local v0, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 830
    return v15

    .line 817
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 820
    .restart local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    return v15

    .line 803
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_10
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 806
    sget-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/VolumePolicy;

    .local v1, "_arg0":Landroid/media/VolumePolicy;
    goto :goto_6

    .line 809
    .end local v1    # "_arg0":Landroid/media/VolumePolicy;
    :cond_8
    nop

    .restart local v1    # "_arg0":Landroid/media/VolumePolicy;
    :goto_6
    move-object v0, v1

    .line 811
    .end local v1    # "_arg0":Landroid/media/VolumePolicy;
    .local v0, "_arg0":Landroid/media/VolumePolicy;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    return v15

    .line 791
    .end local v0    # "_arg0":Landroid/media/VolumePolicy;
    :pswitch_11
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 795
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 796
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 797
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    return v15

    .line 774
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 777
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .local v1, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_7

    .line 780
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    :cond_9
    nop

    .restart local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    :goto_7
    move-object v0, v1

    .line 783
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .local v0, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 784
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 785
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    return v15

    .line 757
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 760
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .local v1, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_8

    .line 763
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    :cond_a
    nop

    .restart local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    :goto_8
    move-object v0, v1

    .line 766
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 767
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 768
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    return v15

    .line 749
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_14
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 752
    .local v0, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 753
    return v15

    .line 726
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_15
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 729
    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .local v1, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_9

    .line 732
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    :cond_b
    nop

    .line 735
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v6

    .line 737
    .local v6, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v3, v15

    goto :goto_a

    :cond_c
    move v3, v0

    .line 739
    .local v3, "_arg2":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v4, v15

    goto :goto_b

    :cond_d
    move v4, v0

    .line 741
    .local v4, "_arg3":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v5, v15

    goto :goto_c

    :cond_e
    move v5, v0

    .line 742
    .local v5, "_arg4":Z
    :goto_c
    move-object v0, v10

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    return v15

    .line 718
    .end local v0    # "_result":Ljava/lang/String;
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_16
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v0

    .line 720
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    return v15

    .line 708
    .end local v0    # "_result":Z
    :pswitch_17
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    move v0, v15

    nop

    .line 711
    .local v0, "_arg0":Z
    :cond_f
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v1

    .line 712
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    return v15

    .line 699
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_18
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    return v15

    .line 689
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 692
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v1

    .line 693
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    return v15

    .line 679
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 682
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    .line 683
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    return v15

    .line 668
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 672
    .local v1, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v0, v15

    nop

    .line 673
    .local v0, "_arg1":Z
    :cond_10
    invoke-virtual {v10, v1, v0}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    return v15

    .line 659
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/media/IVolumeController;
    :pswitch_1c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 662
    .local v0, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    return v15

    .line 651
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    :pswitch_1d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v0

    .line 653
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    return v15

    .line 635
    .end local v0    # "_result":Z
    :pswitch_1e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v1

    .line 638
    .local v1, "_arg0":Landroid/media/IAudioRoutesObserver;
    invoke-virtual {v10, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v2

    .line 639
    .local v2, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v2, :cond_11

    .line 641
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    invoke-virtual {v2, v13, v15}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 645
    :cond_11
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    :goto_d
    return v15

    .line 621
    .end local v1    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v2    # "_result":Landroid/media/AudioRoutesInfo;
    :pswitch_1f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 624
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 627
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_12
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_e
    move-object v0, v1

    .line 629
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    return v15

    .line 602
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_20
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 605
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 608
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_13
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_f
    move-object v0, v1

    .line 611
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 613
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 614
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v3

    .line 615
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    return v15

    .line 585
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_21
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 589
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 591
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 595
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 596
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v10

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    return v15

    .line 577
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_22
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v0

    .line 579
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    return v15

    .line 569
    .end local v0    # "_result":I
    :pswitch_23
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 571
    .local v0, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_14
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 573
    return v15

    .line 560
    .end local v0    # "_result":Landroid/media/IRingtonePlayer;
    :pswitch_24
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 563
    .local v0, "_arg0":Landroid/media/IRingtonePlayer;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    return v15

    .line 549
    .end local v0    # "_arg0":Landroid/media/IRingtonePlayer;
    :pswitch_25
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 553
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 554
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    return v15

    .line 540
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_26
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 543
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    return v15

    .line 531
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_27
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 534
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    return v15

    .line 520
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_28
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 524
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 525
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    return v15

    .line 510
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_29
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->isAppInFocus(Ljava/lang/String;)Z

    move-result v1

    .line 514
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    return v15

    .line 502
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v0

    .line 504
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    return v15

    .line 493
    .end local v0    # "_result":I
    :pswitch_2b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    return v15

    .line 472
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    .line 476
    .local v0, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 479
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .local v1, "_arg2":Landroid/media/AudioAttributes;
    goto :goto_10

    .line 482
    .end local v1    # "_arg2":Landroid/media/AudioAttributes;
    :cond_15
    nop

    .line 485
    .restart local v1    # "_arg2":Landroid/media/AudioAttributes;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    .line 487
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    return v15

    .line 441
    .end local v0    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v1    # "_arg2":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_2d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 444
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 447
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    move-object v1, v0

    nop

    .line 450
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 452
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 454
    .local v17, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v18

    .line 456
    .local v18, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 458
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 460
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 462
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v22

    .line 464
    .local v22, "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 465
    .local v23, "_arg8":I
    move-object v0, v10

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v0

    .line 466
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    return v15

    .line 433
    .end local v0    # "_result":I
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Landroid/os/IBinder;
    .end local v18    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v23    # "_arg8":I
    :pswitch_2e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v0

    .line 435
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    return v15

    .line 424
    .end local v0    # "_result":Z
    :pswitch_2f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    move v0, v15

    nop

    .line 427
    .local v0, "_arg0":Z
    :cond_17
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    return v15

    .line 416
    .end local v0    # "_arg0":Z
    :pswitch_30
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v0

    .line 418
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    return v15

    .line 407
    .end local v0    # "_result":Z
    :pswitch_31
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    move v0, v15

    nop

    .line 410
    .local v0, "_arg0":Z
    :cond_18
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    return v15

    .line 399
    .end local v0    # "_arg0":Z
    :pswitch_32
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v0

    .line 401
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    return v15

    .line 390
    .end local v0    # "_result":Z
    :pswitch_33
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    move v0, v15

    nop

    .line 393
    .local v0, "_arg0":Z
    :cond_19
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    return v15

    .line 380
    .end local v0    # "_arg0":Z
    :pswitch_34
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    move v0, v15

    nop

    .line 385
    .local v0, "_arg1":Z
    :cond_1a
    invoke-virtual {v10, v1, v0}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 386
    return v15

    .line 374
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_35
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 376
    return v15

    .line 368
    :pswitch_36
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 370
    return v15

    .line 360
    :pswitch_37
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v0

    .line 362
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    return v15

    .line 350
    .end local v0    # "_result":Z
    :pswitch_38
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 354
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 355
    .local v1, "_arg1":F
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 356
    return v15

    .line 342
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_39
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    .line 346
    return v15

    .line 334
    .end local v0    # "_arg0":I
    :pswitch_3a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v0

    .line 336
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    return v15

    .line 321
    .end local v0    # "_result":I
    :pswitch_3b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 327
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    return v15

    .line 311
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_3c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 314
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v1

    .line 315
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    return v15

    .line 301
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v1

    .line 305
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    return v15

    .line 290
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 295
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    return v15

    .line 280
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v1

    .line 284
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    return v15

    .line 272
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_40
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v0

    .line 274
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    return v15

    .line 264
    .end local v0    # "_result":I
    :pswitch_41
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v0

    .line 266
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    return v15

    .line 253
    .end local v0    # "_result":I
    :pswitch_42
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    return v15

    .line 242
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_43
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    return v15

    .line 229
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    move v0, v15

    nop

    .line 233
    .local v0, "_arg0":Z
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;I)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    return v15

    .line 219
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_45
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 223
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    return v15

    .line 209
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_46
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v1

    .line 213
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return v15

    .line 199
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_47
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v1

    .line 203
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    return v15

    .line 189
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_48
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v1

    .line 193
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return v15

    .line 174
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_49
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    move v0, v15

    nop

    .line 178
    .local v0, "_arg0":Z
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 180
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .local v3, "_arg3":I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;I)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v15

    .line 166
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_4a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v0

    .line 168
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v15

    .line 155
    .end local v0    # "_result":Z
    :pswitch_4b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    move v0, v15

    nop

    .line 159
    .local v0, "_arg0":Z
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 160
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    return v15

    .line 145
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_4c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v1

    .line 149
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return v15

    .line 130
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 136
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    return v15

    .line 115
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_4e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v15

    .line 99
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_4f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 103
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 105
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 107
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 109
    .restart local v9    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 110
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v10

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V

    .line 111
    return v15

    .line 91
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_50
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    .line 95
    return v15

    .line 81
    .end local v0    # "_arg0":I
    :pswitch_51
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg1":I
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->playerEvent(II)V

    .line 87
    return v15

    .line 66
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_52
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 71
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .local v1, "_arg1":Landroid/media/AudioAttributes;
    goto :goto_11

    .line 74
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    :cond_1e
    nop

    .line 76
    .restart local v1    # "_arg1":Landroid/media/AudioAttributes;
    :goto_11
    invoke-virtual {v10, v0, v1}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 77
    return v15

    .line 51
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    :pswitch_53
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 54
    sget-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/PlayerBase$PlayerIdCard;

    .local v1, "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    goto :goto_12

    .line 57
    .end local v1    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    :cond_1f
    nop

    .restart local v1    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    :goto_12
    move-object v0, v1

    .line 59
    .end local v1    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    .local v0, "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    invoke-virtual {v10, v0}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v1

    .line 60
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return v15

    .line 46
    .end local v0    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    .end local v1    # "_result":I
    :cond_20
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v15

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
