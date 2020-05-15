.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;
.super Landroid/os/AsyncTask;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->nofityLoadCurrentScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)V
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

.field final synthetic val$screenBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 690
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->val$screenBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 690
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .line 713
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 712
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 714
    .local v0, "origPri":I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 715
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->val$screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getHandledScreenBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 716
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ILandroid/graphics/Bitmap;)V

    .line 718
    .local v2, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    const/4 v3, 0x1

    new-array v3, v3, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v0    # "origPri":I
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 722
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 690
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .line 727
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 728
    return-void
.end method

.method protected varargs onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
    .locals 4
    .param p1, "values"    # [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .line 693
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 695
    .local v0, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    if-eqz v0, :cond_0

    .line 696
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4$1;

    invoke-direct {v3, p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    .line 697
    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    .line 696
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    .end local v0    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 690
    check-cast p1, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    return-void
.end method
