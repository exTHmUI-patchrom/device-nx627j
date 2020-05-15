.class public Lcom/android/server/net/BaseNetdEventCallback;
.super Landroid/net/INetdEventCallback$Stub;
.source "BaseNetdEventCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/net/INetdEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .locals 0
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timestamp"    # J
    .param p5, "uid"    # I

    .line 43
    return-void
.end method

.method public onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ipAddresses"    # [Ljava/lang/String;
    .param p3, "ipAddressesCount"    # I
    .param p4, "timestamp"    # J
    .param p6, "uid"    # I

    .line 32
    return-void
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z

    .line 38
    return-void
.end method
