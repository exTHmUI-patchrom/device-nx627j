.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;
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
    name = "NoteStopingActivityRunnable"
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

    .line 452
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mUid:I

    .line 454
    iput p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mStackId:I

    .line 455
    iput-object p4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 456
    iput-object p5, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    .line 457
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "count"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string/jumbo v1, "stackId"

    iget v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mStackId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v1, "activityName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->mResumingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 467
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x7d3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 468
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 470
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v3, 0x8

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 471
    return-void
.end method
