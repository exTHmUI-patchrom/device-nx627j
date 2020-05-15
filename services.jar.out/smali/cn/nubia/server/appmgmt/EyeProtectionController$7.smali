.class Lcn/nubia/server/appmgmt/EyeProtectionController$7;
.super Ljava/lang/Object;
.source "EyeProtectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/EyeProtectionController;->startImageEnhanceService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/EyeProtectionController;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 348
    iput-object p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$7;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v0, "intentService":Landroid/content/Intent;
    const-string v1, "cn.nubia.settings.action.RESTORE_COLOR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 355
    const-string v1, "EyeProtectionController"

    const-string/jumbo v2, "startImageEnhanceService success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method
