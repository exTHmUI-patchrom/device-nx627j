.class Lcn/nubia/server/appmgmt/EyeProtectionController$1;
.super Landroid/database/ContentObserver;
.source "EyeProtectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/EyeProtectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/EyeProtectionController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 119
    iput-object p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$1;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 122
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$1;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$002(Lcn/nubia/server/appmgmt/EyeProtectionController;Z)Z

    .line 123
    return-void
.end method
