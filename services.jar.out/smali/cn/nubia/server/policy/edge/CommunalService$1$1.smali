.class Lcn/nubia/server/policy/edge/CommunalService$1$1;
.super Ljava/lang/Object;
.source "CommunalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/CommunalService$1;->onPostExecute(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/CommunalService$1;

.field final synthetic val$bm:Landroid/graphics/Bitmap;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/CommunalService$1;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/policy/edge/CommunalService$1;

    .line 242
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->this$1:Lcn/nubia/server/policy/edge/CommunalService$1;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->val$bm:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->val$notify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 246
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->this$1:Lcn/nubia/server/policy/edge/CommunalService$1;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->val$bm:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->val$notify:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->access$300(Lcn/nubia/server/policy/edge/CommunalService;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
