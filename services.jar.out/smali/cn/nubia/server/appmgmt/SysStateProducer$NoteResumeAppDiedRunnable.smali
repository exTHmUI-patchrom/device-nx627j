.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;
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
    name = "NoteResumeAppDiedRunnable"
.end annotation


# instance fields
.field private mResumingActivity:Ljava/lang/String;

.field private mResumingPackage:Ljava/lang/String;

.field private mStackId:I

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "stackId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "activityName"    # Ljava/lang/String;

    .line 528
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mUid:I

    .line 530
    iput p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mStackId:I

    .line 531
    iput-object p4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mResumingPackage:Ljava/lang/String;

    .line 532
    iput-object p5, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mResumingActivity:Ljava/lang/String;

    .line 533
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 537
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 539
    .local v0, "pausedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mResumingActivity:Ljava/lang/String;

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .end local v0    # "pausedApp":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "count"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    const-string/jumbo v1, "stackId"

    iget v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mStackId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v1, "activityName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 551
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x7d4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 552
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 553
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v3, 0x30

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 554
    return-void
.end method
