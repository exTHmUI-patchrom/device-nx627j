.class Landroid/net/lowpan/LowpanManager$1;
.super Ljava/lang/Object;
.source "LowpanManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanManager;

.field final synthetic val$ifaceName:Ljava/lang/String;

.field final synthetic val$ifaceService:Landroid/net/lowpan/ILowpanInterface;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanManager;Ljava/lang/String;Landroid/net/lowpan/ILowpanInterface;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanManager;

    .line 153
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceName:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceService:Landroid/net/lowpan/ILowpanInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 156
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-static {v0}, Landroid/net/lowpan/LowpanManager;->access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    .line 158
    invoke-static {v1}, Landroid/net/lowpan/LowpanManager;->access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/LowpanInterface;

    .line 160
    .local v1, "iface":Landroid/net/lowpan/LowpanInterface;
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Landroid/net/lowpan/LowpanInterface;->getService()Landroid/net/lowpan/ILowpanInterface;

    move-result-object v2

    iget-object v3, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceService:Landroid/net/lowpan/ILowpanInterface;

    if-ne v2, v3, :cond_0

    .line 162
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-static {v2}, Landroid/net/lowpan/LowpanManager;->access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    :cond_0
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
