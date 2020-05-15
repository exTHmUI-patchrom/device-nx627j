.class Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverRankerServiceConnection"
.end annotation


# instance fields
.field private final mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field public final resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

.field final synthetic this$0:Lcom/android/internal/app/ResolverComparator;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverComparator;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "connectSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 516
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-instance p1, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;

    invoke-direct {p1, p0}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;-><init>(Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;)V

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    .line 517
    iput-object p2, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    .line 518
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$500(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverComparator;->access$602(Lcom/android/internal/app/ResolverComparator;Landroid/service/resolver/IResolverRankerService;)Landroid/service/resolver/IResolverRankerService;

    .line 560
    monitor-exit v0

    .line 561
    return-void

    .line 560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 541
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$500(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {p2}, Landroid/service/resolver/IResolverRankerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/resolver/IResolverRankerService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverComparator;->access$602(Lcom/android/internal/app/ResolverComparator;Landroid/service/resolver/IResolverRankerService;)Landroid/service/resolver/IResolverRankerService;

    .line 543
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 544
    monitor-exit v0

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 552
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$500(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 553
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->destroy()V

    .line 554
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
