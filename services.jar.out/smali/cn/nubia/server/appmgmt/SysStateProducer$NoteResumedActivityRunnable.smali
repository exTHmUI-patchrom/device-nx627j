.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;
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
    name = "NoteResumedActivityRunnable"
.end annotation


# instance fields
.field private mResumedPackage:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;->mResumedPackage:Ljava/lang/String;

    .line 304
    if-eqz p2, :cond_0

    .line 305
    iput-object p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;->mResumedPackage:Ljava/lang/String;

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;->mResumedPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 315
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x7d5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 316
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 317
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v3, 0x50

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 318
    return-void
.end method
