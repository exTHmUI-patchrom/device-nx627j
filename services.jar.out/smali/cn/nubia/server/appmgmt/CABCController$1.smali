.class Lcn/nubia/server/appmgmt/CABCController$1;
.super Ljava/lang/Object;
.source "CABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/CABCController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 684
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$1;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$1;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$800(Lcn/nubia/server/appmgmt/CABCController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 688
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$1;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$1100(Lcn/nubia/server/appmgmt/CABCController;)V

    .line 689
    return-void
.end method
