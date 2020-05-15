.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 103
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$000(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    .line 107
    return-void
.end method
