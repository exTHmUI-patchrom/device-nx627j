.class Lcn/nubia/server/policy/AntiMisOperationCtrl$2;
.super Landroid/database/ContentObserver;
.source "AntiMisOperationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/AntiMisOperationCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/AntiMisOperationCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/AntiMisOperationCtrl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/AntiMisOperationCtrl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl$2;->this$0:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 84
    iget-object v0, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl$2;->this$0:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    .line 85
    invoke-static {v0}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->access$000(Lcn/nubia/server/policy/AntiMisOperationCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_palmrejection"

    .line 84
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 87
    .local v0, "avoidMistouchEnable":Z
    if-nez v0, :cond_1

    .line 88
    iget-object v1, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl$2;->this$0:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    invoke-static {v1}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->access$100(Lcn/nubia/server/policy/AntiMisOperationCtrl;)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl$2;->this$0:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    invoke-static {v1}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->access$200(Lcn/nubia/server/policy/AntiMisOperationCtrl;)V

    .line 92
    :goto_1
    return-void
.end method
