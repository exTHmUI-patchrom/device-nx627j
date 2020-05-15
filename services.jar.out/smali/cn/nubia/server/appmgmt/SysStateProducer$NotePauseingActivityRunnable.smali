.class Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;
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
    name = "NotePauseingActivityRunnable"
.end annotation


# instance fields
.field private mIsVisible:Z

.field private mResumingActivity:Ljava/lang/String;

.field private mResumingPackage:Ljava/lang/String;

.field private mStackId:I

.field private mTopActivity:Ljava/lang/String;

.field private mTopActivityPackageName:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "stackId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "activityName"    # Ljava/lang/String;
    .param p6, "isVisiblePackage"    # Z
    .param p7, "topActivityPackageName"    # Ljava/lang/String;
    .param p8, "topActivity"    # Ljava/lang/String;

    .line 400
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mUid:I

    .line 402
    iput p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    .line 403
    iput-object p4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 404
    iput-object p5, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    .line 405
    iput-boolean p6, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mIsVisible:Z

    .line 406
    iput-object p7, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mTopActivityPackageName:Ljava/lang/String;

    .line 407
    iput-object p8, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mTopActivity:Ljava/lang/String;

    .line 408
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 412
    iget v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mIsVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mTopActivityPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 415
    .local v0, "topApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mTopActivityPackageName:Ljava/lang/String;

    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mTopActivity:Ljava/lang/String;

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    :cond_0
    return-void

    .line 420
    .end local v0    # "topApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mTopActivityPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mTopActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .local v0, "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .end local v0    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 425
    .local v0, "pausedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 427
    :cond_3
    return-void

    .line 429
    .end local v0    # "pausedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 433
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "count"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    const-string/jumbo v1, "stackId"

    iget v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mStackId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    const-string/jumbo v1, "uid"

    iget v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "activityName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 439
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x7d2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 440
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 442
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v3, 0x4

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 443
    return-void
.end method
