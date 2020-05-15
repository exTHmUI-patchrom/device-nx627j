.class Lcom/android/server/pm/UserManagerService$LocalService$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$LocalService;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$userData:Lcom/android/server/pm/UserManagerService$UserData;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$LocalService;Lcom/android/server/pm/UserManagerService$UserData;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/UserManagerService$LocalService;

    .line 3815
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->this$1:Lcom/android/server/pm/UserManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3817
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->this$1:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->access$2100(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 3818
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->this$1:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->access$1300(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3819
    return-void
.end method
