.class Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;
.super Ljava/lang/Object;
.source "FreezerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/FreezerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakSureUnfreezeRunnalbe"
.end annotation


# instance fields
.field private mPid:I

.field private mTid:[I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/FreezerProxy;[II)V
    .locals 0
    .param p2, "tid"    # [I
    .param p3, "pid"    # I

    .line 21
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->mTid:[I

    .line 23
    iput p3, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->mPid:I

    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 28
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->mTid:[I

    iget v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->mPid:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->unfreeze([II)Z

    move-result v0

    .line 29
    .local v0, "isOk":Z
    if-nez v0, :cond_0

    .line 30
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->access$000(Lcn/nubia/server/appmgmt/freezer/FreezerProxy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->this$0:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->access$000(Lcn/nubia/server/appmgmt/freezer/FreezerProxy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    :cond_0
    return-void
.end method
