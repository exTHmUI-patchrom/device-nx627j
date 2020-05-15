.class public Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "DcAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x41000

.field private static final CMD_TO_STRING_COUNT:I = 0xe

.field private static final DBG:Z = false

.field public static final REQ_GET_APNSETTING:I = 0x41004

.field public static final REQ_GET_CID:I = 0x41002

.field public static final REQ_GET_LINK_PROPERTIES:I = 0x41006

.field public static final REQ_GET_NETWORK_CAPABILITIES:I = 0x4100a

.field public static final REQ_IS_INACTIVE:I = 0x41000

.field public static final REQ_RESET:I = 0x4100c

.field public static final REQ_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41008

.field public static final RSP_GET_APNSETTING:I = 0x41005

.field public static final RSP_GET_CID:I = 0x41003

.field public static final RSP_GET_LINK_PROPERTIES:I = 0x41007

.field public static final RSP_GET_NETWORK_CAPABILITIES:I = 0x4100b

.field public static final RSP_IS_INACTIVE:I = 0x41001

.field public static final RSP_RESET:I = 0x4100d

.field public static final RSP_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41009

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mDcThreadId:J

.field mLastConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

.field private mLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "REQ_IS_INACTIVE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 66
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "RSP_IS_INACTIVE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 67
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "REQ_GET_CID"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 68
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "RSP_GET_CID"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 69
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "REQ_GET_APNSETTING"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 70
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "RSP_GET_APNSETTING"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 71
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "REQ_GET_LINK_PROPERTIES"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 72
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "RSP_GET_LINK_PROPERTIES"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 73
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "REQ_SET_LINK_PROPERTIES_HTTP_PROXY"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 75
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "RSP_SET_LINK_PROPERTIES_HTTP_PROXY"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 77
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "REQ_GET_NETWORK_CAPABILITIES"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 78
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "RSP_GET_NETWORK_CAPABILITIES"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 79
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "REQ_RESET"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 80
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const-string v1, "RSP_RESET"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "logTag"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDcThreadId:J

    .line 118
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLogTag:Ljava/lang/String;

    .line 119
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    .line 87
    const v0, 0x41000

    sub-int/2addr p0, v0

    .line 88
    if-ltz p0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 89
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 91
    :cond_0
    add-int/2addr v0, p0

    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCallerOnDifferentThread()Z
    .locals 4

    .line 429
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 430
    .local v0, "curThreadId":J
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDcThreadId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 432
    .local v2, "value":Z
    :goto_0
    return v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnectionAc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method


# virtual methods
.method public bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIZLandroid/os/Message;I)V
    .locals 8
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "profileId"    # I
    .param p3, "rilRadioTechnology"    # I
    .param p4, "unmeteredUseOnly"    # Z
    .param p5, "onCompletedMsg"    # Landroid/os/Message;
    .param p6, "connectionGeneration"    # I

    .line 382
    new-instance v7, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIZLandroid/os/Message;I)V

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLastConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLastConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 385
    return-void
.end method

.method public getApnSettingSync()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 3

    .line 229
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const v0, 0x41004

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41005

    if-ne v1, v2, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    .local v1, "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0

    .line 234
    .end local v1    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnSetting error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x0

    .end local v0    # "response":Landroid/os/Message;
    .restart local v1    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_0
    move-object v0, v1

    .line 237
    .end local v1    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .local v0, "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_1

    .line 238
    .end local v0    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 240
    .restart local v0    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_1
    return-object v0
.end method

.method public getCidSync()I
    .locals 3

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const v0, 0x41002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41003

    if-ne v1, v2, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspCid(Landroid/os/Message;)I

    move-result v1

    .local v1, "value":I
    goto :goto_0

    .line 192
    .end local v1    # "value":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspCid error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 193
    const/4 v1, -0x1

    .end local v0    # "response":Landroid/os/Message;
    .restart local v1    # "value":I
    :goto_0
    move v0, v1

    .line 195
    .end local v1    # "value":I
    .local v0, "value":I
    goto :goto_1

    .line 196
    .end local v0    # "value":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v0

    .line 198
    .restart local v0    # "value":I
    :goto_1
    return v0
.end method

.method public getDataConnectionIdSync()I
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getDataConnectionId()I

    move-result v0

    return v0
.end method

.method public getLinkPropertiesSync()Landroid/net/LinkProperties;
    .locals 3

    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const v0, 0x41006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 273
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41007

    if-ne v1, v2, :cond_0

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;

    move-result-object v1

    .local v1, "value":Landroid/net/LinkProperties;
    goto :goto_0

    .line 276
    .end local v1    # "value":Landroid/net/LinkProperties;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkProperties error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x0

    .end local v0    # "response":Landroid/os/Message;
    .restart local v1    # "value":Landroid/net/LinkProperties;
    :goto_0
    move-object v0, v1

    .line 279
    .end local v1    # "value":Landroid/net/LinkProperties;
    .local v0, "value":Landroid/net/LinkProperties;
    goto :goto_1

    .line 280
    .end local v0    # "value":Landroid/net/LinkProperties;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 282
    .restart local v0    # "value":Landroid/net/LinkProperties;
    :goto_1
    return-object v0
.end method

.method public getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;
    .locals 3

    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const v0, 0x4100a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 341
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100b

    if-ne v1, v2, :cond_0

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspNetworkCapabilities(Landroid/os/Message;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .local v1, "value":Landroid/net/NetworkCapabilities;
    goto :goto_0

    .line 344
    .end local v1    # "value":Landroid/net/NetworkCapabilities;
    :cond_0
    const/4 v1, 0x0

    .end local v0    # "response":Landroid/os/Message;
    .restart local v1    # "value":Landroid/net/NetworkCapabilities;
    :goto_0
    move-object v0, v1

    .line 346
    .end local v1    # "value":Landroid/net/NetworkCapabilities;
    .local v0, "value":Landroid/net/NetworkCapabilities;
    goto :goto_1

    .line 347
    .end local v0    # "value":Landroid/net/NetworkCapabilities;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 349
    .restart local v0    # "value":Landroid/net/NetworkCapabilities;
    :goto_1
    return-object v0
.end method

.method public getPcscfAddr()[Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public isInactiveSync()Z
    .locals 3

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const v0, 0x41000

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41001

    if-ne v1, v2, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspIsInactive(Landroid/os/Message;)Z

    move-result v1

    .local v1, "value":Z
    goto :goto_0

    .line 152
    .end local v1    # "value":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsInactive error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x0

    .end local v0    # "response":Landroid/os/Message;
    .restart local v1    # "value":Z
    :goto_0
    move v0, v1

    .line 155
    .end local v1    # "value":Z
    .local v0, "value":Z
    goto :goto_1

    .line 156
    .end local v0    # "value":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isInactive()Z

    move-result v0

    .line 158
    .restart local v0    # "value":Z
    :goto_1
    return v0
.end method

.method public reqApnSetting()V
    .locals 1

    .line 206
    const v0, 0x41004

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 208
    return-void
.end method

.method public reqCid()V
    .locals 1

    .line 166
    const v0, 0x41002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 168
    return-void
.end method

.method public reqIsInactive()V
    .locals 1

    .line 126
    const v0, 0x41000

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 128
    return-void
.end method

.method public reqLinkProperties()V
    .locals 1

    .line 248
    const v0, 0x41006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 250
    return-void
.end method

.method public reqNetworkCapabilities()V
    .locals 1

    .line 316
    const v0, 0x4100a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 318
    return-void
.end method

.method public reqReset()V
    .locals 1

    .line 356
    const v0, 0x4100c

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 358
    return-void
.end method

.method public reqSetLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 290
    const v0, 0x41008

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method public rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 217
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 219
    .local v0, "retVal":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v0
.end method

.method public rspCid(Landroid/os/Message;)I
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 177
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 179
    .local v0, "retVal":I
    return v0
.end method

.method public rspIsInactive(Landroid/os/Message;)Z
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 136
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 138
    .local v0, "retVal":Z
    return v0
.end method

.method public rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 259
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    .line 261
    .local v0, "retVal":Landroid/net/LinkProperties;
    return-object v0
.end method

.method public rspNetworkCapabilities(Landroid/os/Message;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 327
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 329
    .local v0, "retVal":Landroid/net/NetworkCapabilities;
    return-object v0
.end method

.method public setLinkPropertiesHttpProxySync(Landroid/net/ProxyInfo;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 298
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const v0, 0x41008

    .line 300
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41009

    if-ne v1, v2, :cond_0

    .end local v0    # "response":Landroid/os/Message;
    goto :goto_0

    .line 304
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLinkPropertiesHttpPoxy error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 306
    .end local v0    # "response":Landroid/os/Message;
    :goto_0
    goto :goto_1

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V

    .line 309
    :goto_1
    return-void
.end method

.method public tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "onCompletedMsg"    # Landroid/os/Message;

    .line 398
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    const v1, 0x40004

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 400
    return-void
.end method

.method public tearDownAll(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .line 411
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    const v1, 0x40006

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 413
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
