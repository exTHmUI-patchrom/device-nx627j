.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;
.super Ljava/lang/Object;
.source "SysStateProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/SysStateProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteResumingActivityRunnable"
.end annotation


# instance fields
.field private mPid:I

.field private mResumingActivity:Ljava/lang/String;

.field private mResumingPackage:Ljava/lang/String;

.field private mStackId:I

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "stackId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "activityName"    # Ljava/lang/String;
    .param p6, "pid"    # I

    .line 329
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 326
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    .line 330
    iput p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mStackId:I

    .line 331
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mUid:I

    .line 332
    if-eqz p4, :cond_0

    .line 333
    iput-object p4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 335
    :cond_0
    if-eqz p5, :cond_1

    .line 336
    iput-object p5, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    .line 338
    :cond_1
    iput p6, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mPid:I

    .line 339
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 344
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 346
    .local v0, "resumedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    .end local v0    # "resumedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    goto :goto_0

    .line 350
    .restart local v0    # "resumedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    :cond_0
    new-instance v1, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    iget v5, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mPid:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    .local v1, "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v0    # "resumedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    .end local v1    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    :goto_0
    goto :goto_1

    .line 354
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    iget v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mPid:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    .local v0, "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v0    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "count"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    const-string/jumbo v1, "uid"

    iget v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "activityName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, "i":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 366
    .local v3, "stackId":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 367
    .local v4, "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stackId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activityName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->pid:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    add-int/lit8 v1, v1, 0x1

    .line 372
    .end local v3    # "stackId":I
    goto :goto_2

    .line 373
    .end local v1    # "i":I
    .end local v4    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    :cond_2
    nop

    .line 376
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$300(Lcn/nubia/server/appmgmt/SysStateProducer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    const-string v1, "SysStateProducer"

    const-string v2, " Resuming Activity And Notify Listensers..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 380
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x7d1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 381
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 382
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v3, 0x2

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 383
    const/16 v2, 0x7d0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 384
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v3, 0x1

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 386
    return-void

    .line 374
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    return-void
.end method
