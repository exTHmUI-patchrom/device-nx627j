.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;
.super Landroid/os/AsyncTask;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->loadThumbnailsInBackgroud(Ljava/util/List;)V
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

.field final synthetic val$subList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 626
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->val$subList:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 626
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .line 646
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 647
    .local v0, "origPri":I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 649
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->val$subList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 651
    const/4 v3, 0x0

    .line 652
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->val$subList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 653
    .local v4, "r":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 654
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    .line 656
    :cond_0
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 657
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 660
    :goto_1
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iget v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v5, v6}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$400(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 661
    .local v5, "thumbnailBitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 662
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v6}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlackThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 664
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v6, v5

    .line 667
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    new-instance v7, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 668
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-direct {v7, v8, v9, v6}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ILandroid/graphics/Bitmap;)V

    .line 669
    .local v7, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    const/4 v8, 0x1

    new-array v8, v8, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    aput-object v7, v8, v1

    invoke-virtual {p0, v8}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "r":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v5    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 673
    .end local v2    # "i":I
    :cond_2
    goto :goto_3

    .line 671
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 674
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 626
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .line 679
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 680
    return-void
.end method

.method protected varargs onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
    .locals 4
    .param p1, "values"    # [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .line 629
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 631
    .local v0, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    if-eqz v0, :cond_0

    .line 632
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3$1;

    invoke-direct {v3, p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    .line 633
    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    .line 632
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    .end local v0    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 626
    check-cast p1, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    return-void
.end method
