.class public final Landroid/net/IpSecTransform;
.super Ljava/lang/Object;
.source "IpSecTransform.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecTransform$Builder;,
        Landroid/net/IpSecTransform$NattKeepaliveCallback;,
        Landroid/net/IpSecTransform$EncapType;
    }
.end annotation


# static fields
.field public static final ENCAP_ESPINUDP:I = 0x2

.field public static final ENCAP_ESPINUDP_NON_IKE:I = 0x1

.field public static final ENCAP_NONE:I = 0x0

.field public static final MODE_TRANSPORT:I = 0x0

.field public static final MODE_TUNNEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IpSecTransform"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mContext:Landroid/content/Context;

.field private mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

.field private final mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field private mResourceId:I

.field private mUserKeepaliveCallback:Landroid/net/IpSecTransform$NattKeepaliveCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/IpSecConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 216
    new-instance v0, Landroid/net/IpSecTransform$1;

    invoke-direct {v0, p0}, Landroid/net/IpSecTransform$1;-><init>(Landroid/net/IpSecTransform;)V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 90
    iput-object p1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/net/IpSecConfig;

    invoke-direct {v0, p2}, Landroid/net/IpSecConfig;-><init>(Landroid/net/IpSecConfig;)V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 93
    return-void
.end method

.method static synthetic access$000(Landroid/net/IpSecTransform;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/net/IpSecTransform;

    .line 54
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/IpSecTransform;Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepalive;
    .locals 0
    .param p0, "x0"    # Landroid/net/IpSecTransform;
    .param p1, "x1"    # Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 54
    iput-object p1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform$NattKeepaliveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/net/IpSecTransform;

    .line 54
    iget-object v0, p0, Landroid/net/IpSecTransform;->mUserKeepaliveCallback:Landroid/net/IpSecTransform$NattKeepaliveCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;
    .locals 1
    .param p0, "x0"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/net/IpSecTransform;->activate()Landroid/net/IpSecTransform;

    move-result-object v0

    return-object v0
.end method

.method private activate()Landroid/net/IpSecTransform;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 130
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-direct {p0}, Landroid/net/IpSecTransform;->getIpSecService()Landroid/net/IIpSecService;

    move-result-object v0

    .line 133
    .local v0, "svc":Landroid/net/IIpSecService;
    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget-object v3, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-interface {v0, v1, v2, v3}, Landroid/net/IIpSecService;->createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;

    move-result-object v1

    .line 135
    .local v1, "result":Landroid/net/IpSecTransformResponse;
    iget v2, v1, Landroid/net/IpSecTransformResponse;->status:I

    .line 136
    .local v2, "status":I
    invoke-direct {p0, v2}, Landroid/net/IpSecTransform;->checkResultStatus(I)V

    .line 137
    iget v3, v1, Landroid/net/IpSecTransformResponse;->resourceId:I

    iput v3, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 138
    const-string v3, "IpSecTransform"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added Transform with Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v4, "build"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v0    # "svc":Landroid/net/IIpSecService;
    .end local v1    # "result":Landroid/net/IpSecTransformResponse;
    .end local v2    # "status":I
    nop

    .line 145
    :try_start_1
    monitor-exit p0

    .line 147
    return-object p0

    .line 145
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowUncheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 145
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkResultStatus(I)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 111
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    const-string v0, "IpSecTransform"

    const-string v1, "Attempting to use an SPI that was somehow not reserved"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :pswitch_1
    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v1, "Failed to allocate a new IpSecTransform"

    invoke-direct {v0, v1}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_2
    return-void

    .line 122
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to Create a Transform with status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static equals(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/net/IpSecTransform;
    .param p1, "rhs"    # Landroid/net/IpSecTransform;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/IpSecTransform;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/IpSecConfig;->equals(Landroid/net/IpSecConfig;Landroid/net/IpSecConfig;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    iget v3, p1, Landroid/net/IpSecTransform;->mResourceId:I

    if-ne v2, v3, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 157
    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0
.end method

.method private getIpSecService()Landroid/net/IIpSecService;
    .locals 3

    .line 96
    const-string v0, "ipsec"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0}, Landroid/net/IIpSecService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;

    move-result-object v1

    return-object v1

    .line 98
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to connect to IpSecService"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 173
    const-string v0, "IpSecTransform"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Transform with Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 178
    return-void

    .line 181
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/net/IpSecTransform;->getIpSecService()Landroid/net/IIpSecService;

    move-result-object v0

    .line 182
    .local v0, "svc":Landroid/net/IIpSecService;
    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-interface {v0, v2}, Landroid/net/IIpSecService;->deleteTransform(I)V

    .line 183
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->stopNattKeepalive()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v0    # "svc":Landroid/net/IIpSecService;
    :goto_0
    iput v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 192
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 193
    goto :goto_1

    .line 191
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 186
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IpSecTransform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 194
    :goto_1
    return-void

    .line 184
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iput v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 192
    iget-object v1, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->close()V

    .line 203
    return-void
.end method

.method getConfig()Landroid/net/IpSecConfig;
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 248
    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    return v0
.end method

.method public startNattKeepalive(Landroid/net/IpSecTransform$NattKeepaliveCallback;ILandroid/os/Handler;)V
    .locals 9
    .param p1, "userCallback"    # Landroid/net/IpSecTransform$NattKeepaliveCallback;
    .param p2, "intervalSeconds"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/16 v0, 0x14

    if-lt p2, v0, :cond_2

    const/16 v0, 0xe10

    if-gt p2, v0, :cond_2

    .line 299
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 305
    iget-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    if-nez v1, :cond_0

    .line 310
    iput-object p1, p0, Landroid/net/IpSecTransform;->mUserKeepaliveCallback:Landroid/net/IpSecTransform$NattKeepaliveCallback;

    .line 311
    iget-object v1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 313
    .local v2, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 314
    invoke-virtual {v1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v3

    iget-object v5, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 315
    invoke-virtual {v1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/16 v7, 0x1194

    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 317
    invoke-virtual {v1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 313
    move v4, p2

    invoke-virtual/range {v2 .. v8}, Landroid/net/ConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;

    move-result-object v1

    iput-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 318
    iput-object p3, p0, Landroid/net/IpSecTransform;->mCallbackHandler:Landroid/os/Handler;

    .line 319
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    monitor-exit v0

    .line 320
    return-void

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Keepalive already active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Packet keepalive cannot be started for an inactive transform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid NAT-T keepalive interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopNattKeepalive()V
    .locals 3

    .line 336
    iget-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    if-nez v1, :cond_0

    .line 338
    const-string v1, "IpSecTransform"

    const-string v2, "No active keepalive to stop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v0

    return-void

    .line 341
    :cond_0
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->stop()V

    .line 342
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpSecTransform{resourceId="

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    return-object v0
.end method
