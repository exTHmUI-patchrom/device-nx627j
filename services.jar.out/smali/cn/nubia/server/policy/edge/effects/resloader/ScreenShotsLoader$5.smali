.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;
.super Landroid/os/AsyncTask;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->notifyLoadStartAppScreen(Ljava/lang/String;)V
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

    .line 734
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 734
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .line 753
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 754
    .local v0, "origPri":I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 756
    const/4 v1, 0x0

    .line 757
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 758
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 759
    const-string v3, "NoStartApp"

    move-object v2, v3

    .line 760
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlackThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 763
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$500(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 764
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 766
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 767
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 768
    .local v7, "label":Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "StartApp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 769
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v8, v6, v7}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$600(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v1, v8

    .line 771
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "label":Ljava/lang/CharSequence;
    :goto_0
    new-instance v3, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-direct {v3, v5, v6, v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ILandroid/graphics/Bitmap;)V

    .line 772
    .local v3, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    const/4 v5, 0x1

    new-array v5, v5, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    aput-object v3, v5, v4

    invoke-virtual {p0, v5}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    goto :goto_1

    .line 773
    :catch_0
    move-exception v1

    .line 774
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 776
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 734
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .line 781
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 782
    return-void
.end method

.method protected varargs onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
    .locals 3
    .param p1, "values"    # [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .line 737
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 739
    .local v0, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 749
    .end local v0    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 734
    check-cast p1, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    return-void
.end method
