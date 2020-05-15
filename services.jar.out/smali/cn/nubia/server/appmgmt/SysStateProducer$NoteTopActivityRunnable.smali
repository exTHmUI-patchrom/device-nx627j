.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;
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
    name = "NoteTopActivityRunnable"
.end annotation


# instance fields
.field mCallback:Lnubia/os/ITaskCallback;

.field private mResumingActivity:Ljava/lang/String;

.field private mResumingPackage:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;Lnubia/os/ITaskCallback;)V
    .locals 0
    .param p2, "callback"    # Lnubia/os/ITaskCallback;

    .line 271
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->mCallback:Lnubia/os/ITaskCallback;

    .line 273
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "count"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "i":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 283
    .local v3, "stackId":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 284
    .local v4, "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stackId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activityName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 288
    .end local v3    # "stackId":I
    .end local v4    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_0
    nop

    .line 293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 294
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x7d0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 295
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 296
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;->mCallback:Lnubia/os/ITaskCallback;

    invoke-static {v2, v3, v1}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$100(Lcn/nubia/server/appmgmt/SysStateProducer;Lnubia/os/ITaskCallback;Landroid/os/Message;)V

    .line 297
    return-void

    .line 290
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
