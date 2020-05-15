.class Landroid/os/CommonTimeConfig$1;
.super Ljava/lang/Object;
.source "CommonTimeConfig.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonTimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CommonTimeConfig;


# direct methods
.method constructor <init>(Landroid/os/CommonTimeConfig;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/CommonTimeConfig;

    .line 421
    iput-object p1, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 423
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-static {v0}, Landroid/os/CommonTimeConfig;->access$000(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-static {v1}, Landroid/os/CommonTimeConfig;->access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-static {v1}, Landroid/os/CommonTimeConfig;->access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/CommonTimeConfig$OnServerDiedListener;->onServerDied()V

    .line 426
    :cond_0
    monitor-exit v0

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
