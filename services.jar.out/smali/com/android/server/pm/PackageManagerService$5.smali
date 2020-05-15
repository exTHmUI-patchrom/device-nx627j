.class Lcom/android/server/pm/PackageManagerService$5;
.super Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$async:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 5594
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$5;->val$async:Z

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionChanged()V
    .locals 1

    .line 5597
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$async:Z

    if-nez v0, :cond_0

    .line 5598
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    goto :goto_0

    .line 5600
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 5602
    :goto_0
    return-void
.end method
