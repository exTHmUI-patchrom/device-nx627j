.class Landroid/net/ip/IpClient$4;
.super Ljava/lang/Object;
.source "IpClient.java"

# interfaces
.implements Landroid/net/ip/IpReachabilityMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpClient;->startIpReachabilityMonitor()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpClient;

    .line 1396
    iput-object p1, p0, Landroid/net/ip/IpClient$4;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "logMsg"    # Ljava/lang/String;

    .line 1399
    iget-object v0, p0, Landroid/net/ip/IpClient$4;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, v0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpClient$Callback;->onReachabilityLost(Ljava/lang/String;)V

    .line 1400
    return-void
.end method
