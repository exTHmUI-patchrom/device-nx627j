.class public interface abstract Landroid/bluetooth/BluetoothProfile;
.super Ljava/lang/Object;
.source "BluetoothProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothProfile$ServiceListener;
    }
.end annotation


# static fields
.field public static final A2DP:I = 0x2

.field public static final A2DP_SINK:I = 0xb

.field public static final AVRCP:I = 0xd

.field public static final AVRCP_CONTROLLER:I = 0xc

.field public static final BA_TRANSMITTER:I = 0x17

.field public static final DUN:I = 0x16

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.STATE"

.field public static final GATT:I = 0x7

.field public static final GATT_SERVER:I = 0x8

.field public static final HEADSET:I = 0x1

.field public static final HEADSET_CLIENT:I = 0x10

.field public static final HEALTH:I = 0x3

.field public static final HEARING_AID:I = 0x15

.field public static final HID_DEVICE:I = 0x13

.field public static final HID_HOST:I = 0x4

.field public static final MAP:I = 0x9

.field public static final MAP_CLIENT:I = 0x12

.field public static final MAX_PROFILE_ID:I = 0x17

.field public static final OPP:I = 0x14

.field public static final PAN:I = 0x5

.field public static final PBAP:I = 0x6

.field public static final PBAP_CLIENT:I = 0x11

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PRIORITY_ON:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final SAP:I = 0xa

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3


# direct methods
.method public static getConnectionStateName(I)Ljava/lang/String;
    .locals 1
    .param p0, "connectionState"    # I

    .line 302
    packed-switch p0, :pswitch_data_0

    .line 312
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 310
    :pswitch_0
    const-string v0, "STATE_DISCONNECTING"

    return-object v0

    .line 308
    :pswitch_1
    const-string v0, "STATE_CONNECTED"

    return-object v0

    .line 306
    :pswitch_2
    const-string v0, "STATE_CONNECTING"

    return-object v0

    .line 304
    :pswitch_3
    const-string v0, "STATE_DISCONNECTED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract getConnectedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method
