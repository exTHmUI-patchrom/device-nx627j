.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;
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
    name = "NoteStopAppRunnable"
.end annotation


# instance fields
.field private mProcessName:Ljava/lang/String;

.field private mStartingPackage:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .line 501
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;->mUid:I

    .line 503
    iput-object p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;->mStartingPackage:Ljava/lang/String;

    .line 504
    iput-object p4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;->mProcessName:Ljava/lang/String;

    .line 505
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 509
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 510
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "count"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const-string/jumbo v1, "uid"

    iget v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;->mStartingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string/jumbo v1, "processName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 515
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x835

    iput v2, v1, Landroid/os/Message;->what:I

    .line 516
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 518
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v3, 0x20

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 519
    return-void
.end method
