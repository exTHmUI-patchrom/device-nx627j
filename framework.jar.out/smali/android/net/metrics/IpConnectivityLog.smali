.class public Landroid/net/metrics/IpConnectivityLog;
.super Ljava/lang/Object;
.source "IpConnectivityLog.java"


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Landroid/net/IIpConnectivityMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/net/IIpConnectivityMetrics;)V
    .locals 0
    .param p1, "service"    # Landroid/net/IIpConnectivityMetrics;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    .line 46
    return-void
.end method

.method private checkLoggerService()Z
    .locals 2

    .line 49
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    return v1

    .line 52
    :cond_0
    const-string v0, "connmetrics"

    .line 53
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 54
    .local v0, "service":Landroid/net/IIpConnectivityMetrics;
    if-nez v0, :cond_1

    .line 55
    const/4 v1, 0x0

    return v1

    .line 59
    :cond_1
    iput-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    .line 60
    return v1
.end method

.method private static makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;
    .locals 1
    .param p0, "data"    # Landroid/os/Parcelable;

    .line 138
    new-instance v0, Landroid/net/ConnectivityMetricsEvent;

    invoke-direct {v0}, Landroid/net/ConnectivityMetricsEvent;-><init>()V

    .line 139
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    iput-object p0, v0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    .line 140
    return-object v0
.end method


# virtual methods
.method public log(I[ILandroid/os/Parcelable;)Z
    .locals 3
    .param p1, "netid"    # I
    .param p2, "transports"    # [I
    .param p3, "data"    # Landroid/os/Parcelable;

    .line 122
    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    .line 123
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    iput p1, v0, Landroid/net/ConnectivityMetricsEvent;->netId:I

    .line 124
    invoke-static {p2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/ConnectivityMetricsEvent;->transports:J

    .line 125
    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v1

    return v1
.end method

.method public log(JLandroid/os/Parcelable;)Z
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "data"    # Landroid/os/Parcelable;

    .line 96
    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    .line 97
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    iput-wide p1, v0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    .line 98
    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v1

    return v1
.end method

.method public log(Landroid/net/ConnectivityMetricsEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/net/ConnectivityMetricsEvent;

    .line 70
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    iget-wide v2, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    .line 80
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v0, p1}, Landroid/net/IIpConnectivityMetrics;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v0, "left":I
    if-ltz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 82
    .end local v0    # "left":I
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    const-string v3, "Error logging event"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    return v1
.end method

.method public log(Landroid/os/Parcelable;)Z
    .locals 1
    .param p1, "data"    # Landroid/os/Parcelable;

    .line 134
    invoke-static {p1}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;Landroid/os/Parcelable;)Z
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Parcelable;

    .line 108
    invoke-static {p2}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    .line 109
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    iput-object p1, v0, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v1

    return v1
.end method
