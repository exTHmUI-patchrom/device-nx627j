.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$OnCallbackListener;,
        Landroid/media/AudioSystem$AudioRecordingCallback;,
        Landroid/media/AudioSystem$DynamicPolicyCallback;,
        Landroid/media/AudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final BAD_VALUE:I = -0x2

.field public static final DEAD_OBJECT:I = -0x6

.field public static final DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x2f

.field public static DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER:I = 0x2c0002

.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_ALL:I = -0x3ce00001

.field public static final DEVICE_IN_ALL_SCO:I = -0x7ffffff8

.field public static final DEVICE_IN_ALL_USB:I = -0x7dffe800

.field public static final DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final DEVICE_IN_AMBIENT_NAME:Ljava/lang/String; = "ambient"

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final DEVICE_IN_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BACK_MIC_NAME:Ljava/lang/String; = "back_mic"

.field public static final DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final DEVICE_IN_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_BUILTIN_MIC_NAME:Ljava/lang/String; = "mic"

.field public static final DEVICE_IN_BUS:I = -0x7ff00000

.field public static final DEVICE_IN_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final DEVICE_IN_COMMUNICATION_NAME:Ljava/lang/String; = "communication"

.field public static final DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_FM_TUNER_NAME:Ljava/lang/String; = "fm_tuner"

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_IP:I = -0x7ff80000

.field public static final DEVICE_IN_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_LOOPBACK_NAME:Ljava/lang/String; = "loopback"

.field public static final DEVICE_IN_PROXY:I = -0x7f000000

.field public static final DEVICE_IN_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final DEVICE_IN_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TELEPHONY_RX_NAME:Ljava/lang/String; = "telephony_rx"

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_TV_TUNER_NAME:Ljava/lang/String; = "tv_tuner"

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_IN_USB_HEADSET:I = -0x7e000000

.field public static final DEVICE_IN_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_IN_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ALL:I = 0x4fffffff

.field public static final DEVICE_OUT_ALL_A2DP:I = 0x380

.field public static final DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO:I = 0x2c0000

.field public static final DEVICE_OUT_ALL_SCO:I = 0x70

.field public static final DEVICE_OUT_ALL_USB:I = 0x4006000

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_BUS:I = 0x1000000

.field public static final DEVICE_OUT_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hmdi_arc"

.field public static final DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final DEVICE_OUT_HEARING_AID:I = 0x8000000

.field public static final DEVICE_OUT_HEARING_AID_NAME:Ljava/lang/String; = "hearing_aid_out"

.field public static final DEVICE_OUT_IP:I = 0x800000

.field public static final DEVICE_OUT_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_OUT_PROXY:I = 0x2000000

.field public static final DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_SPEAKER_SAFE:I = 0x400000

.field public static final DEVICE_OUT_SPEAKER_SAFE_NAME:Ljava/lang/String; = "speaker_safe"

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field private static final DYNAMIC_POLICY_EVENT_MIX_STATE_UPDATE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_ENCODED_SURROUND_ALWAYS:I = 0xe

.field public static final FORCE_ENCODED_SURROUND_MANUAL:I = 0xf

.field public static final FORCE_ENCODED_SURROUND_NEVER:I = 0xd

.field public static final FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_ENCODED_SURROUND:I = 0x6

.field public static final FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final FOR_SYSTEM:I = 0x4

.field public static final FOR_VIBRATE_RINGING:I = 0x7

.field public static final INVALID_OPERATION:I = -0x3

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field static final NATIVE_EVENT_ROUTING_CHANGE:I = 0x3e8

.field public static final NO_INIT:I = -0x5

.field private static final NUM_DEVICE_STATES:I = 0x1

.field public static final NUM_FORCE_CONFIG:I = 0x10

.field private static final NUM_FORCE_USE:I = 0x8

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xb

.field public static final PERMISSION_DENIED:I = -0x4

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final PLATFORM_DEFAULT:I = 0x0

.field public static final PLATFORM_TELEVISION:I = 0x2

.field public static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_ACCESSIBILITY:I = 0xa

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NAMES:[Ljava/lang/String;

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioSystem"

.field public static final WOULD_BLOCK:I = -0x7

.field private static mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

.field public static mListener:Landroid/media/AudioSystem$OnCallbackListener;

.field private static mSessionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private static sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 81
    const-string v0, "STREAM_VOICE_CALL"

    const-string v1, "STREAM_SYSTEM"

    const-string v2, "STREAM_RING"

    const-string v3, "STREAM_MUSIC"

    const-string v4, "STREAM_ALARM"

    const-string v5, "STREAM_NOTIFICATION"

    const-string v6, "STREAM_BLUETOOTH_SCO"

    const-string v7, "STREAM_SYSTEM_ENFORCED"

    const-string v8, "STREAM_DTMF"

    const-string v9, "STREAM_TTS"

    const-string v10, "STREAM_ACCESSIBILITY"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    .line 895
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->mSessionId:Ljava/util/ArrayList;

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x7
        0x5
        0x5
        0x6
        0x5
        0x7
        0x7
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkAudioFlinger()I
.end method

.method public static native createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method public static deviceStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 519
    packed-switch p0, :pswitch_data_0

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 521
    :pswitch_0
    const-string v0, "DEVICE_STATE_AVAILABLE"

    return-object v0

    .line 520
    :pswitch_1
    const-string v0, "DEVICE_STATE_UNAVAILABLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static dynamicPolicyCallbackFromNative(ILjava/lang/String;I)V
    .locals 4
    .param p0, "event"    # I
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 281
    :try_start_0
    sget-object v2, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    if-eqz v2, :cond_0

    .line 282
    sget-object v2, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    move-object v0, v2

    .line 284
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    if-eqz v0, :cond_2

    .line 286
    if-eqz p0, :cond_1

    .line 291
    const-string v1, "AudioSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicPolicyCallbackFromNative: unknown event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_1
    invoke-interface {v0, p1, p2}, Landroid/media/AudioSystem$DynamicPolicyCallback;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    .line 289
    nop

    .line 294
    :cond_2
    :goto_0
    return-void

    .line 284
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static errorCallbackFromNative(I)V
    .locals 3
    .param p0, "error"    # I

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 246
    :try_start_0
    sget-object v2, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz v2, :cond_0

    .line 247
    sget-object v2, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    move-object v0, v2

    .line 249
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    invoke-interface {v0, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 253
    :cond_1
    return-void

    .line 249
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static forceUseConfigToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "config"    # I

    .line 726
    packed-switch p0, :pswitch_data_0

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown config ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 742
    :pswitch_0
    const-string v0, "FORCE_ENCODED_SURROUND_MANUAL"

    return-object v0

    .line 741
    :pswitch_1
    const-string v0, "FORCE_ENCODED_SURROUND_ALWAYS"

    return-object v0

    .line 740
    :pswitch_2
    const-string v0, "FORCE_ENCODED_SURROUND_NEVER"

    return-object v0

    .line 739
    :pswitch_3
    const-string v0, "FORCE_HDMI_SYSTEM_AUDIO_ENFORCED"

    return-object v0

    .line 738
    :pswitch_4
    const-string v0, "FORCE_SYSTEM_ENFORCED"

    return-object v0

    .line 737
    :pswitch_5
    const-string v0, "FORCE_NO_BT_A2DP"

    return-object v0

    .line 736
    :pswitch_6
    const-string v0, "FORCE_DIGITAL_DOCK"

    return-object v0

    .line 735
    :pswitch_7
    const-string v0, "FORCE_ANALOG_DOCK"

    return-object v0

    .line 734
    :pswitch_8
    const-string v0, "FORCE_BT_DESK_DOCK"

    return-object v0

    .line 733
    :pswitch_9
    const-string v0, "FORCE_BT_CAR_DOCK"

    return-object v0

    .line 732
    :pswitch_a
    const-string v0, "FORCE_WIRED_ACCESSORY"

    return-object v0

    .line 731
    :pswitch_b
    const-string v0, "FORCE_BT_A2DP"

    return-object v0

    .line 730
    :pswitch_c
    const-string v0, "FORCE_BT_SCO"

    return-object v0

    .line 729
    :pswitch_d
    const-string v0, "FORCE_HEADPHONES"

    return-object v0

    .line 728
    :pswitch_e
    const-string v0, "FORCE_SPEAKER"

    return-object v0

    .line 727
    :pswitch_f
    const-string v0, "FORCE_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static forceUseUsageToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "usage"    # I

    .line 759
    packed-switch p0, :pswitch_data_0

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 767
    :pswitch_0
    const-string v0, "FOR_VIBRATE_RINGING"

    return-object v0

    .line 766
    :pswitch_1
    const-string v0, "FOR_ENCODED_SURROUND"

    return-object v0

    .line 765
    :pswitch_2
    const-string v0, "FOR_HDMI_SYSTEM_AUDIO"

    return-object v0

    .line 764
    :pswitch_3
    const-string v0, "FOR_SYSTEM"

    return-object v0

    .line 763
    :pswitch_4
    const-string v0, "FOR_DOCK"

    return-object v0

    .line 762
    :pswitch_5
    const-string v0, "FOR_RECORD"

    return-object v0

    .line 761
    :pswitch_6
    const-string v0, "FOR_MEDIA"

    return-object v0

    .line 760
    :pswitch_7
    const-string v0, "FOR_COMMUNICATION"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static native getActivePids()[I
.end method

.method public static native getAudioHwSyncForSession(I)I
.end method

.method public static getDefaultStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .line 892
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static native getDevicesForStream(I)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static getInputDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # I

    .line 647
    sparse-switch p0, :sswitch_data_0

    .line 696
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 693
    :sswitch_0
    const-string/jumbo v0, "usb_headset"

    return-object v0

    .line 691
    :sswitch_1
    const-string/jumbo v0, "proxy"

    return-object v0

    .line 689
    :sswitch_2
    const-string v0, "bus"

    return-object v0

    .line 687
    :sswitch_3
    const-string v0, "ip"

    return-object v0

    .line 685
    :sswitch_4
    const-string/jumbo v0, "loopback"

    return-object v0

    .line 683
    :sswitch_5
    const-string v0, "bt_a2dp"

    return-object v0

    .line 681
    :sswitch_6
    const-string/jumbo v0, "spdif"

    return-object v0

    .line 679
    :sswitch_7
    const-string/jumbo v0, "line"

    return-object v0

    .line 677
    :sswitch_8
    const-string/jumbo v0, "tv_tuner"

    return-object v0

    .line 675
    :sswitch_9
    const-string v0, "fm_tuner"

    return-object v0

    .line 673
    :sswitch_a
    const-string/jumbo v0, "usb_device"

    return-object v0

    .line 671
    :sswitch_b
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    .line 669
    :sswitch_c
    const-string v0, "digital_dock"

    return-object v0

    .line 667
    :sswitch_d
    const-string v0, "analog_dock"

    return-object v0

    .line 665
    :sswitch_e
    const-string/jumbo v0, "remote_submix"

    return-object v0

    .line 663
    :sswitch_f
    const-string v0, "back_mic"

    return-object v0

    .line 661
    :sswitch_10
    const-string/jumbo v0, "telephony_rx"

    return-object v0

    .line 659
    :sswitch_11
    const-string v0, "aux_digital"

    return-object v0

    .line 657
    :sswitch_12
    const-string v0, "headset"

    return-object v0

    .line 655
    :sswitch_13
    const-string v0, "bt_sco_hs"

    return-object v0

    .line 653
    :sswitch_14
    const-string/jumbo v0, "mic"

    return-object v0

    .line 651
    :sswitch_15
    const-string v0, "ambient"

    return-object v0

    .line 649
    :sswitch_16
    const-string v0, "communication"

    return-object v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fffffff -> :sswitch_16
        -0x7ffffffe -> :sswitch_15
        -0x7ffffffc -> :sswitch_14
        -0x7ffffff8 -> :sswitch_13
        -0x7ffffff0 -> :sswitch_12
        -0x7fffffe0 -> :sswitch_11
        -0x7fffffc0 -> :sswitch_10
        -0x7fffff80 -> :sswitch_f
        -0x7fffff00 -> :sswitch_e
        -0x7ffffe00 -> :sswitch_d
        -0x7ffffc00 -> :sswitch_c
        -0x7ffff800 -> :sswitch_b
        -0x7ffff000 -> :sswitch_a
        -0x7fffe000 -> :sswitch_9
        -0x7fffc000 -> :sswitch_8
        -0x7fff8000 -> :sswitch_7
        -0x7fff0000 -> :sswitch_6
        -0x7ffe0000 -> :sswitch_5
        -0x7ffc0000 -> :sswitch_4
        -0x7ff80000 -> :sswitch_3
        -0x7ff00000 -> :sswitch_2
        -0x7f000000 -> :sswitch_1
        -0x7e000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static native getMasterMono()Z
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static native getMicrophones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public static final getNumStreamTypes()I
    .locals 1

    .line 79
    const/16 v0, 0xb

    return v0
.end method

.method public static getOutputDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # I

    .line 582
    sparse-switch p0, :sswitch_data_0

    .line 641
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 638
    :sswitch_0
    const-string v0, "hearing_aid_out"

    return-object v0

    .line 636
    :sswitch_1
    const-string/jumbo v0, "usb_headset"

    return-object v0

    .line 634
    :sswitch_2
    const-string/jumbo v0, "proxy"

    return-object v0

    .line 632
    :sswitch_3
    const-string v0, "bus"

    return-object v0

    .line 630
    :sswitch_4
    const-string v0, "ip"

    return-object v0

    .line 628
    :sswitch_5
    const-string/jumbo v0, "speaker_safe"

    return-object v0

    .line 626
    :sswitch_6
    const-string v0, "aux_line"

    return-object v0

    .line 624
    :sswitch_7
    const-string v0, "fm_transmitter"

    return-object v0

    .line 622
    :sswitch_8
    const-string/jumbo v0, "spdif"

    return-object v0

    .line 620
    :sswitch_9
    const-string v0, "hmdi_arc"

    return-object v0

    .line 618
    :sswitch_a
    const-string/jumbo v0, "line"

    return-object v0

    .line 616
    :sswitch_b
    const-string/jumbo v0, "telephony_tx"

    return-object v0

    .line 614
    :sswitch_c
    const-string/jumbo v0, "remote_submix"

    return-object v0

    .line 612
    :sswitch_d
    const-string/jumbo v0, "usb_device"

    return-object v0

    .line 610
    :sswitch_e
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    .line 608
    :sswitch_f
    const-string v0, "digital_dock"

    return-object v0

    .line 606
    :sswitch_10
    const-string v0, "analog_dock"

    return-object v0

    .line 604
    :sswitch_11
    const-string v0, "hdmi"

    return-object v0

    .line 602
    :sswitch_12
    const-string v0, "bt_a2dp_spk"

    return-object v0

    .line 600
    :sswitch_13
    const-string v0, "bt_a2dp_hp"

    return-object v0

    .line 598
    :sswitch_14
    const-string v0, "bt_a2dp"

    return-object v0

    .line 596
    :sswitch_15
    const-string v0, "bt_sco_carkit"

    return-object v0

    .line 594
    :sswitch_16
    const-string v0, "bt_sco_hs"

    return-object v0

    .line 592
    :sswitch_17
    const-string v0, "bt_sco"

    return-object v0

    .line 590
    :sswitch_18
    const-string v0, "headphone"

    return-object v0

    .line 588
    :sswitch_19
    const-string v0, "headset"

    return-object v0

    .line 586
    :sswitch_1a
    const-string/jumbo v0, "speaker"

    return-object v0

    .line 584
    :sswitch_1b
    const-string v0, "earpiece"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_1a
        0x4 -> :sswitch_19
        0x8 -> :sswitch_18
        0x10 -> :sswitch_17
        0x20 -> :sswitch_16
        0x40 -> :sswitch_15
        0x80 -> :sswitch_14
        0x100 -> :sswitch_13
        0x200 -> :sswitch_12
        0x400 -> :sswitch_11
        0x800 -> :sswitch_10
        0x1000 -> :sswitch_f
        0x2000 -> :sswitch_e
        0x4000 -> :sswitch_d
        0x8000 -> :sswitch_c
        0x10000 -> :sswitch_b
        0x20000 -> :sswitch_a
        0x40000 -> :sswitch_9
        0x80000 -> :sswitch_8
        0x100000 -> :sswitch_7
        0x200000 -> :sswitch_6
        0x400000 -> :sswitch_5
        0x800000 -> :sswitch_4
        0x1000000 -> :sswitch_3
        0x2000000 -> :sswitch_2
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static native getOutputLatency(I)I
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getPlatformType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 931
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const/4 v0, 0x1

    return v0

    .line 933
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    const/4 v0, 0x2

    return v0

    .line 936
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static native getPrimaryOutputFrameCount()I
.end method

.method public static native getPrimaryOutputSamplingRate()I
.end method

.method public static native getStreamVolumeDB(III)F
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static native getSurroundFormats(Ljava/util/Map;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 883
    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x3

    shl-int v0, v1, v0

    not-int v0, v0

    and-int/2addr p0, v0

    .line 886
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 888
    return p0
.end method

.method public static native handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isActive(I)Z
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method static isOffloadSupported(Landroid/media/AudioFormat;)Z
    .locals 4
    .param p0, "format"    # Landroid/media/AudioFormat;

    .line 837
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 838
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    .line 837
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioSystem;->native_is_offload_supported(IIII)Z

    move-result v0

    return v0
.end method

.method public static isSingleVolume(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 945
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 947
    .local v0, "forceSingleVolume":Z
    invoke-static {p0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static native isSourceActive(I)Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native isStreamActiveRemotely(II)Z
.end method

.method public static native listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 121
    packed-switch p0, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown mode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :pswitch_0
    const-string v0, "MODE_IN_COMMUNICATION"

    return-object v0

    .line 123
    :pswitch_1
    const-string v0, "MODE_IN_CALL"

    return-object v0

    .line 127
    :pswitch_2
    const-string v0, "MODE_RINGTONE"

    return-object v0

    .line 126
    :pswitch_3
    const-string v0, "MODE_NORMAL"

    return-object v0

    .line 122
    :pswitch_4
    const-string v0, "MODE_CURRENT"

    return-object v0

    .line 125
    :pswitch_5
    const-string v0, "MODE_INVALID"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native muteMicrophone(Z)I
.end method

.method private static native native_is_offload_supported(IIII)Z
.end method

.method private static final native native_register_dynamic_policy_callback()V
.end method

.method public static final native native_register_flinger_state_callback()V
.end method

.method private static final native native_register_recording_callback()V
.end method

.method public static native newAudioPlayerId()I
.end method

.method public static native newAudioSessionId()I
.end method

.method private static postEventFromNative(IIIIILjava/lang/Object;)V
    .locals 4
    .param p0, "what"    # I
    .param p1, "sessionId"    # I
    .param p2, "streamType"    # I
    .param p3, "state"    # I
    .param p4, "pid"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 969
    const-string v0, "AudioSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "color_debug Event postEventFromNative sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mSessionId.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/media/AudioSystem;->mSessionId:Ljava/util/ArrayList;

    .line 970
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager$Trigger;->notePlayAudioChange(IIII)V

    .line 974
    sget-object v0, Landroid/media/AudioSystem;->mSessionId:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne p3, v3, :cond_1

    if-ne p2, v2, :cond_1

    .line 975
    sget-object v0, Landroid/media/AudioSystem;->mSessionId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    sget-object v0, Landroid/media/AudioSystem;->mSessionId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_0
    sget-object v0, Landroid/media/AudioSystem;->mListener:Landroid/media/AudioSystem$OnCallbackListener;

    if-eqz v0, :cond_6

    .line 979
    sget-object v0, Landroid/media/AudioSystem;->mListener:Landroid/media/AudioSystem$OnCallbackListener;

    invoke-interface {v0, p3, p4, v1}, Landroid/media/AudioSystem$OnCallbackListener;->onListener(III)V

    goto :goto_1

    .line 981
    :cond_1
    sget-object v0, Landroid/media/AudioSystem;->mSessionId:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    if-nez p3, :cond_5

    if-ne p2, v2, :cond_5

    .line 982
    sget-object v0, Landroid/media/AudioSystem;->mSessionId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 983
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 984
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 985
    .local v2, "id":I
    if-ne v2, p1, :cond_2

    .line 986
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 988
    .end local v2    # "id":I
    :cond_2
    goto :goto_0

    .line 990
    :cond_3
    sget-object v2, Landroid/media/AudioSystem;->mListener:Landroid/media/AudioSystem$OnCallbackListener;

    if-eqz v2, :cond_4

    .line 991
    sget-object v2, Landroid/media/AudioSystem;->mListener:Landroid/media/AudioSystem$OnCallbackListener;

    invoke-interface {v2, p3, p4, v1}, Landroid/media/AudioSystem$OnCallbackListener;->onListener(III)V

    .line 993
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_4
    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    if-ne p2, v0, :cond_6

    sget-object v0, Landroid/media/AudioSystem;->mListener:Landroid/media/AudioSystem$OnCallbackListener;

    if-eqz v0, :cond_6

    .line 994
    sget-object v0, Landroid/media/AudioSystem;->mListener:Landroid/media/AudioSystem$OnCallbackListener;

    invoke-interface {v0, p3, p4, v3}, Landroid/media/AudioSystem$OnCallbackListener;->onListener(III)V

    .line 996
    :cond_6
    :goto_1
    return-void
.end method

.method private static recordingCallbackFromNative(IIII[I)V
    .locals 10
    .param p0, "event"    # I
    .param p1, "uid"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "recordingFormat"    # [I

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "cb":Landroid/media/AudioSystem$AudioRecordingCallback;
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 345
    :try_start_0
    sget-object v2, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    move-object v0, v2

    .line 346
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    if-eqz v0, :cond_0

    .line 349
    const-string v9, ""

    move-object v3, v0

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-interface/range {v3 .. v9}, Landroid/media/AudioSystem$AudioRecordingCallback;->onRecordingConfigurationChanged(IIII[ILjava/lang/String;)V

    .line 351
    :cond_0
    return-void

    .line 346
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static native registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static native setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static setCallbackListener(Landroid/media/AudioSystem$OnCallbackListener;)V
    .locals 0
    .param p0, "listener"    # Landroid/media/AudioSystem$OnCallbackListener;

    .line 999
    sput-object p0, Landroid/media/AudioSystem;->mListener:Landroid/media/AudioSystem$OnCallbackListener;

    .line 1000
    return-void
.end method

.method public static native setDeviceCallbackEnabled(Z)V
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 271
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 272
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 273
    invoke-static {}, Landroid/media/AudioSystem;->native_register_dynamic_policy_callback()V

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$ErrorCallback;

    .line 234
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 235
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 236
    if-eqz p0, :cond_0

    .line 237
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    invoke-interface {p0, v1}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 239
    :cond_0
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setLowRamDevice(ZJ)I
.end method

.method public static native setMasterMono(Z)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 326
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 327
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 328
    invoke-static {}, Landroid/media/AudioSystem;->native_register_recording_callback()V

    .line 329
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native setStreamVolumeIndex(III)I
.end method

.method public static native setSurroundFormatEnabled(IZ)I
.end method

.method public static streamToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stream"    # I

    .line 910
    if-ltz p0, :cond_0

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 911
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    return-object v0

    .line 912
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native systemReady()I
.end method
