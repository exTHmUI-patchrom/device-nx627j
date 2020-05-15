.class Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;
.super Ljava/lang/Object;
.source "CABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteResumingActivityRunnable"
.end annotation


# instance fields
.field private mResumingHomeActivity:Z

.field private mResumingPackage:Ljava/lang/String;

.field private mStackId:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;Z)V
    .locals 0
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isHomeActivity"    # Z

    .line 538
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput p2, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mStackId:I

    .line 540
    iput-object p3, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    .line 541
    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingHomeActivity:Z

    .line 542
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 546
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingHomeActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 551
    .local v0, "resumedPackage":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    return-void

    .line 554
    .end local v0    # "resumedPackage":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    return-void
.end method
