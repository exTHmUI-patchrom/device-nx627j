.class Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;
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
    name = "NoteStartingProcessRunnable"
.end annotation


# instance fields
.field private mHostingType:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;

.field private mProcess:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "hostingType"    # Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mUid:I

    .line 291
    iput-object p3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    .line 292
    iput-object p4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mProcess:Ljava/lang/String;

    .line 293
    iput-object p5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mHostingType:Ljava/lang/String;

    .line 294
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 298
    const/4 v0, 0x1

    .line 299
    .local v0, "count":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 301
    .local v1, "oldCount":I
    add-int/2addr v0, v1

    .line 303
    .end local v1    # "oldCount":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1100(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 307
    return-void

    .line 310
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1200(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1300(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1402(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z

    .line 313
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1500(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$300(Lcn/nubia/server/appmgmt/MotionDozeController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    const-string v1, "MotionDozeController"

    const-string/jumbo v3, "mRunningMotionApp = true"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    :cond_3
    monitor-exit v2

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
