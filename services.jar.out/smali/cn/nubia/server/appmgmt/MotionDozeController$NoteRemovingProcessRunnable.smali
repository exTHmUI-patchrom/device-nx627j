.class Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;
.super Ljava/lang/Object;
.source "MotionDozeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/MotionDozeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteRemovingProcessRunnable"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mProcess:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .line 328
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput p2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mUid:I

    .line 330
    iput-object p3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    .line 331
    iput-object p4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mProcess:Ljava/lang/String;

    .line 332
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "count":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 339
    add-int/lit8 v0, v0, -0x1

    .line 340
    if-nez v0, :cond_0

    .line 341
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1100(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_1
    :goto_0
    if-nez v0, :cond_5

    .line 349
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1500(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, "hasMotionApp":Z
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1100(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 354
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1200(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 355
    :try_start_0
    iget-object v5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1300(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    const/4 v1, 0x1

    .line 357
    monitor-exit v4

    goto :goto_2

    .line 359
    :cond_2
    monitor-exit v4

    .line 360
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 359
    .restart local v3    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 362
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_2
    if-nez v1, :cond_5

    .line 363
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1400(Lcn/nubia/server/appmgmt/MotionDozeController;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 364
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1402(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z

    .line 367
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$300(Lcn/nubia/server/appmgmt/MotionDozeController;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 368
    const-string v2, "MotionDozeController"

    const-string/jumbo v3, "mRunningMotionApp = false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v1    # "hasMotionApp":Z
    :cond_5
    return-void
.end method
