.class Lcn/nubia/server/policy/edge/CommunalService$1;
.super Landroid/os/AsyncTask;
.source "CommunalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/CommunalService;->takeScreenShot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mNotify:Z

.field final synthetic this$0:Lcn/nubia/server/policy/edge/CommunalService;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/CommunalService;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/CommunalService;

    .line 204
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->mNotify:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Boolean;

    .line 209
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->mNotify:Z

    .line 210
    const/4 v1, 0x0

    .line 212
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v2, "CommunalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "takeScreenShot, current package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    .line 213
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 214
    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 216
    .local v2, "origPri":I
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 217
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-static {v4}, Lcn/nubia/server/policy/edge/CommunalService;->access$000(Lcn/nubia/server/policy/edge/CommunalService;)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v0

    iget-object v4, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-static {v4}, Lcn/nubia/server/policy/edge/CommunalService;->access$100(Lcn/nubia/server/policy/edge/CommunalService;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 218
    .local v3, "dims":[F
    const v4, 0x2e62f

    .line 219
    .local v4, "shotLayer":I
    iget-object v6, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-static {v6}, Lcn/nubia/server/policy/edge/CommunalService;->access$200(Lcn/nubia/server/policy/edge/CommunalService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 220
    const v4, 0x35b5f

    .line 222
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aget v7, v3, v0

    float-to-int v7, v7

    aget v5, v3, v5

    float-to-int v8, v5

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v10, v4

    invoke-static/range {v6 .. v12}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 225
    .local v5, "screentshotbm":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 226
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 227
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    const/4 v5, 0x0

    .line 230
    :cond_1
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v2    # "origPri":I
    .end local v3    # "dims":[F
    .end local v4    # "shotLayer":I
    .end local v5    # "screentshotbm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CommunalService"

    const-string/jumbo v3, "takeScreenShot error"

    invoke-static {v2, v3, v0}, Lcn/nubia/server/policy/edge/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 204
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService$1;->doInBackground([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 239
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 240
    move-object v0, p1

    .line 241
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->mNotify:Z

    .line 242
    .local v1, "notify":Z
    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/CommunalService;->access$400(Lcn/nubia/server/policy/edge/CommunalService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/policy/edge/CommunalService$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcn/nubia/server/policy/edge/CommunalService$1$1;-><init>(Lcn/nubia/server/policy/edge/CommunalService$1;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
