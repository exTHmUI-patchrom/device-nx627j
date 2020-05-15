.class public Landroid/net/ConnectivityManager$NetworkCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallback"
.end annotation


# instance fields
.field private networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;
    .locals 1
    .param p0, "x0"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2744
    iget-object v0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$902(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    .locals 0
    .param p0, "x0"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .line 2744
    iput-object p1, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object p1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 2795
    return-void
.end method

.method public onAvailable(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;

    .line 2777
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2778
    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2780
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    .line 2782
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 2783
    invoke-virtual {p0, p1, p3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 2784
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 2840
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 2849
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .line 2811
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 2819
    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 2868
    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 2860
    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 2760
    return-void
.end method

.method public onUnavailable()V
    .locals 0

    .line 2829
    return-void
.end method
