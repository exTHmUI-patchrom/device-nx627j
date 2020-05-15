.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$MonkeySwitchRunnable;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonkeySwitchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$MonkeySwitchRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1242
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$MonkeySwitchRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$600(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1243
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$MonkeySwitchRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$700(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    .line 1244
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$MonkeySwitchRunnable;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$800(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    .line 1245
    return-void
.end method
