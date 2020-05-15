.class public Lcom/qualcomm/qcrilhook/QcRilHook;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/IQcRilHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;,
        Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;,
        Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;
    }
.end annotation


# static fields
.field public static final ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW:Ljava/lang/String; = "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

.field private static final AVOIDANCE_BUFF_LEN:I = 0xa4

.field private static final BYTE_SIZE:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_PHONE:I = 0x0

.field private static final EVDO_SET_TYPE_ID:I = 0x4

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "QC_RIL_OEM_HOOK"

.field private static final MAX_PDC_ID_LEN:I = 0x7c

.field private static final MAX_REQUEST_BUFFER_SIZE:I = 0x400

.field private static final MAX_SPC_LEN:I = 0x6

.field public static final QCRIL_MSG_TUNNEL_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel"

.field public static final QCRIL_MSG_TUNNEL_SERVICE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static final RIL_GET_DEVICE_CARIBRATED_ID:I = 0xb

.field private static final RIL_GET_DEV_TYPE_ID:I = 0xa

.field private static final RIL_GET_POLICEMAN_ID:I = 0x9

.field private static final Ril_GET_Antane_ID:I = 0x32

.field private static final Ril_SET_COUNTING_QMI_IND_NUM:I = 0x33

.field private static final VDBG:Z = false

.field private static mRegistrants:Landroid/os/RegistrantList;


# instance fields
.field private final ENCODING:Ljava/lang/String;

.field private mBound:Z

.field private mContext:Landroid/content/Context;

.field private final mHeaderSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "QOEMHOOK"

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 64
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 80
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 86
    const-string v0, "ISO8859-1"

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->ENCODING:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1769
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$6;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$6;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 106
    iput-object p2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 111
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    .line 118
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qcrilmsgtunnel"

    const-string v2, "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "Starting QcrilMsgTunnel Service"

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 130
    .local v1, "status":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to bind service returned with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 133
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    const-string v3, "Registering for intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v2    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncaught Exception while while registering ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW intent. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 119
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "status":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qcrilhook/QcRilHook;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 45
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 45
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/qcrilhook/QcRilHook;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p1, "x1"    # Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 45
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object p1
.end method

.method static synthetic access$302(Lcom/qualcomm/qcrilhook/QcRilHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 45
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    return-object v0
.end method

.method private addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .line 259
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 262
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 266
    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .line 242
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 244
    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 1799
    const-string v0, "QC_RIL_OEM_HOOK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 1807
    return-void
.end method

.method public static notifyRegistrants(Landroid/os/AsyncResult;)V
    .locals 2
    .param p0, "ar"    # Landroid/os/AsyncResult;

    .line 1762
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1763
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1765
    :cond_0
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "QcRilOemHook notifyRegistrants Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :goto_0
    return-void
.end method

.method public static register(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1725
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1726
    .local v0, "r":Landroid/os/Registrant;
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 1727
    :try_start_0
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1728
    monitor-exit v1

    .line 1729
    return-void

    .line 1728
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method private sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "phoneId"    # I

    .line 282
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 284
    .local v0, "response":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 287
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v2, p2, v0, p3}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRaw([B[BI)I

    move-result v2

    .line 288
    .local v2, "retVal":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendOemRilRequestRaw returns value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 289
    const/4 v3, 0x0

    if-ltz v2, :cond_1

    .line 290
    const/4 v4, 0x0

    .line 292
    .local v4, "validResponseBytes":[B
    if-lez v2, :cond_0

    .line 293
    new-array v5, v2, [B

    move-object v4, v5

    .line 294
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 296
    :cond_0
    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v4, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v4    # "validResponseBytes":[B
    move-object v1, v3

    .line 297
    .local v1, "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 303
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_1
    array-length v4, v0

    new-array v4, v4, [B

    .line 304
    .restart local v4    # "validResponseBytes":[B
    array-length v5, v0

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 305
    const/4 v3, -0x1

    mul-int/2addr v3, v2

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 306
    .local v3, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, p2, v4, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v4    # "validResponseBytes":[B
    move-object v1, v5

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :goto_0
    goto :goto_1

    .line 313
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "retVal":I
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException caught at sendOemRilRequestRaw.RequestID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Return Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/NullPointerException;
    move-object v1, v3

    goto :goto_2

    .line 308
    :catch_1
    move-exception v2

    .line 309
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendOemRilRequestRaw RequestID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " exception, unable to send RIL request from this application"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    move-object v1, v3

    .line 317
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :goto_1
    nop

    .line 316
    :goto_2
    nop

    .line 319
    return-object v1
.end method

.method private sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/IOemHookCallback;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRilOemHookMsgAsync: Outgoing Data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v0, p2, p3, p4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NullPointerException caught at sendOemRilRequestRawAsync.RequestID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Throw to the caller"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QC_RIL_OEM_HOOK"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    throw v0

    .line 337
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOemRilRequestRawAsync RequestID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exception, unable to send RIL request from this application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 345
    return-void
.end method

.method public static unregister(Landroid/os/Handler;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;

    .line 1732
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    .line 1733
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p0}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1734
    monitor-exit v0

    .line 1735
    return-void

    .line 1734
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateInternalState()V
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QcRilHook is in disposed state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public QcRilHookServiceReady()Z
    .locals 1

    .line 1977
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    if-nez v0, :cond_0

    .line 1978
    const/4 v0, 0x0

    return v0

    .line 1980
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public SetEvdoType(I)Ljava/lang/String;
    .locals 2
    .param p1, "values"    # I

    .line 2306
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetCommonData(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public StartOrEndAccount(ZI)V
    .locals 2
    .param p1, "isStart"    # Z
    .param p2, "phoneId"    # I

    .line 2289
    const/16 v0, 0x33

    if-eqz p1, :cond_0

    .line 2290
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetCommonData(III)Ljava/lang/String;

    goto :goto_0

    .line 2292
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetCommonData(III)Ljava/lang/String;

    .line 2294
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "dispose(): Unbinding service"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 222
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-interface {v0}, Lcom/qualcomm/qcrilhook/QcRilHookCallback;->onQcRilHookDisconnected()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 225
    :cond_0
    const-string v0, "dispose(): Unregistering receiver"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    .line 229
    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    .line 230
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 232
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 1758
    const-string v0, "is destroyed"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1759
    return-void
.end method

.method public getCommonDataInfo()[Ljava/lang/String;
    .locals 5

    .line 2277
    const/4 v0, 0x0

    .line 2278
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2279
    .local v1, "result_string":Ljava/lang/String;
    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetCommonData(II)Ljava/lang/String;

    move-result-object v1

    .line 2280
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCommonDataInfo src is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2282
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2285
    :cond_0
    return-object v0
.end method

.method public getDeviceCalibratedInfo()Ljava/lang/String;
    .locals 2

    .line 2301
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetCommonData(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTypeInfo()Ljava/lang/String;
    .locals 2

    .line 2297
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetCommonData(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLpluslSupportStatus()Z
    .locals 5

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "status":Z
    const v1, 0x8005e

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 359
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 360
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 361
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    .line 364
    .end local v2    # "response":[B
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLpluslSupportStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 365
    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public qcRilAbortNetworkScan(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 1259
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1260
    const/4 v0, 0x0

    .line 1261
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v1, v1, [B

    .line 1263
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1265
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x8005f

    invoke-direct {p0, v2, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1267
    invoke-direct {p0, v3, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1270
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1271
    const/4 v0, 0x1

    goto :goto_0

    .line 1273
    :cond_0
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL cancel ongoing nw scan returned exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :goto_0
    return v0
.end method

.method public qcRilActivateConfig(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilActivateConfig(II)Z

    move-result v0

    return v0
.end method

.method public qcRilActivateConfig(II)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .line 716
    const-string v0, "QC_RIL_OEM_HOOK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter qcRilActivateConfig phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 720
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 721
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 722
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x80032

    const/4 v4, 0x5

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 723
    int-to-byte v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 724
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 726
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 727
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 728
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_ACT_CONFIGS failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v1, 0x0

    return v1

    .line 732
    :cond_0
    return v1
.end method

.method public qcRilCdmaAvoidCurNwk()Z
    .locals 5

    .line 1159
    const/4 v0, 0x0

    .line 1160
    .local v0, "retval":Z
    const v1, 0x8000e

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1162
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1163
    const/4 v0, 0x1

    goto :goto_0

    .line 1165
    :cond_0
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL Avoid the current cdma network Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :goto_0
    return v0
.end method

.method public qcRilCdmaClearAvoidanceList()Z
    .locals 5

    .line 1194
    const/4 v0, 0x0

    .line 1195
    .local v0, "retval":Z
    const v1, 0x8000f

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1197
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1198
    const/4 v0, 0x1

    goto :goto_0

    .line 1200
    :cond_0
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL Clear the cdma avoidance list Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :goto_0
    return v0
.end method

.method public qcRilCdmaGetAvoidanceList()[B
    .locals 6

    .line 1207
    const/4 v0, 0x0

    .line 1208
    .local v0, "retval":[B
    const v1, 0x80010

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1210
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1211
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1216
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1217
    .local v2, "result":[B
    array-length v3, v2

    const/16 v4, 0xa4

    if-ne v3, v4, :cond_0

    .line 1220
    move-object v0, v2

    goto :goto_0

    .line 1222
    :cond_0
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL Get unexpected cdma avoidance list buffer length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    .end local v2    # "result":[B
    :goto_0
    goto :goto_1

    .line 1226
    :cond_1
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v3, "QCRIL Get cdma avoidance list command returned a null result."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1230
    :cond_2
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL Get the cdma avoidance list Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :goto_1
    return-object v0
.end method

.method public qcRilCleanupConfigs()Z
    .locals 5

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "retval":Z
    const v1, 0x8001f

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 820
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 821
    const/4 v0, 0x1

    goto :goto_0

    .line 823
    :cond_0
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_DELETE_ALL_CONFIGS failed w/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_0
    return v0
.end method

.method public qcRilDeactivateConfigs()Z
    .locals 1

    .line 830
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilDeactivateConfigs(I)Z

    move-result v0

    return v0
.end method

.method public qcRilDeactivateConfigs(I)Z
    .locals 7
    .param p1, "mbnType"    # I

    .line 843
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v2, 0x4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 846
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 849
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter qcRilDeactivateConfigs mbnType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const v4, 0x8002c

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 852
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 854
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    .line 856
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 857
    const/4 v0, 0x1

    goto :goto_0

    .line 859
    :cond_0
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_DEACT_CONFIGS failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_0
    return v0
.end method

.method public qcRilDeactivateConfigsBySub(I)Z
    .locals 7
    .param p1, "sub"    # I

    .line 1811
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1812
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1814
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter qcRilDeactivateConfigsBySub sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    const v3, 0x8012e

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1819
    int-to-byte v1, p1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1820
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1822
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1824
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 1825
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_DEACT_CONFIGS failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    return v1

    .line 1831
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilGetAllConfigs()Z
    .locals 4

    .line 800
    const v0, 0x80017

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 801
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 802
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS failed w/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v1, 0x0

    return v1

    .line 806
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilGetAvailableConfigs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 788
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetAvailableConfigsSync(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetAvailableConfigsSync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "device"    # Ljava/lang/String;

    .line 2310
    const/4 v0, 0x0

    .line 2312
    .local v0, "result":[Ljava/lang/String;
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter qcRilGetAvailableConfigs device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const v1, 0x80131

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 2315
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2316
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS_SYNC failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    return-object v3

    .line 2321
    :cond_0
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 2322
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v3, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS_SYNC failed w/ null result"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    return-object v0

    .line 2328
    :cond_1
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS_SYNC raw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 2329
    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2328
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :try_start_0
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2334
    .local v2, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2336
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 2337
    .local v4, "numStrings":I
    const-string v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS_SYNC success: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    if-gtz v4, :cond_2

    .line 2341
    const-string v5, "QC_RIL_OEM_HOOK"

    const-string v6, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS_SYNC failed w/invalid payload, numStrings = 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    return-object v3

    .line 2347
    :cond_2
    new-array v5, v4, [Ljava/lang/String;

    move-object v0, v5

    .line 2348
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 2349
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 2350
    .local v6, "stringLen":B
    new-array v7, v6, [B

    .line 2351
    .local v7, "data":[B
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2353
    :try_start_1
    new-instance v8, Ljava/lang/String;

    const-string v9, "ISO8859-1"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v8, v0, v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2357
    nop

    .line 2359
    :try_start_2
    const-string v8, "QC_RIL_OEM_HOOK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS_SYNC string "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    .end local v6    # "stringLen":B
    .end local v7    # "data":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2354
    .restart local v6    # "stringLen":B
    .restart local v7    # "data":[B
    :catch_0
    move-exception v8

    .line 2355
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "QC_RIL_OEM_HOOK"

    const-string v10, "unsupport ISO8859-1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2356
    return-object v3

    .line 2365
    .end local v2    # "payload":Ljava/nio/ByteBuffer;
    .end local v4    # "numStrings":I
    .end local v5    # "i":I
    .end local v6    # "stringLen":B
    .end local v7    # "data":[B
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    goto :goto_1

    .line 2362
    :catch_1
    move-exception v2

    .line 2363
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS_SYNC failed to parse payload w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :goto_1
    return-object v0
.end method

.method public qcRilGetCommonData(II)Ljava/lang/String;
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "phoneId"    # I

    .line 2192
    const/4 v0, 0x0

    .line 2193
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v2, 0x4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2195
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2197
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x80132

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2198
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2199
    invoke-direct {p0, v4, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    .line 2202
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2203
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL_EVT_HOOK_ZTE_COMMON_GET failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    return-object v5

    .line 2208
    :cond_0
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 2210
    :try_start_0
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qcRilGetCommonData src result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    .line 2211
    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2210
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    new-instance v4, Ljava/lang/String;

    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    const-string v7, "ISO8859-1"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 2213
    return-object v0

    .line 2214
    :catch_0
    move-exception v4

    .line 2215
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "QC_RIL_OEM_HOOK"

    const-string v7, "unsupport ISO8859-1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    return-object v5

    .line 2220
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v6, "QCRIL_EVT_HOOK_ZTE_COMMON_GET failed ar.result is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    return-object v5
.end method

.method public qcRilGetConfig()Ljava/lang/String;
    .locals 1

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(II)Ljava/lang/String;
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .line 379
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 382
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 385
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter qcRilGetConfig sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const v3, 0x80016

    const/4 v4, 0x5

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 388
    int-to-byte v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 389
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 391
    invoke-direct {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 393
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 394
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v0

    .line 399
    :cond_0
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 400
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-object v0

    .line 406
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string v6, "ISO8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 410
    nop

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_GET_CONFIG returned w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 413
    return-object v0

    .line 407
    :catch_0
    move-exception v4

    .line 408
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "unsupport ISO8859-1"

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 409
    const/4 v5, 0x0

    return-object v5
.end method

.method public qcRilGetConfigsInfo(Ljava/lang/String;)Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;
    .locals 7
    .param p1, "config"    # Ljava/lang/String;

    .line 1849
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x7c

    if-gt v0, v2, :cond_2

    .line 1850
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 1852
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1854
    .local v2, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 1856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 1854
    const v4, 0x8012d

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1859
    :try_start_0
    const-string v3, "ISO8859-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    goto :goto_0

    .line 1860
    :catch_0
    move-exception v3

    .line 1863
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1865
    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1867
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 1868
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_CONFIG_INFO failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return-object v1

    .line 1873
    :cond_0
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 1874
    new-instance v1, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-direct {v1, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;[B)V

    .line 1875
    .local v1, "info":Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;
    return-object v1

    .line 1877
    .end local v1    # "info":Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;
    :cond_1
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "QCRIL_EVT_HOOK_GET_CONFIG_INFO failed ar.result is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    return-object v1

    .line 1885
    .end local v0    # "payload":[B
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :cond_2
    const-string v0, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set with incorrect config id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    return-object v1
.end method

.method public qcRilGetCsgId()I
    .locals 5

    .line 1111
    const/4 v0, -0x1

    .line 1112
    .local v0, "csgId":I
    const v1, 0x80018

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1113
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1114
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1115
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1116
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetCsgId: csg Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1118
    .end local v2    # "response":[B
    goto :goto_0

    .line 1119
    :cond_0
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v3, "qcRilGetCsgId: Null Response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1122
    :cond_1
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetCsgId: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :goto_0
    return v0
.end method

.method public qcRilGetDefaultConfigsInfo(I)Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;
    .locals 7
    .param p1, "mbnType"    # I

    .line 2070
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7c

    new-array v0, v0, [B

    .line 2072
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2074
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const v3, 0x80130

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2077
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2078
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2079
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v1

    .line 2081
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2082
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_DEFAULT_CONFIG_INFO failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    return-object v4

    .line 2087
    :cond_0
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 2088
    const-string v3, "QC_RIL_OEM_HOOK"

    const-string v4, " qcRilGetDefaultConfigsInfo return not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-direct {v3, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;[B)V

    .line 2090
    .local v3, "info":Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;
    return-object v3

    .line 2092
    .end local v3    # "info":Lcom/qualcomm/qcrilhook/QcRilHook$PdcConfigInfo;
    :cond_1
    const-string v3, "QC_RIL_OEM_HOOK"

    const-string v5, "QCRIL_EVT_HOOK_GET_DEFAULT_CONFIG_INFO failed ar.result is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    return-object v4
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .line 916
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "mbnType"    # I

    .line 921
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 926
    .local v1, "payload":[B
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter qcRilGetMetaInfoForConfig config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7c

    if-gt v2, v3, :cond_2

    .line 930
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v4, 0x4

    add-int/2addr v3, v4

    const-string v5, "ISO8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v3, v5

    new-array v3, v3, [B

    move-object v1, v3

    .line 931
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 932
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const-string v5, "ISO8859-1"

    .line 933
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    .line 932
    const v5, 0x80021

    invoke-direct {p0, v3, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 934
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 935
    const-string v4, "ISO8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 939
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    nop

    .line 941
    invoke-direct {p0, v5, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 943
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 944
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-object v0

    .line 949
    :cond_0
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 950
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v4, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ null result"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return-object v0

    .line 956
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string v6, "ISO8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 960
    nop

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_GET_META_INFO returned w/ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 962
    .end local v3    # "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 957
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v4

    .line 958
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "unsupport ISO8859-1"

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 959
    return-object v2

    .line 936
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 937
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "unsupport ISO8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 938
    return-object v2

    .line 963
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get meta info with incorrect config id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :goto_0
    return-object v0
.end method

.method public qcRilGetOemVersionOfFile(Ljava/lang/String;)[B
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .line 580
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 582
    return-object v1

    .line 584
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 585
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 586
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const v4, 0x80030

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 587
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 589
    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 590
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 591
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-object v1

    .line 595
    :cond_1
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 596
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-object v1

    .line 601
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE returned w/ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 602
    iget-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1
.end method

.method public qcRilGetOemVersionOfID(Ljava/lang/String;)[B
    .locals 7
    .param p1, "config_id"    # Ljava/lang/String;

    .line 658
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 659
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x7c

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 665
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 666
    .local v2, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 667
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 666
    const v4, 0x80031

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 669
    :try_start_0
    const-string v3, "ISO8859-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    nop

    .line 675
    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 676
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 677
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-object v1

    .line 681
    :cond_1
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 682
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-object v1

    .line 687
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID returned w/ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 688
    iget-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1

    .line 670
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 671
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "unsupport ISO8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 672
    return-object v1

    .line 660
    .end local v0    # "payload":[B
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_0
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v2, "invalid config_id"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-object v1
.end method

.method public qcRilGetPreferredNetworkAcqOrder(I)B
    .locals 9
    .param p1, "phoneId"    # I

    .line 1347
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1348
    const/4 v0, 0x0

    .line 1349
    .local v0, "acq_order":B
    const v1, 0x8001c

    .line 1350
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v2, [B

    .line 1351
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1353
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v3, v1, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1354
    invoke-direct {p0, v1, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 1356
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 1357
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1358
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 1359
    .local v5, "result":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1360
    .local v6, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acq order is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1362
    .end local v5    # "result":[B
    .end local v6    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1363
    :cond_0
    const-string v5, "QC_RIL_OEM_HOOK"

    const-string v6, "no acq order result return"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1366
    :cond_1
    const-string v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :goto_0
    return v0
.end method

.method public qcRilGetPreferredNetworkBandPref(II)B
    .locals 9
    .param p1, "bandType"    # I
    .param p2, "phoneId"    # I

    .line 1589
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1590
    const/4 v0, 0x0

    .line 1591
    .local v0, "band_pref":B
    const v1, 0x80026

    .line 1592
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v2, [B

    .line 1593
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1595
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v3, v1, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1596
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1598
    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 1600
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 1601
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1602
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 1603
    .local v5, "result":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1604
    .local v6, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1605
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "band pref is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1606
    .end local v5    # "result":[B
    .end local v6    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1607
    :cond_0
    const-string v5, "QC_RIL_OEM_HOOK"

    const-string v6, "no band pref result return"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1610
    :cond_1
    const-string v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL get band perf cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :goto_0
    return v0
.end method

.method public qcRilGetPrioritySubscription()I
    .locals 5

    .line 1128
    const/4 v0, 0x0

    .line 1129
    .local v0, "subscriptionIndex":I
    const v1, 0x80008

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1130
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1131
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1132
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1133
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetPrioritySubscription: subscriptionIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1136
    .end local v2    # "response":[B
    goto :goto_0

    .line 1137
    :cond_0
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v3, "qcRilGetPrioritySubscription: Null Response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1140
    :cond_1
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetPrioritySubscription: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :goto_0
    return v0
.end method

.method public qcRilGetQcVersionOfFile(Ljava/lang/String;)[B
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .line 545
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 546
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 547
    return-object v1

    .line 549
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 550
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 551
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const v4, 0x8002d

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 552
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 554
    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 555
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 556
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-object v1

    .line 560
    :cond_1
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 561
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-object v1

    .line 566
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE returned w/ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 567
    iget-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1
.end method

.method public qcRilGetQcVersionOfID(Ljava/lang/String;)[B
    .locals 7
    .param p1, "configId"    # Ljava/lang/String;

    .line 615
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 616
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x7c

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 622
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 623
    .local v2, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 624
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 623
    const v4, 0x8002f

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 626
    :try_start_0
    const-string v3, "ISO8859-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    nop

    .line 632
    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 633
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 634
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-object v1

    .line 638
    :cond_1
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 639
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-object v1

    .line 644
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID returned w/ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 645
    iget-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1

    .line 627
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 628
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "unsupport ISO8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 629
    return-object v1

    .line 617
    .end local v0    # "payload":[B
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_0
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v2, "invalid config id"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-object v1
.end method

.method public qcRilGetSarRfstateData(I)[B
    .locals 8
    .param p1, "phoneId"    # I

    .line 2373
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v0, v0, [B

    .line 2374
    .local v0, "result":[B
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v2, 0x4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2376
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2378
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x80135

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2379
    invoke-direct {p0, v4, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    .line 2382
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2383
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL_EVT_HOOK_GET_SAR_RF_STATE failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    return-object v5

    .line 2388
    :cond_0
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 2389
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qcRilGetSarRfstateData src result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 2390
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2389
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    return-object v4

    .line 2394
    :cond_1
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v6, "QCRIL_EVT_HOOK_GET_SAR_RF_STATE failed ar.result is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    return-object v5
.end method

.method public qcRilGetSlotStatus()[B
    .locals 5

    .line 1626
    const v0, 0x800da

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1627
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1628
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ failed w/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-object v2

    .line 1632
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1633
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v3, "QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ failed w/ null result"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    return-object v2

    .line 1638
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ returned w/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1639
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1
.end method

.method public qcRilGetTuneAway()Z
    .locals 7

    .line 1069
    const/4 v0, 0x0

    .line 1071
    .local v0, "tuneAway":Z
    const v1, 0x80006

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1073
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1074
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1075
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1076
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1077
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 1078
    .local v4, "tuneAwayValue":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qcRilGetTuneAway: tuneAwayValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1080
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1081
    const/4 v0, 0x1

    .line 1083
    .end local v2    # "response":[B
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "tuneAwayValue":B
    :cond_0
    goto :goto_0

    .line 1084
    :cond_1
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v3, "qcRilGetTuneAway: Null Response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1087
    :cond_2
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetTuneAway: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :goto_0
    return v0
.end method

.method public qcRilGoDormant(Ljava/lang/String;)Z
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "retval":Z
    const v1, 0x80003

    invoke-virtual {p0, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v1

    .line 979
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 981
    const/4 v0, 0x1

    goto :goto_0

    .line 983
    :cond_0
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Go Dormant Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_0
    return v0
.end method

.method public qcRilInformShutDown(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QCRIL Inform shutdown for phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1147
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook$2;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1153
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    const v2, 0x8000a

    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1155
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilPerformIncrManualScan(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 1238
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1239
    const/4 v0, 0x0

    .line 1240
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v1, v1, [B

    .line 1242
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1244
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x80012

    invoke-direct {p0, v2, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1246
    invoke-direct {p0, v3, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1249
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1250
    const/4 v0, 0x1

    goto :goto_0

    .line 1252
    :cond_0
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL perform incr manual scan returned exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :goto_0
    return v0
.end method

.method public qcRilSelectConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .line 867
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSelectConfig(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSelectConfig(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I
    .param p3, "mbnType"    # I

    .line 882
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 883
    const/4 v0, 0x0

    .line 885
    .local v0, "payload":[B
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter qcRilSelectConfig config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " subMask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x7c

    if-gt v1, v3, :cond_1

    .line 889
    :try_start_0
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    const-string v4, "ISO8859-1"

    .line 890
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    new-array v1, v1, [B

    move-object v0, v1

    .line 891
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 892
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v4, 0x5

    const-string v5, "ISO8859-1"

    .line 893
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    .line 892
    const v5, 0x80020

    invoke-direct {p0, v1, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 894
    int-to-byte v4, p2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 895
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 896
    const-string v4, "ISO8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    nop

    .line 902
    invoke-direct {p0, v5, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v1

    .line 903
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 904
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_SEL_CONFIG failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return v2

    .line 908
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_0
    nop

    .line 912
    return v3

    .line 897
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "unsupport ISO8859-1"

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 899
    return v2

    .line 909
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select with incorrect config id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return v2
.end method

.method public qcRilSendApnInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "isValid"    # I
    .param p4, "phoneId"    # I

    .line 1476
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1477
    const v0, 0x8002a

    .line 1478
    .local v0, "requestId":I
    new-instance v1, Lcom/qualcomm/qcrilhook/QcRilHook$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$5;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1484
    .local v1, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0xc

    add-int/2addr v3, v2

    .line 1485
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    .line 1486
    .local v3, "payloadSize":I
    const/16 v2, 0x400

    if-le v3, v2, :cond_0

    .line 1487
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v4, "APN sent is larger than maximum buffer. Bail out"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    return-void

    .line 1490
    :cond_0
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1491
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1492
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4, v0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1493
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1494
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1495
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1496
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1497
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1498
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1499
    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1500
    invoke-direct {p0, v0, v2, v1, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1501
    return-void
.end method

.method public qcRilSendDDSInfo(III)Z
    .locals 8
    .param p1, "dds"    # I
    .param p2, "reason"    # I
    .param p3, "phoneId"    # I

    .line 1504
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1505
    const/4 v0, 0x0

    .line 1506
    .local v0, "retval":Z
    const v1, 0x80027

    .line 1507
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v3, 0x8

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1508
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1510
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dds phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1511
    invoke-direct {p0, v4, v1, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1512
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1513
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1515
    invoke-direct {p0, v1, v2, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1516
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1517
    const/4 v0, 0x1

    goto :goto_0

    .line 1519
    :cond_0
    const-string v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL send dds sub info returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :goto_0
    return v0
.end method

.method public qcRilSendDataEnableStatus(II)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .line 1416
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1417
    const v0, 0x80028

    .line 1418
    .local v0, "requestId":I
    new-instance v1, Lcom/qualcomm/qcrilhook/QcRilHook$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$3;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1424
    .local v1, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1425
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1426
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4, v0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1427
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1428
    invoke-direct {p0, v0, v2, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1429
    return-void
.end method

.method public qcRilSendDataRoamingEnableStatus(II)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .line 1442
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1443
    const v0, 0x80029

    .line 1444
    .local v0, "requestId":I
    new-instance v1, Lcom/qualcomm/qcrilhook/QcRilHook$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$4;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1450
    .local v1, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1451
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1452
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4, v0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1453
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1454
    invoke-direct {p0, v0, v2, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1455
    return-void
.end method

.method public qcRilSendProtocolBufferMessage([BI)[B
    .locals 5
    .param p1, "protocolBuffer"    # [B
    .param p2, "phoneId"    # I

    .line 1032
    const/4 v0, 0x0

    .line 1033
    .local v0, "returnValue":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qcRilSendProtoBufMessage: protocolBuffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1035
    const v1, 0x80065

    invoke-virtual {p0, v1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1037
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1038
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilSendProtoBufMessage: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-object v0

    .line 1041
    :cond_0
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1042
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v3, "QCRIL_EVT_HOOK_PROTOBUF_MSG returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-object v0

    .line 1045
    :cond_1
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    return-object v2
.end method

.method public qcRilSetCdmaSubSrcWithSpc(ILjava/lang/String;)Z
    .locals 10
    .param p1, "cdmaSubscription"    # I
    .param p2, "spc"    # Ljava/lang/String;

    .line 990
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 991
    const/4 v0, 0x0

    .line 993
    .local v0, "retval":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qcRilSetCdmaSubSrcWithSpc: Set Cdma Subscription to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_4

    .line 997
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 1002
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1003
    .local v3, "buf":Ljava/nio/ByteBuffer;
    int-to-byte v4, p1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1004
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1006
    const v4, 0x8000b

    invoke-virtual {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v4

    .line 1008
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 1009
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 1010
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 1011
    .local v5, "result":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1012
    .local v6, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 1013
    .local v7, "succeed":B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "QCRIL Set Cdma Subscription Source Command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    if-ne v7, v2, :cond_0

    const-string v9, "Succeed."

    goto :goto_0

    :cond_0
    const-string v9, "Failed."

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1013
    invoke-direct {p0, v8}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1015
    if-ne v7, v2, :cond_1

    .line 1016
    const/4 v0, 0x1

    goto :goto_1

    .line 1018
    :cond_1
    const/4 v0, 0x0

    .line 1020
    .end local v5    # "result":[B
    .end local v6    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v7    # "succeed":B
    :goto_1
    goto :goto_2

    .line 1022
    :cond_2
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL Set Cdma Subscription Source Command returned Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    .end local v1    # "payload":[B
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_3
    :goto_2
    goto :goto_3

    .line 1026
    :cond_4
    const-string v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QCRIL Set Cdma Subscription Source Command incorrect SPC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_3
    return v0
.end method

.method public qcRilSetCommonData(III)Ljava/lang/String;
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "values"    # I
    .param p3, "phoneId"    # I

    .line 2230
    const/4 v0, 0x0

    .line 2231
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2233
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2235
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x80133

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2236
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2237
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2238
    invoke-direct {p0, v4, v1, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    .line 2241
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2242
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL_EVT_HOOK_ZTE_COMMON_SET failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    return-object v5

    .line 2247
    :cond_0
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 2249
    :try_start_0
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qcRilSetCommonData src result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    .line 2250
    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2249
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    new-instance v4, Ljava/lang/String;

    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    const-string v7, "ISO8859-1"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 2252
    return-object v0

    .line 2253
    :catch_0
    move-exception v4

    .line 2254
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "QC_RIL_OEM_HOOK"

    const-string v7, "unsupport ISO8859-1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    return-object v5

    .line 2259
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v6, "QCRIL_EVT_HOOK_ZTE_COMMON_SET failed ar.result is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    return-object v5
.end method

.method public qcRilSetConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .line 517
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .line 532
    invoke-virtual {p0, p1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I
    .param p4, "mbnType"    # I

    .line 468
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 469
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x7c

    if-gt v0, v2, :cond_1

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x4

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 473
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 478
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x7

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 478
    const v4, 0x80015

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 480
    int-to-byte v3, p3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 481
    invoke-virtual {v2, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    :try_start_0
    const-string v3, "ISO8859-1"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    nop

    .line 490
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 492
    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 493
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 494
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_SET_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v1

    .line 498
    .end local v0    # "payload":[B
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :cond_0
    nop

    .line 503
    const/4 v0, 0x1

    return v0

    .line 486
    .restart local v0    # "payload":[B
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "unsupport ISO8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 488
    return v1

    .line 499
    .end local v0    # "payload":[B
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v0, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set with incorrect config id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v1
.end method

.method public qcRilSetFieldTestMode(IBI)Z
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "ratType"    # B
    .param p3, "enable"    # I

    .line 1172
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1173
    const/4 v0, 0x0

    .line 1175
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 1176
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1178
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x80013

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1179
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1180
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "ratType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0, v3, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1184
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1185
    const/4 v0, 0x1

    goto :goto_0

    .line 1187
    :cond_0
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL enable engineer mode cmd returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :goto_0
    return v0
.end method

.method public qcRilSetLteTuneaway(ZI)Z
    .locals 9
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 1383
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1384
    const/4 v0, 0x0

    .line 1385
    .local v0, "retval":Z
    move v1, p1

    .line 1386
    .local v1, "tuneaway":B
    const v2, 0x8002b

    .line 1387
    .local v2, "requestId":I
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 1388
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1391
    .local v5, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qcRilSetLteTuneaway enable :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1392
    invoke-direct {p0, v5, v2, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1393
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1395
    invoke-direct {p0, v2, v3, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 1396
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 1397
    const/4 v0, 0x1

    goto :goto_0

    .line 1399
    :cond_0
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCRIL set lte tune away returned exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :goto_0
    return v0
.end method

.method public qcRilSetPreferredNetworkAcqOrder(II)Z
    .locals 8
    .param p1, "acqOrder"    # I
    .param p2, "phoneId"    # I

    .line 1316
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1317
    const/4 v0, 0x0

    .line 1318
    .local v0, "retval":Z
    const v1, 0x8001b

    .line 1319
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1320
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1323
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acq order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1324
    invoke-direct {p0, v4, v1, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1325
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1327
    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1328
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1329
    const/4 v0, 0x1

    goto :goto_0

    .line 1331
    :cond_0
    const-string v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :goto_0
    return v0
.end method

.method public qcRilSetPreferredNetworkBandPref(II)Z
    .locals 8
    .param p1, "bandPref"    # I
    .param p2, "phoneId"    # I

    .line 1557
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, "retval":Z
    const v1, 0x80025

    .line 1560
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1561
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1564
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "band pref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1565
    invoke-direct {p0, v4, v1, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1566
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1568
    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1569
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1570
    const/4 v0, 0x1

    goto :goto_0

    .line 1572
    :cond_0
    const-string v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL set band pref cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :goto_0
    return v0
.end method

.method public qcRilSetPrioritySubscription(I)Z
    .locals 6
    .param p1, "priorityIndex"    # I

    .line 1093
    const/4 v0, 0x0

    .line 1094
    .local v0, "returnValue":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qcRilSetPrioritySubscription: PrioritySubscription to be set to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1097
    int-to-byte v1, p1

    .line 1098
    .local v1, "payload":B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcRilSetPrioritySubscription: PrioritySubscription payload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1100
    const v2, 0x80007

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1102
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1103
    const/4 v0, 0x1

    goto :goto_0

    .line 1105
    :cond_0
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qcRilSetPrioritySubscription: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :goto_0
    return v0
.end method

.method public qcRilSetSarRfstateData(III)Z
    .locals 8
    .param p1, "rf_state_index"    # I
    .param p2, "compatibility_key"    # I
    .param p3, "phoneId"    # I

    .line 2404
    const/4 v0, 0x0

    .line 2405
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v1, v1, [B

    .line 2406
    .local v1, "result":[B
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v3, 0x8

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 2408
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2410
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const v5, 0x80136

    invoke-direct {p0, v4, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2411
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2412
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2414
    invoke-direct {p0, v5, v2, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v3

    .line 2417
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 2418
    const/4 v0, 0x1

    goto :goto_0

    .line 2420
    :cond_0
    const-string v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL_EVT_HOOK_SET_SAR_RF_STATE FAIL: w/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    :goto_0
    return v0
.end method

.method public qcRilSetTuneAway(Z)Z
    .locals 6
    .param p1, "tuneAway"    # Z

    .line 1049
    const/4 v0, 0x0

    .line 1050
    .local v0, "returnValue":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qcRilSetTuneAway: tuneAway Value to be set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1052
    const/4 v1, 0x0

    .line 1053
    .local v1, "payload":B
    if-eqz p1, :cond_0

    .line 1054
    const/4 v1, 0x1

    .line 1056
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcRilSetTuneAway: tuneAway payload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1058
    const v2, 0x80005

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1060
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1061
    const/4 v0, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qcRilSetTuneAway: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :goto_0
    return v0
.end method

.method public qcRilValidateConfig(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "configId"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 747
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 748
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x7c

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 753
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 754
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x8002e

    .line 755
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 754
    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 756
    int-to-byte v2, p2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 758
    :try_start_0
    const-string v2, "ISO8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    nop

    .line 763
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 765
    const v2, 0x80021

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    .line 766
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 767
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_VALIDATE_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return v1

    .line 771
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 759
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 760
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "unsupport ISO8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 761
    return v1

    .line 749
    .end local v0    # "payload":[B
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v2, "invalid config id"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return v1
.end method

.method public qcrilGetSelectedOrPendingConfig(II)Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .line 1985
    const/4 v0, 0x0

    .line 1986
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 1987
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1989
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter qcrilGetSelectedOrPendingConfig phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const v3, 0x8012f

    const/4 v4, 0x5

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1993
    int-to-byte v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1994
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1996
    invoke-direct {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1998
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1999
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL_EVT_HOOK_GET_SELECTED_OR_PENDING_CONFIG failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    return-object v5

    .line 2004
    :cond_0
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 2005
    new-instance v4, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    invoke-direct {v4, p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;[B)V

    .line 2006
    .local v4, "config":Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;
    return-object v4

    .line 2008
    .end local v4    # "config":Lcom/qualcomm/qcrilhook/QcRilHook$SelectedConfig;
    :cond_1
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v6, "QCRIL_EVT_HOOK_GET_SELECTED_OR_PENDING_CONFIG failed ar.result is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return-object v5
.end method

.method public qcrilSetBuiltInPLMNList([BI)Z
    .locals 7
    .param p1, "payload"    # [B
    .param p2, "phoneId"    # I

    .line 1280
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, "retval":Z
    if-nez p1, :cond_0

    .line 1283
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v2, "payload is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v1, 0x0

    return v1

    .line 1287
    :cond_0
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 1288
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1290
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v3, p1

    const v4, 0x80011

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1292
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1294
    invoke-direct {p0, v4, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1296
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 1297
    const/4 v0, 0x1

    goto :goto_0

    .line 1299
    :cond_1
    const-string v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL set builtin PLMN list returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :goto_0
    return v0
.end method

.method public qcrilgetDeviceIdentity(I)Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;
    .locals 7
    .param p1, "phoneId"    # I

    .line 2104
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v0, v0, [B

    .line 2106
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2108
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const v2, 0x80134

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2110
    invoke-direct {p0, v2, v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    .line 2113
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2114
    const-string v3, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_DEVICE_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    return-object v4

    .line 2119
    :cond_0
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 2120
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-direct {v3, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;[B)V

    .line 2121
    .local v3, "di":Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;
    return-object v3

    .line 2123
    .end local v3    # "di":Lcom/qualcomm/qcrilhook/QcRilHook$DeviceIdentity;
    :cond_1
    const-string v3, "QC_RIL_OEM_HOOK"

    const-string v5, "QCRIL_EVT_HOOK_GET_DEVICE_ID failed ar.result is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    return-object v4
.end method

.method public rebindQcrilMsgTunnelService()Z
    .locals 5

    .line 1837
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "rebind QcrilMsgTunnelService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1839
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qcrilmsgtunnel"

    const-string v2, "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1840
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1842
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 1843
    .local v1, "result":Z
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The QcrilMsgTunnelService will be connected soon result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    return v1
.end method

.method public registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1750
    return-void
.end method

.method public registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1740
    return-void
.end method

.method public sendQcRilHookMsg(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .line 1643
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1644
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v0, v0, [B

    .line 1645
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1647
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1649
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(IB)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # B

    .line 1653
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IBI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(IBI)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # B
    .param p3, "phoneId"    # I

    .line 1656
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1657
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1658
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1660
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1661
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1663
    invoke-direct {p0, p1, v0, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public sendQcRilHookMsg(II)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # I

    .line 1681
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1682
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1683
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1685
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1686
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1688
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;

    .line 1692
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1693
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1694
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1696
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1697
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1699
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .line 1667
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "phoneId"    # I

    .line 1670
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1671
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1672
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1674
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v1, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1675
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1677
    invoke-direct {p0, p1, v0, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;

    .line 1703
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1704
    return-void
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;
    .param p4, "phoneId"    # I

    .line 1708
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1709
    const/4 v0, 0x0

    .line 1710
    .local v0, "payloadLength":I
    if-eqz p2, :cond_0

    .line 1711
    array-length v0, p2

    .line 1714
    :cond_0
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 1715
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1717
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1718
    if-eqz p2, :cond_1

    .line 1719
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1721
    :cond_1
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1722
    return-void
.end method

.method public setLocalCallHold(IZ)Z
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 1525
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1526
    const/4 v0, 0x0

    .line 1527
    .local v0, "retval":Z
    move v1, p2

    .line 1528
    .local v1, "lchStatus":B
    const v2, 0x81b58

    .line 1529
    .local v2, "requestId":I
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 1530
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1532
    .local v5, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLocalCallHold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1533
    invoke-direct {p0, v5, v2, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1534
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1536
    invoke-direct {p0, v2, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 1537
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 1538
    const-string v6, "setLocalCallHold success"

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1539
    const/4 v0, 0x1

    goto :goto_0

    .line 1541
    :cond_0
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCRIL setLocalCallHold returned exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :goto_0
    return v0
.end method

.method public unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1755
    return-void
.end method

.method public unregisterForFieldTestData(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1745
    return-void
.end method
