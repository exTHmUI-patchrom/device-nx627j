.class Landroid/net/EthernetManager$2;
.super Landroid/net/IEthernetServiceListener$Stub;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetManager;


# direct methods
.method constructor <init>(Landroid/net/EthernetManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/EthernetManager;

    .line 52
    iput-object p1, p0, Landroid/net/EthernetManager$2;->this$0:Landroid/net/EthernetManager;

    invoke-direct {p0}, Landroid/net/IEthernetServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "isAvailable"    # Z

    .line 55
    iget-object v0, p0, Landroid/net/EthernetManager$2;->this$0:Landroid/net/EthernetManager;

    invoke-static {v0}, Landroid/net/EthernetManager;->access$100(Landroid/net/EthernetManager;)Landroid/os/Handler;

    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 55
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    return-void
.end method
