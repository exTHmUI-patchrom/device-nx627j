.class Lcom/android/server/NubiaMLockManager$4;
.super Ljava/lang/Object;
.source "NubiaMLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaMLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaMLockManager;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaMLockManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NubiaMLockManager;

    .line 117
    iput-object p1, p0, Lcom/android/server/NubiaMLockManager$4;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager$4;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v0}, Lcom/android/server/NubiaMLockManager;->access$400(Lcom/android/server/NubiaMLockManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager$4;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v1}, Lcom/android/server/NubiaMLockManager;->access$400(Lcom/android/server/NubiaMLockManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager$4;->this$0:Lcom/android/server/NubiaMLockManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NubiaMLockManager;->access$300(Lcom/android/server/NubiaMLockManager;Z)V

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
