.class public final Landroid/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCESS_ALLOWED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACCESS_REJECTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACCESS_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field public static final ACTION_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final ACTION_ACL_DISCONNECT_REQUESTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

.field public static final ACTION_ALIAS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.ALIAS_CHANGED"

.field public static final ACTION_BATTERY_LEVEL_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

.field public static final ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final ACTION_CLASS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.CLASS_CHANGED"

.field public static final ACTION_CONNECTION_ACCESS_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

.field public static final ACTION_CONNECTION_ACCESS_REPLY:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

.field public static final ACTION_CONNECTION_ACCESS_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_FOUND:Ljava/lang/String; = "android.bluetooth.device.action.FOUND"

.field public static final ACTION_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.action.MAS_INSTANCE"

.field public static final ACTION_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_CHANGED"

.field public static final ACTION_NAME_FAILED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_FAILED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field public static final ACTION_REMOTE_ISSUE_OCCURRED:Ljava/lang/String; = "org.codeaurora.intent.bluetooth.action.REMOTE_ISSUE_OCCURRED"

.field public static final ACTION_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.action.SDP_RECORD"

.field public static final ACTION_TWS_PLUS_DEVICE_PAIR:Ljava/lang/String; = "android.bluetooth.device.action.TWS_PLUS_DEVICE_PAIR"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final BATTERY_LEVEL_UNKNOWN:I = -0x1

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final BOND_SUCCESS:I = 0x0

.field public static final CONNECTION_ACCESS_NO:I = 0x2

.field public static final CONNECTION_ACCESS_YES:I = 0x1

.field private static final CONNECTION_STATE_CONNECTED:I = 0x1

.field private static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field private static final CONNECTION_STATE_ENCRYPTED_BREDR:I = 0x2

.field private static final CONNECTION_STATE_ENCRYPTED_LE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final DEVICE_TYPE_CLASSIC:I = 0x1

.field public static final DEVICE_TYPE_DUAL:I = 0x3

.field public static final DEVICE_TYPE_LE:I = 0x2

.field public static final DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_ACCESS_REQUEST_TYPE:Ljava/lang/String; = "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

.field public static final EXTRA_ALWAYS_ALLOWED:Ljava/lang/String; = "android.bluetooth.device.extra.ALWAYS_ALLOWED"

.field public static final EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "android.bluetooth.device.extra.BATTERY_LEVEL"

.field public static final EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final EXTRA_CLASS:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS_NAME"

.field public static final EXTRA_CONNECTION_ACCESS_RESULT:Ljava/lang/String; = "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "android.bluetooth.qti.extra.ERROR_CODE"

.field public static final EXTRA_ERROR_EVENT_MASK:Ljava/lang/String; = "android.bluetooth.qti.extra.ERROR_EVENT_MASK"

.field public static final EXTRA_GLITCH_COUNT:Ljava/lang/String; = "android.bluetooth.qti.extra.EXTRA_GLITCH_COUNT"

.field public static final EXTRA_ISSUE_TYPE:Ljava/lang/String; = "android.bluetooth.qti.extra.ERROR_TYPE"

.field public static final EXTRA_LINK_QUALITY:Ljava/lang/String; = "android.bluetooth.qti.extra.EXTRA_LINK_QUALITY"

.field public static final EXTRA_LMP_SUBVER:Ljava/lang/String; = "android.bluetooth.qti.extra.EXTRA_LMP_SUBVER"

.field public static final EXTRA_LMP_VERSION:Ljava/lang/String; = "android.bluetooth.qti.extra.EXTRA_LMP_VERSION"

.field public static final EXTRA_MANUFACTURER:Ljava/lang/String; = "android.bluetooth.qti.extra.EXTRA_MANUFACTURER"

.field public static final EXTRA_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.extra.MAS_INSTANCE"

.field public static final EXTRA_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.NAME"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.PACKAGE_NAME"

.field public static final EXTRA_PAIRING_KEY:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_KEY"

.field public static final EXTRA_PAIRING_VARIANT:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_VARIANT"

.field public static final EXTRA_POWER_LEVEL:Ljava/lang/String; = "android.bluetooth.qti.extra.EXTRA_POWER_LEVEL"

.field public static final EXTRA_PREVIOUS_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "android.bluetooth.device.extra.RSSI"

.field public static final EXTRA_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_RECORD"

.field public static final EXTRA_SDP_SEARCH_STATUS:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

.field public static final EXTRA_TWS_PLUS_DEVICE1:Ljava/lang/String; = "android.bluetooth.device.extra.EXTRA_TWS_PLUS_DEVICE1"

.field public static final EXTRA_TWS_PLUS_DEVICE2:Ljava/lang/String; = "android.bluetooth.device.extra.EXTRA_TWS_PLUS_DEVICE2"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"

.field public static final PAIRING_VARIANT_CONSENT:I = 0x3

.field public static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field public static final PAIRING_VARIANT_DISPLAY_PIN:I = 0x5

.field public static final PAIRING_VARIANT_OOB_CONSENT:I = 0x6

.field public static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field public static final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field public static final PAIRING_VARIANT_PIN:I = 0x0

.field public static final PAIRING_VARIANT_PIN_16_DIGITS:I = 0x7

.field public static final PHY_LE_1M:I = 0x1

.field public static final PHY_LE_1M_MASK:I = 0x1

.field public static final PHY_LE_2M:I = 0x2

.field public static final PHY_LE_2M_MASK:I = 0x2

.field public static final PHY_LE_CODED:I = 0x3

.field public static final PHY_LE_CODED_MASK:I = 0x4

.field public static final PHY_OPTION_NO_PREFERRED:I = 0x0

.field public static final PHY_OPTION_S2:I = 0x1

.field public static final PHY_OPTION_S8:I = 0x2

.field public static final REQUEST_TYPE_MESSAGE_ACCESS:I = 0x3

.field public static final REQUEST_TYPE_PHONEBOOK_ACCESS:I = 0x2

.field public static final REQUEST_TYPE_PROFILE_CONNECTION:I = 0x1

.field public static final REQUEST_TYPE_SIM_ACCESS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothDevice"

.field public static final TRANSPORT_AUTO:I = 0x0

.field public static final TRANSPORT_BREDR:I = 0x1

.field public static final TRANSPORT_LE:I = 0x2

.field public static final UNBOND_REASON_AUTH_CANCELED:I = 0x3

.field public static final UNBOND_REASON_AUTH_FAILED:I = 0x1

.field public static final UNBOND_REASON_AUTH_REJECTED:I = 0x2

.field public static final UNBOND_REASON_AUTH_TIMEOUT:I = 0x6

.field public static final UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5

.field public static final UNBOND_REASON_REMOTE_AUTH_CANCELED:I = 0x8

.field public static final UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4

.field public static final UNBOND_REASON_REMOVED:I = 0x9

.field public static final UNBOND_REASON_REPEATED_ATTEMPTS:I = 0x7

.field private static volatile sService:Landroid/bluetooth/IBluetooth;

.field static sStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;


# instance fields
.field private final mAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 874
    new-instance v0, Landroid/bluetooth/BluetoothDevice$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->sStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 949
    new-instance v0, Landroid/bluetooth/BluetoothDevice$2;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$2;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    .line 910
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    .line 915
    return-void

    .line 911
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid Bluetooth address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Landroid/bluetooth/IBluetooth;
    .locals 1

    .line 108
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$002(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/IBluetooth;

    .line 108
    sput-object p0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method public static convertPinToBytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "pin"    # Ljava/lang/String;

    .line 1950
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1951
    return-object v0

    .line 1955
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    .local v1, "pinBytes":[B
    nop

    .line 1958
    nop

    .line 1960
    array-length v2, v1

    if-lez v2, :cond_2

    array-length v2, v1

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 1963
    :cond_1
    return-object v1

    .line 1961
    :cond_2
    :goto_0
    return-object v0

    .line 1956
    .end local v1    # "pinBytes":[B
    :catch_0
    move-exception v1

    .line 1957
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v2, "BluetoothDevice"

    const-string v3, "UTF-8 not supported?!?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    return-object v0
.end method

.method static getService()Landroid/bluetooth/IBluetooth;
    .locals 4

    .line 863
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 864
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 866
    .local v1, "tService":Landroid/bluetooth/IBluetooth;
    const-class v2, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v2

    .line 867
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 868
    sput-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 870
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object v2

    .line 870
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public cancelBondProcess()Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1253
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1254
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1255
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot cancel Remote Device bond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    return v1

    .line 1259
    :cond_0
    :try_start_0
    const-string v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelBondProcess() for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " called by pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1263
    :catch_0
    move-exception v2

    .line 1264
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1266
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public cancelPairingUserInput()Z
    .locals 5

    .line 1576
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1577
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1578
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot create pairing user input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    return v1

    .line 1582
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1583
    :catch_0
    move-exception v2

    .line 1584
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1586
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .line 1980
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I

    .line 2000
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I
    .param p5, "phy"    # I

    .line 2024
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I
    .param p5, "phy"    # I
    .param p6, "handler"    # Landroid/os/Handler;

    .line 2051
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IZILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IZILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I
    .param p5, "opportunistic"    # Z
    .param p6, "phy"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    move-object v1, p3

    .line 2083
    if-eqz v1, :cond_1

    .line 2089
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 2090
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    move-object v3, v0

    .line 2092
    .local v3, "managerService":Landroid/bluetooth/IBluetoothManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    .line 2093
    .local v0, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v0, :cond_0

    .line 2095
    return-object v4

    .line 2097
    :cond_0
    new-instance v11, Landroid/bluetooth/BluetoothGatt;

    move-object v5, v11

    move-object v6, v0

    move-object v7, p0

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Landroid/bluetooth/BluetoothGatt;-><init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;IZI)V

    move-object v5, v11

    .line 2098
    .local v5, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p7

    :try_start_1
    invoke-virtual {v5, v6, v1, v7}, Landroid/bluetooth/BluetoothGatt;->connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2099
    return-object v5

    .line 2100
    .end local v0    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v5    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v7, p7

    .line 2101
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    const-string v5, "BluetoothDevice"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2103
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v4

    .line 2084
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_1
    move-object/from16 v7, p7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "callback is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createBond()Z
    .locals 5

    .line 1123
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1124
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1125
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot create bond to Remote Device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return v1

    .line 1129
    :cond_0
    :try_start_0
    const-string v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createBond() for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " called by pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1129
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-interface {v0, p0, v1}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1133
    :catch_0
    move-exception v2

    .line 1134
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public createBond(I)Z
    .locals 5
    .param p1, "transport"    # I

    .line 1156
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1157
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1158
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot create bond to Remote Device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return v1

    .line 1161
    :cond_0
    if-ltz p1, :cond_1

    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    .line 1165
    :try_start_0
    const-string v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createBond() for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " called by pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1165
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-interface {v0, p0, p1}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1169
    :catch_0
    move-exception v2

    .line 1170
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    .line 1162
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid Bluetooth transport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createBondOutOfBand(ILandroid/bluetooth/OobData;)Z
    .locals 5
    .param p1, "transport"    # I
    .param p2, "oobData"    # Landroid/bluetooth/OobData;

    .line 1194
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1195
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1196
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled, createBondOutOfBand failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return v1

    .line 1200
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Landroid/bluetooth/IBluetooth;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1201
    :catch_0
    move-exception v2

    .line 1202
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1204
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public createInsecureL2capCocSocket(II)Landroid/bluetooth/BluetoothSocket;
    .locals 9
    .param p1, "transport"    # I
    .param p2, "psm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2163
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2167
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2173
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p0

    move v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0

    .line 2168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2164
    :cond_1
    const-string v0, "BluetoothDevice"

    const-string v1, "createInsecureL2capCocSocket: Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public createInsecureL2capSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 9
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1817
    new-instance v8, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v8
.end method

.method public createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 9
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1914
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1918
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0

    .line 1915
    :cond_0
    const-string v0, "BluetoothDevice"

    const-string v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 9
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1891
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    new-instance v8, Landroid/os/ParcelUuid;

    invoke-direct {v8, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0

    .line 1892
    :cond_0
    const-string v0, "BluetoothDevice"

    const-string v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public createL2capCocSocket(II)Landroid/bluetooth/BluetoothSocket;
    .locals 9
    .param p1, "transport"    # I
    .param p2, "psm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2130
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2134
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2138
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p0

    move v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0

    .line 2135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2131
    :cond_1
    const-string v0, "BluetoothDevice"

    const-string v1, "createL2capCocSocket: Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 9
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1796
    new-instance v8, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v8
.end method

.method public createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 9
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1762
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0

    .line 1763
    :cond_0
    const-string v0, "BluetoothDevice"

    const-string v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 9
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1853
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1858
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, -0x1

    new-instance v8, Landroid/os/ParcelUuid;

    invoke-direct {v8, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0

    .line 1854
    :cond_0
    const-string v0, "BluetoothDevice"

    const-string v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public createScoSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1933
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0

    .line 1934
    :cond_0
    const-string v0, "BluetoothDevice"

    const-string v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .line 946
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 919
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 922
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fetchUuidsWithSdp()Z
    .locals 5

    .line 1431
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1432
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1437
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1438
    :catch_0
    move-exception v2

    .line 1439
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1441
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    .line 1433
    :cond_1
    :goto_0
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot fetchUuidsWithSdp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 973
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 5

    .line 1033
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1034
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1035
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot get Remote Device Alias"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return-object v1

    .line 1039
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1040
    :catch_0
    move-exception v2

    .line 1041
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getAliasName()Ljava/lang/String;
    .locals 1

    .line 1080
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1082
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1084
    :cond_0
    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 5

    .line 1098
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1099
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1100
    const-string v2, "BluetoothDevice"

    const-string v3, "Bluetooth disabled. Cannot get remote device battery level"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return v1

    .line 1104
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1105
    :catch_0
    move-exception v2

    .line 1106
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1108
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 5

    .line 1376
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1377
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1378
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot get Bluetooth Class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return-object v1

    .line 1382
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1383
    .local v2, "classInt":I
    const/high16 v3, -0x1000000

    if-ne v2, v3, :cond_1

    return-object v1

    .line 1384
    :cond_1
    new-instance v3, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v3, v2}, Landroid/bluetooth/BluetoothClass;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1385
    .end local v2    # "classInt":I
    :catch_0
    move-exception v2

    .line 1386
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1388
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getBondState()I
    .locals 5

    .line 1309
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1310
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/16 v1, 0xa

    if-nez v0, :cond_0

    .line 1311
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot get bond state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return v1

    .line 1315
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1316
    :catch_0
    move-exception v2

    .line 1317
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1319
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getMessageAccessPermission()I
    .locals 5

    .line 1660
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1661
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1662
    return v1

    .line 1665
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1666
    :catch_0
    move-exception v2

    .line 1667
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1669
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .line 987
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 988
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 989
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot get Remote Device name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-object v1

    .line 993
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 995
    const-string v3, "[\\t\\n\\r]+"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 997
    :cond_1
    return-object v1

    .line 998
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 999
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getPhonebookAccessPermission()I
    .locals 5

    .line 1616
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1617
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1618
    return v1

    .line 1621
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1622
    :catch_0
    move-exception v2

    .line 1623
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1625
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getSimAccessPermission()I
    .locals 5

    .line 1702
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1703
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1704
    return v1

    .line 1707
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1708
    :catch_0
    move-exception v2

    .line 1709
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1711
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getTwsPlusPeerAddress()Ljava/lang/String;
    .locals 4

    .line 1504
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1505
    const-string v0, "BluetoothDevice"

    const-string v2, "BT not enabled. Cannot get Remote Device name"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    return-object v1

    .line 1509
    :cond_0
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getTwsPlusPeerAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1510
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothDevice"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getType()I
    .locals 5

    .line 1012
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1013
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1014
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot get Remote Device type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return v1

    .line 1018
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1019
    :catch_0
    move-exception v2

    .line 1020
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 5

    .line 1403
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1404
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1409
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1410
    :catch_0
    move-exception v2

    .line 1411
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1413
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1

    .line 1405
    :cond_1
    :goto_0
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot get remote device Uuids"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 927
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBluetoothDock()Z
    .locals 1

    .line 1596
    const/4 v0, 0x0

    return v0
.end method

.method isBluetoothEnabled()Z
    .locals 3

    .line 1600
    const/4 v0, 0x0

    .line 1601
    .local v0, "ret":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1602
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1603
    const/4 v0, 0x1

    .line 1605
    :cond_0
    return v0
.end method

.method public isBondingInitiatedLocally()Z
    .locals 5

    .line 1209
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1210
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1211
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled, isBondingInitiatedLocally failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return v1

    .line 1215
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1216
    :catch_0
    move-exception v2

    .line 1217
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isConnected()Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1332
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1333
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1335
    return v1

    .line 1338
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 1339
    :catch_0
    move-exception v2

    .line 1340
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1341
    return v1
.end method

.method public isEncrypted()Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1356
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1357
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1359
    return v1

    .line 1362
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1

    .line 1363
    :catch_0
    move-exception v2

    .line 1364
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1365
    return v1
.end method

.method public isTwsPlusDevice()Z
    .locals 4

    .line 1486
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1487
    const-string v0, "BluetoothDevice"

    const-string v2, "BT not enabled. Cannot query remote device sdp records"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    return v1

    .line 1491
    :cond_0
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->isTwsPlusDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1492
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothDevice"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1493
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public removeBond()Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1282
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1283
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1284
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot remove Remote Device bond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return v1

    .line 1288
    :cond_0
    :try_start_0
    const-string v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeBond() for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " called by pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1288
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetooth;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1292
    :catch_0
    move-exception v2

    .line 1293
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1295
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sdpSearch(Landroid/os/ParcelUuid;)Z
    .locals 5
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .line 1466
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1467
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1468
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot query remote device sdp records"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return v1

    .line 1472
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/bluetooth/IBluetooth;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1473
    :catch_0
    move-exception v2

    .line 1474
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1476
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setAlias(Ljava/lang/String;)Z
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 1057
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1058
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1059
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot set Remote Device name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return v1

    .line 1063
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/bluetooth/IBluetooth;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1064
    :catch_0
    move-exception v2

    .line 1065
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setDeviceOutOfBandData([B[B)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "randomizer"    # [B

    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method public setMessageAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I

    .line 1682
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1683
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1684
    return v1

    .line 1687
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/bluetooth/IBluetooth;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1688
    :catch_0
    move-exception v2

    .line 1689
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1691
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setPairingConfirmation(Z)Z
    .locals 5
    .param p1, "confirm"    # Z

    .line 1551
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1552
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1553
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot set pairing confirmation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    return v1

    .line 1557
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/bluetooth/IBluetooth;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1558
    :catch_0
    move-exception v2

    .line 1559
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1561
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setPasskey(I)Z
    .locals 1
    .param p1, "passkey"    # I

    .line 1541
    const/4 v0, 0x0

    return v0
.end method

.method public setPhonebookAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1640
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1641
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1642
    return v1

    .line 1645
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/bluetooth/IBluetooth;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1646
    :catch_0
    move-exception v2

    .line 1647
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1649
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setPin([B)Z
    .locals 5
    .param p1, "pin"    # [B

    .line 1521
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1522
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1523
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot set Remote Device pin"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    return v1

    .line 1527
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    array-length v3, p1

    invoke-interface {v0, p0, v2, v3, p1}, Landroid/bluetooth/IBluetooth;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1528
    :catch_0
    move-exception v2

    .line 1529
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1531
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setRemoteOutOfBandData()Z
    .locals 1

    .line 1571
    const/4 v0, 0x0

    return v0
.end method

.method public setSimAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I

    .line 1724
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1725
    .local v0, "service":Landroid/bluetooth/IBluetooth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1726
    return v1

    .line 1729
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/bluetooth/IBluetooth;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1730
    :catch_0
    move-exception v2

    .line 1731
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1733
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 941
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 962
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 963
    return-void
.end method
