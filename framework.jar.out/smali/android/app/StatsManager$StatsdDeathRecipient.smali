.class Landroid/app/StatsManager$StatsdDeathRecipient;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsdDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/StatsManager;


# direct methods
.method private constructor <init>(Landroid/app/StatsManager;)V
    .locals 0

    .line 360
    iput-object p1, p0, Landroid/app/StatsManager$StatsdDeathRecipient;->this$0:Landroid/app/StatsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/StatsManager;Landroid/app/StatsManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/StatsManager;
    .param p2, "x1"    # Landroid/app/StatsManager$1;

    .line 360
    invoke-direct {p0, p1}, Landroid/app/StatsManager$StatsdDeathRecipient;-><init>(Landroid/app/StatsManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/app/StatsManager$StatsdDeathRecipient;->this$0:Landroid/app/StatsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/StatsManager;->access$002(Landroid/app/StatsManager;Landroid/os/IStatsManager;)Landroid/os/IStatsManager;

    .line 365
    monitor-exit p0

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
