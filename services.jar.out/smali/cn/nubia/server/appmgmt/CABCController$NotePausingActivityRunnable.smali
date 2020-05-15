.class Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;
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
    name = "NotePausingActivityRunnable"
.end annotation


# instance fields
.field private mIsVisible:Z

.field private mPausingPackage:Ljava/lang/String;

.field private mStackId:I

.field private mTopActivityPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isVisiblePackage"    # Z
    .param p5, "topActivityPackageName"    # Ljava/lang/String;

    .line 565
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput p2, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    .line 567
    iput-object p3, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    .line 568
    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mIsVisible:Z

    .line 569
    iput-object p5, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mTopActivityPackageName:Ljava/lang/String;

    .line 570
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 574
    iget v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mIsVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mTopActivityPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 577
    .local v0, "topPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mTopActivityPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    :cond_0
    return-void

    .line 580
    .end local v0    # "topPackage":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mTopActivityPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 582
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 584
    .local v0, "visiblePackage":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 585
    return-void

    .line 588
    .end local v0    # "visiblePackage":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$400(Lcn/nubia/server/appmgmt/CABCController;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 592
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$500(Lcn/nubia/server/appmgmt/CABCController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 593
    const-string v0, "CABCController"

    const-string v1, "activity paused and screen off. re-adjust CABC mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_4
    return-void
.end method
