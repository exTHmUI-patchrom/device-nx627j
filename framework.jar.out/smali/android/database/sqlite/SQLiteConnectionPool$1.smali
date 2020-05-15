.class Landroid/database/sqlite/SQLiteConnectionPool$1;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteConnectionPool;

.field final synthetic val$nonce:I

.field final synthetic val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 729
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput p3, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$nonce:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 732
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->access$000(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iget v1, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    iget v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$nonce:I

    if-ne v1, v2, :cond_0

    .line 734
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->access$100(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 736
    :cond_0
    monitor-exit v0

    .line 737
    return-void

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
