.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;
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
    name = "NoteStartAppRunnable"
.end annotation


# instance fields
.field private mStartPackage:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;ILjava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 478
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->mUid:I

    .line 480
    iput-object p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->mStartPackage:Ljava/lang/String;

    .line 481
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "count"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->mStartPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 489
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x834

    iput v2, v1, Landroid/os/Message;->what:I

    .line 490
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 492
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v3, 0x10

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 493
    return-void
.end method
