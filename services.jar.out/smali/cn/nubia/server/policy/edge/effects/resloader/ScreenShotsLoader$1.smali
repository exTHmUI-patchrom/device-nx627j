.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;
.super Landroid/os/AsyncTask;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->loadSplitWallpaperInBackgroud(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 368
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 368
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .line 392
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 391
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 393
    .local v0, "origPri":I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 394
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$300(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 395
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-direct {v3, v4, v5, v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ILandroid/graphics/Bitmap;)V

    .line 397
    .local v3, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    const-string v4, "FitAnim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadBlurWallpaperInBackgroud() packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hashcode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->val$packageName:Ljava/lang/String;

    .line 401
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bitmap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isRecycle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-static {v4, v5}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v4, 0x1

    new-array v4, v4, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    aput-object v3, v4, v2

    invoke-virtual {p0, v4}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0    # "origPri":I
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 368
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .line 413
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method protected varargs onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
    .locals 4
    .param p1, "values"    # [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .line 371
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 373
    .local v0, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1$1;

    invoke-direct {v3, p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    .line 376
    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    .line 375
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    .end local v0    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 368
    check-cast p1, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;->onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    return-void
.end method
